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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/07/2023 19:30:45"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto2 IS
    PORT (
	lcd_rw : OUT std_logic;
	clock : IN std_logic;
	key : IN std_logic_vector(1 DOWNTO 1);
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	dig : OUT std_logic_vector(4 DOWNTO 1);
	lcd_d : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(1 TO 4);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END projeto2;

-- Design Ports Information
-- lcd_rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[6]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_key : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_dig : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_lcd_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(1 TO 4);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|varia[4]|_~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|varia[1]|_~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|varia[3]|_~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|varia[2]|_~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|varia[6]|_~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|varia[5]|_~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|varia[2]|freq2hz|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|varia[1]|freq2hz|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|div_sorteio|alt~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \lcd_d[7]~output_o\ : std_logic;
SIGNAL \lcd_d[6]~output_o\ : std_logic;
SIGNAL \lcd_d[5]~output_o\ : std_logic;
SIGNAL \lcd_d[4]~output_o\ : std_logic;
SIGNAL \lcd_d[3]~output_o\ : std_logic;
SIGNAL \lcd_d[2]~output_o\ : std_logic;
SIGNAL \lcd_d[1]~output_o\ : std_logic;
SIGNAL \lcd_d[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst15|clk_count[13]~44\ : std_logic;
SIGNAL \inst15|clk_count[14]~45_combout\ : std_logic;
SIGNAL \inst15|clk_count[14]~46\ : std_logic;
SIGNAL \inst15|clk_count[15]~47_combout\ : std_logic;
SIGNAL \inst15|clk_count[15]~48\ : std_logic;
SIGNAL \inst15|clk_count[16]~49_combout\ : std_logic;
SIGNAL \inst15|clk_count[16]~50\ : std_logic;
SIGNAL \inst15|clk_count[17]~51_combout\ : std_logic;
SIGNAL \inst15|clk_count[17]~52\ : std_logic;
SIGNAL \inst15|clk_count[18]~53_combout\ : std_logic;
SIGNAL \inst15|clk_count[18]~54\ : std_logic;
SIGNAL \inst15|clk_count[19]~55_combout\ : std_logic;
SIGNAL \inst15|clk_count[19]~56\ : std_logic;
SIGNAL \inst15|clk_count[20]~58_combout\ : std_logic;
SIGNAL \inst15|clk_count[20]~59\ : std_logic;
SIGNAL \inst15|clk_count[21]~60_combout\ : std_logic;
SIGNAL \inst15|op_10~2_combout\ : std_logic;
SIGNAL \inst15|clk_count[21]~61\ : std_logic;
SIGNAL \inst15|clk_count[22]~62_combout\ : std_logic;
SIGNAL \inst15|op_6~3_combout\ : std_logic;
SIGNAL \inst15|op_1~2_combout\ : std_logic;
SIGNAL \inst15|op_11~2_combout\ : std_logic;
SIGNAL \inst15|op_11~3_combout\ : std_logic;
SIGNAL \inst15|op_11~4_combout\ : std_logic;
SIGNAL \inst15|op_11~5_combout\ : std_logic;
SIGNAL \inst15|op_11~6_combout\ : std_logic;
SIGNAL \inst15|busy~q\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~6_combout\ : std_logic;
SIGNAL \inst14|lcd_enable~q\ : std_logic;
SIGNAL \inst15|op_10~5_combout\ : std_logic;
SIGNAL \inst15|op_9~3_combout\ : std_logic;
SIGNAL \inst15|op_4~1_combout\ : std_logic;
SIGNAL \inst15|op_9~4_combout\ : std_logic;
SIGNAL \inst15|op_4~4_combout\ : std_logic;
SIGNAL \inst15|op_9~2_combout\ : std_logic;
SIGNAL \inst15|_~13_combout\ : std_logic;
SIGNAL \inst15|op_9~5_combout\ : std_logic;
SIGNAL \inst15|op_6~0_combout\ : std_logic;
SIGNAL \inst15|op_6~2_combout\ : std_logic;
SIGNAL \inst15|_~2_combout\ : std_logic;
SIGNAL \inst15|_~6_combout\ : std_logic;
SIGNAL \inst15|op_4~2_combout\ : std_logic;
SIGNAL \inst15|op_6~1_combout\ : std_logic;
SIGNAL \inst15|op_6~4_combout\ : std_logic;
SIGNAL \inst15|op_1~5_combout\ : std_logic;
SIGNAL \inst15|op_1~6_combout\ : std_logic;
SIGNAL \inst15|op_1~7_combout\ : std_logic;
SIGNAL \inst15|op_1~3_combout\ : std_logic;
SIGNAL \inst15|op_1~8_combout\ : std_logic;
SIGNAL \inst15|op_1~4_combout\ : std_logic;
SIGNAL \inst15|ENERGIZACAO~0_combout\ : std_logic;
SIGNAL \inst15|ENERGIZACAO~q\ : std_logic;
SIGNAL \inst15|_~17_combout\ : std_logic;
SIGNAL \inst15|op_5~2_combout\ : std_logic;
SIGNAL \inst15|op_5~0_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~0_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~1_combout\ : std_logic;
SIGNAL \inst15|_~3_combout\ : std_logic;
SIGNAL \inst15|op_4~3_combout\ : std_logic;
SIGNAL \inst15|op_4~5_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~2_combout\ : std_logic;
SIGNAL \inst15|op_4~0_combout\ : std_logic;
SIGNAL \inst15|op_10~4_combout\ : std_logic;
SIGNAL \inst15|op_10~6_combout\ : std_logic;
SIGNAL \inst15|op_10~3_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~3_combout\ : std_logic;
SIGNAL \inst15|op_7~2_combout\ : std_logic;
SIGNAL \inst15|op_7~0_combout\ : std_logic;
SIGNAL \inst15|op_7~1_combout\ : std_logic;
SIGNAL \inst15|op_7~3_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~4_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~5_combout\ : std_logic;
SIGNAL \inst15|_~21_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~6_combout\ : std_logic;
SIGNAL \inst15|INICIALIZACAO~q\ : std_logic;
SIGNAL \inst15|_~11_combout\ : std_logic;
SIGNAL \inst15|op_10~7_combout\ : std_logic;
SIGNAL \inst15|_~20_combout\ : std_logic;
SIGNAL \inst15|PRONTO~0_combout\ : std_logic;
SIGNAL \inst15|op_5~1_combout\ : std_logic;
SIGNAL \inst15|op_8~2_combout\ : std_logic;
SIGNAL \inst15|op_12~0_combout\ : std_logic;
SIGNAL \inst15|op_12~1_combout\ : std_logic;
SIGNAL \inst15|PRONTO~1_combout\ : std_logic;
SIGNAL \inst15|PRONTO~q\ : std_logic;
SIGNAL \inst15|ENVIAR~2_combout\ : std_logic;
SIGNAL \inst15|ENVIAR~q\ : std_logic;
SIGNAL \inst15|clk_count[22]~57_combout\ : std_logic;
SIGNAL \inst15|clk_count[1]~64_combout\ : std_logic;
SIGNAL \inst15|clk_count[2]~21_combout\ : std_logic;
SIGNAL \inst15|clk_count[2]~22\ : std_logic;
SIGNAL \inst15|clk_count[3]~23_combout\ : std_logic;
SIGNAL \inst15|clk_count[3]~24\ : std_logic;
SIGNAL \inst15|clk_count[4]~25_combout\ : std_logic;
SIGNAL \inst15|clk_count[4]~26\ : std_logic;
SIGNAL \inst15|clk_count[5]~27_combout\ : std_logic;
SIGNAL \inst15|clk_count[5]~28\ : std_logic;
SIGNAL \inst15|clk_count[6]~29_combout\ : std_logic;
SIGNAL \inst15|clk_count[6]~30\ : std_logic;
SIGNAL \inst15|clk_count[7]~31_combout\ : std_logic;
SIGNAL \inst15|clk_count[7]~32\ : std_logic;
SIGNAL \inst15|clk_count[8]~33_combout\ : std_logic;
SIGNAL \inst15|clk_count[8]~34\ : std_logic;
SIGNAL \inst15|clk_count[9]~35_combout\ : std_logic;
SIGNAL \inst15|clk_count[9]~36\ : std_logic;
SIGNAL \inst15|clk_count[10]~37_combout\ : std_logic;
SIGNAL \inst15|clk_count[10]~38\ : std_logic;
SIGNAL \inst15|clk_count[11]~39_combout\ : std_logic;
SIGNAL \inst15|clk_count[11]~40\ : std_logic;
SIGNAL \inst15|clk_count[12]~41_combout\ : std_logic;
SIGNAL \inst15|clk_count[12]~42\ : std_logic;
SIGNAL \inst15|clk_count[13]~43_combout\ : std_logic;
SIGNAL \inst15|op_8~5_combout\ : std_logic;
SIGNAL \inst15|op_8~3_combout\ : std_logic;
SIGNAL \inst15|op_8~4_combout\ : std_logic;
SIGNAL \inst15|_~12_combout\ : std_logic;
SIGNAL \inst15|_~14_combout\ : std_logic;
SIGNAL \inst15|e~0_combout\ : std_logic;
SIGNAL \inst15|_~5_combout\ : std_logic;
SIGNAL \inst15|_~4_combout\ : std_logic;
SIGNAL \inst15|_~7_combout\ : std_logic;
SIGNAL \inst15|_~8_combout\ : std_logic;
SIGNAL \inst15|_~9_combout\ : std_logic;
SIGNAL \inst15|_~10_combout\ : std_logic;
SIGNAL \inst15|e~1_combout\ : std_logic;
SIGNAL \inst15|e~q\ : std_logic;
SIGNAL \inst14|char_24~feeder_combout\ : std_logic;
SIGNAL \inst14|char_24~q\ : std_logic;
SIGNAL \inst14|char_25~feeder_combout\ : std_logic;
SIGNAL \inst14|char_25~q\ : std_logic;
SIGNAL \inst14|char_26~q\ : std_logic;
SIGNAL \inst14|char_27~feeder_combout\ : std_logic;
SIGNAL \inst14|char_27~q\ : std_logic;
SIGNAL \inst14|char_28~q\ : std_logic;
SIGNAL \inst14|char_29~q\ : std_logic;
SIGNAL \inst14|char_30~feeder_combout\ : std_logic;
SIGNAL \inst14|char_30~q\ : std_logic;
SIGNAL \inst14|char_31~feeder_combout\ : std_logic;
SIGNAL \inst14|char_31~q\ : std_logic;
SIGNAL \inst14|char_32~feeder_combout\ : std_logic;
SIGNAL \inst14|char_32~q\ : std_logic;
SIGNAL \inst14|char_33~q\ : std_logic;
SIGNAL \inst14|char_00~0_combout\ : std_logic;
SIGNAL \inst14|char_00~q\ : std_logic;
SIGNAL \inst14|char_01~0_combout\ : std_logic;
SIGNAL \inst14|char_01~q\ : std_logic;
SIGNAL \inst14|char_02~feeder_combout\ : std_logic;
SIGNAL \inst14|char_02~q\ : std_logic;
SIGNAL \inst14|char_03~feeder_combout\ : std_logic;
SIGNAL \inst14|char_03~q\ : std_logic;
SIGNAL \inst14|char_04~q\ : std_logic;
SIGNAL \inst14|char_05~feeder_combout\ : std_logic;
SIGNAL \inst14|char_05~q\ : std_logic;
SIGNAL \inst14|char_06~q\ : std_logic;
SIGNAL \inst14|char_07~feeder_combout\ : std_logic;
SIGNAL \inst14|char_07~q\ : std_logic;
SIGNAL \inst14|char_08~feeder_combout\ : std_logic;
SIGNAL \inst14|char_08~q\ : std_logic;
SIGNAL \inst14|char_09~q\ : std_logic;
SIGNAL \inst14|char_10~feeder_combout\ : std_logic;
SIGNAL \inst14|char_10~q\ : std_logic;
SIGNAL \inst14|char_11~q\ : std_logic;
SIGNAL \inst14|char_12~feeder_combout\ : std_logic;
SIGNAL \inst14|char_12~q\ : std_logic;
SIGNAL \inst14|char_13~feeder_combout\ : std_logic;
SIGNAL \inst14|char_13~q\ : std_logic;
SIGNAL \inst14|char_14~feeder_combout\ : std_logic;
SIGNAL \inst14|char_14~q\ : std_logic;
SIGNAL \inst14|char_15~feeder_combout\ : std_logic;
SIGNAL \inst14|char_15~q\ : std_logic;
SIGNAL \inst14|char_16~q\ : std_logic;
SIGNAL \inst14|char_17~feeder_combout\ : std_logic;
SIGNAL \inst14|char_17~q\ : std_logic;
SIGNAL \inst14|char_18~feeder_combout\ : std_logic;
SIGNAL \inst14|char_18~q\ : std_logic;
SIGNAL \inst14|char_19~feeder_combout\ : std_logic;
SIGNAL \inst14|char_19~q\ : std_logic;
SIGNAL \inst14|char_20~feeder_combout\ : std_logic;
SIGNAL \inst14|char_20~q\ : std_logic;
SIGNAL \inst14|char_21~q\ : std_logic;
SIGNAL \inst14|char_22~feeder_combout\ : std_logic;
SIGNAL \inst14|char_22~q\ : std_logic;
SIGNAL \inst14|char_23~q\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~7_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~8_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~16_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~14_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~15_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~11_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~9_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~12_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~13_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~17_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[9]~18_combout\ : std_logic;
SIGNAL \inst15|_~15_combout\ : std_logic;
SIGNAL \inst15|rs~0_combout\ : std_logic;
SIGNAL \inst15|rs~q\ : std_logic;
SIGNAL \inst|_~0_combout\ : std_logic;
SIGNAL \inst|count[2]~13_combout\ : std_logic;
SIGNAL \inst|count[2]~14\ : std_logic;
SIGNAL \inst|count[3]~15_combout\ : std_logic;
SIGNAL \inst|count[3]~16\ : std_logic;
SIGNAL \inst|count[4]~17_combout\ : std_logic;
SIGNAL \inst|count[4]~18\ : std_logic;
SIGNAL \inst|count[5]~19_combout\ : std_logic;
SIGNAL \inst|count[5]~20\ : std_logic;
SIGNAL \inst|count[6]~21_combout\ : std_logic;
SIGNAL \inst|count[6]~22\ : std_logic;
SIGNAL \inst|count[7]~23_combout\ : std_logic;
SIGNAL \inst|count[7]~24\ : std_logic;
SIGNAL \inst|count[8]~25_combout\ : std_logic;
SIGNAL \inst|count[8]~26\ : std_logic;
SIGNAL \inst|count[9]~27_combout\ : std_logic;
SIGNAL \inst|count[9]~28\ : std_logic;
SIGNAL \inst|count[10]~29_combout\ : std_logic;
SIGNAL \inst|count[10]~30\ : std_logic;
SIGNAL \inst|count[11]~31_combout\ : std_logic;
SIGNAL \inst|count[11]~32\ : std_logic;
SIGNAL \inst|count[12]~33_combout\ : std_logic;
SIGNAL \inst|count[12]~34\ : std_logic;
SIGNAL \inst|count[13]~35_combout\ : std_logic;
SIGNAL \inst|count[13]~36\ : std_logic;
SIGNAL \inst|count[14]~37_combout\ : std_logic;
SIGNAL \inst|op_1~0_combout\ : std_logic;
SIGNAL \inst|op_1~1_combout\ : std_logic;
SIGNAL \inst|alt~1_combout\ : std_logic;
SIGNAL \inst|alt~feeder_combout\ : std_logic;
SIGNAL \inst|alt~q\ : std_logic;
SIGNAL \inst3|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst3|_~0_combout\ : std_logic;
SIGNAL \inst2|_~0_combout\ : std_logic;
SIGNAL \inst2|_~1_combout\ : std_logic;
SIGNAL \inst2|_~2_combout\ : std_logic;
SIGNAL \inst2|_~3_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[7]~19_combout\ : std_logic;
SIGNAL \inst15|lcd_data[7]~0_combout\ : std_logic;
SIGNAL \inst14|_~0_combout\ : std_logic;
SIGNAL \inst15|lcd_data[6]~1_combout\ : std_logic;
SIGNAL \inst15|lcd_data[5]~2_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[15]~42\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[16]~43_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|_~0_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[2]~15_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[2]~16\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[3]~17_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[3]~18\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[4]~19_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[4]~20\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[5]~21_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[5]~22\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[6]~23_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[6]~24\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[7]~25_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[7]~26\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[8]~27_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[8]~28\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[9]~29_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[9]~30\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[10]~31_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[10]~32\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[11]~33_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[11]~34\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[12]~35_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[12]~36\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[13]~37_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[13]~38\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[14]~39_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[14]~40\ : std_logic;
SIGNAL \inst1|debounc1|divisor|count[15]~41_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|deb|divisor|alt~q\ : std_logic;
SIGNAL \inst4|deb|ff[2]~0_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst1|debounc1|divisor|alt~q\ : std_logic;
SIGNAL \inst1|debounc1|ff[2]~0_combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst1|debounc1|ff[0]~1_combout\ : std_logic;
SIGNAL \inst1|debounc1|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|deb|ff[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|deb|ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|divisor|count[24]~71\ : std_logic;
SIGNAL \inst4|divisor|count[25]~72_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~0_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~1_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~2_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~3_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~4_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~5_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~7_combout\ : std_logic;
SIGNAL \inst4|divisor|count[25]~73\ : std_logic;
SIGNAL \inst4|divisor|count[26]~74_combout\ : std_logic;
SIGNAL \inst4|divisor|count[26]~75\ : std_logic;
SIGNAL \inst4|divisor|count[27]~76_combout\ : std_logic;
SIGNAL \inst4|divisor|op_1~6_combout\ : std_logic;
SIGNAL \inst4|divisor|_~0_combout\ : std_logic;
SIGNAL \inst4|divisor|count[2]~26_combout\ : std_logic;
SIGNAL \inst4|divisor|count[2]~27\ : std_logic;
SIGNAL \inst4|divisor|count[3]~28_combout\ : std_logic;
SIGNAL \inst4|divisor|count[3]~29\ : std_logic;
SIGNAL \inst4|divisor|count[4]~30_combout\ : std_logic;
SIGNAL \inst4|divisor|count[4]~31\ : std_logic;
SIGNAL \inst4|divisor|count[5]~32_combout\ : std_logic;
SIGNAL \inst4|divisor|count[5]~33\ : std_logic;
SIGNAL \inst4|divisor|count[6]~34_combout\ : std_logic;
SIGNAL \inst4|divisor|count[6]~35\ : std_logic;
SIGNAL \inst4|divisor|count[7]~36_combout\ : std_logic;
SIGNAL \inst4|divisor|count[7]~37\ : std_logic;
SIGNAL \inst4|divisor|count[8]~38_combout\ : std_logic;
SIGNAL \inst4|divisor|count[8]~39\ : std_logic;
SIGNAL \inst4|divisor|count[9]~40_combout\ : std_logic;
SIGNAL \inst4|divisor|count[9]~41\ : std_logic;
SIGNAL \inst4|divisor|count[10]~42_combout\ : std_logic;
SIGNAL \inst4|divisor|count[10]~43\ : std_logic;
SIGNAL \inst4|divisor|count[11]~44_combout\ : std_logic;
SIGNAL \inst4|divisor|count[11]~45\ : std_logic;
SIGNAL \inst4|divisor|count[12]~46_combout\ : std_logic;
SIGNAL \inst4|divisor|count[12]~47\ : std_logic;
SIGNAL \inst4|divisor|count[13]~48_combout\ : std_logic;
SIGNAL \inst4|divisor|count[13]~49\ : std_logic;
SIGNAL \inst4|divisor|count[14]~50_combout\ : std_logic;
SIGNAL \inst4|divisor|count[14]~51\ : std_logic;
SIGNAL \inst4|divisor|count[15]~52_combout\ : std_logic;
SIGNAL \inst4|divisor|count[15]~53\ : std_logic;
SIGNAL \inst4|divisor|count[16]~54_combout\ : std_logic;
SIGNAL \inst4|divisor|count[16]~55\ : std_logic;
SIGNAL \inst4|divisor|count[17]~56_combout\ : std_logic;
SIGNAL \inst4|divisor|count[17]~57\ : std_logic;
SIGNAL \inst4|divisor|count[18]~58_combout\ : std_logic;
SIGNAL \inst4|divisor|count[18]~59\ : std_logic;
SIGNAL \inst4|divisor|count[19]~60_combout\ : std_logic;
SIGNAL \inst4|divisor|count[19]~61\ : std_logic;
SIGNAL \inst4|divisor|count[20]~62_combout\ : std_logic;
SIGNAL \inst4|divisor|count[20]~63\ : std_logic;
SIGNAL \inst4|divisor|count[21]~64_combout\ : std_logic;
SIGNAL \inst4|divisor|count[21]~65\ : std_logic;
SIGNAL \inst4|divisor|count[22]~66_combout\ : std_logic;
SIGNAL \inst4|divisor|count[22]~67\ : std_logic;
SIGNAL \inst4|divisor|count[23]~68_combout\ : std_logic;
SIGNAL \inst4|divisor|count[23]~69\ : std_logic;
SIGNAL \inst4|divisor|count[24]~70_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~1_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~feeder_combout\ : std_logic;
SIGNAL \inst4|divisor|alt~q\ : std_logic;
SIGNAL \inst4|temp~0_combout\ : std_logic;
SIGNAL \inst4|temp~2_combout\ : std_logic;
SIGNAL \inst4|temp~q\ : std_logic;
SIGNAL \inst4|div_sorteio|op_1~0_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|_~0_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[2]~10_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|op_1~1_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[2]~11\ : std_logic;
SIGNAL \inst4|div_sorteio|count[3]~12_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[3]~13\ : std_logic;
SIGNAL \inst4|div_sorteio|count[4]~14_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[4]~15\ : std_logic;
SIGNAL \inst4|div_sorteio|count[5]~16_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[5]~17\ : std_logic;
SIGNAL \inst4|div_sorteio|count[6]~18_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[6]~19\ : std_logic;
SIGNAL \inst4|div_sorteio|count[7]~20_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[7]~21\ : std_logic;
SIGNAL \inst4|div_sorteio|count[8]~22_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[8]~23\ : std_logic;
SIGNAL \inst4|div_sorteio|count[9]~24_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[9]~25\ : std_logic;
SIGNAL \inst4|div_sorteio|count[10]~26_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|count[10]~27\ : std_logic;
SIGNAL \inst4|div_sorteio|count[11]~28_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~1_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~feeder_combout\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~q\ : std_logic;
SIGNAL \inst4|div_sorteio|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[5]~12\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[6]~13_combout\ : std_logic;
SIGNAL \inst4|sorteio|contador|op_1~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[1]~15_combout\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[2]~5_combout\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[2]~6\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[3]~7_combout\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[3]~8\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[4]~9_combout\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[4]~10\ : std_logic;
SIGNAL \inst4|sorteio|contador|count[5]~11_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[3]~0_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[3]~1_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[3]~2_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[2]~12_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[2]~11_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[2]~13_combout\ : std_logic;
SIGNAL \inst4|count|_~1_combout\ : std_logic;
SIGNAL \inst4|count|_~0_combout\ : std_logic;
SIGNAL \inst4|count|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst4|_~68_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[4]~9_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[4]~8_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[4]~10_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~90_combout\ : std_logic;
SIGNAL \inst4|_~62_combout\ : std_logic;
SIGNAL \inst4|_~64_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~16_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~17_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~76_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~77_combout\ : std_logic;
SIGNAL \inst2|_~8_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~57_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[6]~4_combout\ : std_logic;
SIGNAL \inst4|_~80_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~22_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~23_combout\ : std_logic;
SIGNAL \inst4|_~50_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~20_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~52_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~51_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~49_combout\ : std_logic;
SIGNAL \inst4|_~51_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~50_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~53_combout\ : std_logic;
SIGNAL \inst4|u[4][4]~q\ : std_logic;
SIGNAL \inst4|d[4][1]~43_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~44_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[5]~6_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[5]~5_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[5]~7_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~42_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~41_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~45_combout\ : std_logic;
SIGNAL \inst4|d[4][1]~q\ : std_logic;
SIGNAL \inst4|d[4][3]~33_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~32_combout\ : std_logic;
SIGNAL \inst4|sorteio|DECIMAL[7]~3_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~31_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~30_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~34_combout\ : std_logic;
SIGNAL \inst4|d[4][3]~q\ : std_logic;
SIGNAL \inst4|d[3][1]~88_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~89_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~113_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~112_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~110_combout\ : std_logic;
SIGNAL \inst4|_~60_combout\ : std_logic;
SIGNAL \inst4|_~59_combout\ : std_logic;
SIGNAL \inst4|_~61_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~111_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~114_combout\ : std_logic;
SIGNAL \inst4|u[3][4]~q\ : std_logic;
SIGNAL \inst4|u[3][1]~118_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~117_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~115_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~116_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~119_combout\ : std_logic;
SIGNAL \inst4|u[3][1]~q\ : std_logic;
SIGNAL \inst4|d[3][3]~80_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~79_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~78_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~77_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~81_combout\ : std_logic;
SIGNAL \inst4|d[3][3]~q\ : std_logic;
SIGNAL \inst4|d[3][2]~85_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~84_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~83_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~82_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~86_combout\ : std_logic;
SIGNAL \inst4|d[3][2]~q\ : std_logic;
SIGNAL \inst4|u[3][2]~107_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~108_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~105_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~106_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~109_combout\ : std_logic;
SIGNAL \inst4|u[3][2]~q\ : std_logic;
SIGNAL \inst4|u[3][3]~102_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~103_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~100_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~101_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~104_combout\ : std_logic;
SIGNAL \inst4|u[3][3]~q\ : std_logic;
SIGNAL \inst4|_~16_combout\ : std_logic;
SIGNAL \inst4|_~17_combout\ : std_logic;
SIGNAL \inst4|_~57_combout\ : std_logic;
SIGNAL \inst4|_~58_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~87_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~90_combout\ : std_logic;
SIGNAL \inst4|d[3][1]~q\ : std_logic;
SIGNAL \inst4|_~33_combout\ : std_logic;
SIGNAL \inst4|_~34_combout\ : std_logic;
SIGNAL \inst4|_~35_combout\ : std_logic;
SIGNAL \inst4|_~32_combout\ : std_logic;
SIGNAL \inst4|_~36_combout\ : std_logic;
SIGNAL \inst4|_~63_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~37_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~38_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~39_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~36_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~35_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~40_combout\ : std_logic;
SIGNAL \inst4|d[4][2]~q\ : std_logic;
SIGNAL \inst4|u[4][2]~46_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~47_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~45_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~44_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~48_combout\ : std_logic;
SIGNAL \inst4|u[4][2]~q\ : std_logic;
SIGNAL \inst4|u[4][3]~42_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~41_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~40_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~39_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~43_combout\ : std_logic;
SIGNAL \inst4|u[4][3]~q\ : std_logic;
SIGNAL \inst4|_~10_combout\ : std_logic;
SIGNAL \inst4|_~11_combout\ : std_logic;
SIGNAL \inst4|_~65_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~21_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~24_combout\ : std_logic;
SIGNAL \inst4|d[5][2]~q\ : std_logic;
SIGNAL \inst4|d[5][3]~18_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~17_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~15_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~16_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~19_combout\ : std_logic;
SIGNAL \inst4|d[5][3]~q\ : std_logic;
SIGNAL \inst4|_~8_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~32_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~31_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~30_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~29_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~33_combout\ : std_logic;
SIGNAL \inst4|u[5][4]~q\ : std_logic;
SIGNAL \inst4|d[5][1]~28_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~26_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~25_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~27_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~29_combout\ : std_logic;
SIGNAL \inst4|d[5][1]~q\ : std_logic;
SIGNAL \inst4|u[5][1]~37_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~36_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~35_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~34_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~38_combout\ : std_logic;
SIGNAL \inst4|u[5][1]~q\ : std_logic;
SIGNAL \inst4|_~9_combout\ : std_logic;
SIGNAL \inst4|_~81_combout\ : std_logic;
SIGNAL \inst4|_~71_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~56_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~55_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~54_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~58_combout\ : std_logic;
SIGNAL \inst4|u[4][1]~q\ : std_logic;
SIGNAL \inst4|_~39_combout\ : std_logic;
SIGNAL \inst4|_~38_combout\ : std_logic;
SIGNAL \inst4|_~40_combout\ : std_logic;
SIGNAL \inst4|_~37_combout\ : std_logic;
SIGNAL \inst4|_~41_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~12_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~11_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~10_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~13_combout\ : std_logic;
SIGNAL \inst4|u[1][4]~q\ : std_logic;
SIGNAL \inst4|u[1][3]~2_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~3_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~0_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~1_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~4_combout\ : std_logic;
SIGNAL \inst4|u[1][3]~q\ : std_logic;
SIGNAL \inst4|d[1][2]~7_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~8_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~6_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~5_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~9_combout\ : std_logic;
SIGNAL \inst4|d[1][2]~q\ : std_logic;
SIGNAL \inst4|d[1][3]~2_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~3_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~1_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~0_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~4_combout\ : std_logic;
SIGNAL \inst4|d[1][3]~q\ : std_logic;
SIGNAL \inst4|u[1][2]~8_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~7_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~5_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~6_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~9_combout\ : std_logic;
SIGNAL \inst4|u[1][2]~q\ : std_logic;
SIGNAL \inst4|_~6_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~12_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~13_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~10_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~11_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~14_combout\ : std_logic;
SIGNAL \inst4|d[1][1]~q\ : std_logic;
SIGNAL \inst4|_~7_combout\ : std_logic;
SIGNAL \inst4|_~47_combout\ : std_logic;
SIGNAL \inst4|_~48_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~72_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~71_combout\ : std_logic;
SIGNAL \inst4|_~78_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~69_combout\ : std_logic;
SIGNAL \inst4|_~82_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~70_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~73_combout\ : std_logic;
SIGNAL \inst4|u[2][4]~q\ : std_logic;
SIGNAL \inst4|d[2][1]~58_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~59_combout\ : std_logic;
SIGNAL \inst4|_~77_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~56_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~57_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~60_combout\ : std_logic;
SIGNAL \inst4|d[2][1]~q\ : std_logic;
SIGNAL \inst4|d[2][2]~54_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~53_combout\ : std_logic;
SIGNAL \inst4|_~76_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~51_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~52_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~55_combout\ : std_logic;
SIGNAL \inst4|d[2][2]~q\ : std_logic;
SIGNAL \inst4|u[2][2]~65_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~66_combout\ : std_logic;
SIGNAL \inst4|_~74_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~64_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~67_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~68_combout\ : std_logic;
SIGNAL \inst4|u[2][2]~q\ : std_logic;
SIGNAL \inst4|u[2][3]~62_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~61_combout\ : std_logic;
SIGNAL \inst4|_~73_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~59_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~60_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~63_combout\ : std_logic;
SIGNAL \inst4|u[2][3]~q\ : std_logic;
SIGNAL \inst4|d[2][3]~48_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~49_combout\ : std_logic;
SIGNAL \inst4|_~75_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~46_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~47_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~50_combout\ : std_logic;
SIGNAL \inst4|d[2][3]~q\ : std_logic;
SIGNAL \inst4|_~12_combout\ : std_logic;
SIGNAL \inst4|_~13_combout\ : std_logic;
SIGNAL \inst4|_~72_combout\ : std_logic;
SIGNAL \inst4|_~79_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~74_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~75_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~78_combout\ : std_logic;
SIGNAL \inst4|u[2][1]~q\ : std_logic;
SIGNAL \inst4|_~44_combout\ : std_logic;
SIGNAL \inst4|_~42_combout\ : std_logic;
SIGNAL \inst4|_~45_combout\ : std_logic;
SIGNAL \inst4|_~43_combout\ : std_logic;
SIGNAL \inst4|_~46_combout\ : std_logic;
SIGNAL \inst4|_~66_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~82_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~79_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~80_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~81_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~83_combout\ : std_logic;
SIGNAL \inst4|u[6][3]~q\ : std_logic;
SIGNAL \inst4|u[6][2]~85_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~86_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~84_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~87_combout\ : std_logic;
SIGNAL \inst4|u[6][2]~q\ : std_logic;
SIGNAL \inst4|_~29_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~72_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~75_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~73_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~74_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~76_combout\ : std_logic;
SIGNAL \inst4|d[6][1]~q\ : std_logic;
SIGNAL \inst4|_~27_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~70_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~69_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~68_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~67_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~71_combout\ : std_logic;
SIGNAL \inst4|d[6][2]~q\ : std_logic;
SIGNAL \inst4|d[6][3]~65_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~63_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~64_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~62_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~61_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~66_combout\ : std_logic;
SIGNAL \inst4|d[6][3]~q\ : std_logic;
SIGNAL \inst4|_~26_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~98_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~96_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~97_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~95_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~94_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~99_combout\ : std_logic;
SIGNAL \inst4|u[6][1]~q\ : std_logic;
SIGNAL \inst4|_~28_combout\ : std_logic;
SIGNAL \inst4|_~30_combout\ : std_logic;
SIGNAL \inst4|_~31_combout\ : std_logic;
SIGNAL \inst4|_~49_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~14_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~15_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~18_combout\ : std_logic;
SIGNAL \inst4|u[1][1]~q\ : std_logic;
SIGNAL \inst4|_~54_combout\ : std_logic;
SIGNAL \inst4|_~53_combout\ : std_logic;
SIGNAL \inst4|_~52_combout\ : std_logic;
SIGNAL \inst4|_~55_combout\ : std_logic;
SIGNAL \inst4|_~56_combout\ : std_logic;
SIGNAL \inst4|_~67_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~91_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~92_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~89_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~88_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~93_combout\ : std_logic;
SIGNAL \inst4|u[6][4]~q\ : std_logic;
SIGNAL \inst4|_~14_combout\ : std_logic;
SIGNAL \inst4|_~15_combout\ : std_logic;
SIGNAL \inst4|_~69_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~22_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~21_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~20_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~19_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~23_combout\ : std_logic;
SIGNAL \inst4|u[5][3]~q\ : std_logic;
SIGNAL \inst4|_~24_combout\ : std_logic;
SIGNAL \inst4|_~23_combout\ : std_logic;
SIGNAL \inst4|_~22_combout\ : std_logic;
SIGNAL \inst4|_~21_combout\ : std_logic;
SIGNAL \inst4|_~25_combout\ : std_logic;
SIGNAL \inst4|_~70_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~27_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~26_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~25_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~24_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~28_combout\ : std_logic;
SIGNAL \inst4|u[5][2]~q\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~25_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~26_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~21_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~20_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~23_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~22_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~24_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~27_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~71_combout\ : std_logic;
SIGNAL \inst15|_~16_combout\ : std_logic;
SIGNAL \inst15|lcd_data[5]~3_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[4]~72_combout\ : std_logic;
SIGNAL \inst15|_~18_combout\ : std_logic;
SIGNAL \inst15|lcd_data[4]~4_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~33_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~30_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~29_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~31_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~28_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~32_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[5]~34_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~35_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[3]~36_combout\ : std_logic;
SIGNAL \inst15|lcd_data[3]~5_combout\ : std_logic;
SIGNAL \inst15|lcd_data[3]~6_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~46_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~47_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~44_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~43_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~42_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~41_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~45_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~37_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~38_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~39_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~40_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[2]~48_combout\ : std_logic;
SIGNAL \inst15|lcd_data[2]~7_combout\ : std_logic;
SIGNAL \inst15|lcd_data[2]~8_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~57_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~56_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~58_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~55_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~59_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~54_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~51_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~49_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~52_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~50_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~53_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[1]~60_combout\ : std_logic;
SIGNAL \inst15|_~19_combout\ : std_logic;
SIGNAL \inst15|lcd_data[1]~9_combout\ : std_logic;
SIGNAL \inst14|conv_u[5]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~69_combout\ : std_logic;
SIGNAL \inst14|conv_u[6]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~68_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~70_combout\ : std_logic;
SIGNAL \inst14|conv_u[2]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~66_combout\ : std_logic;
SIGNAL \inst14|conv_u[1]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~61_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~62_combout\ : std_logic;
SIGNAL \inst14|conv_u[4]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~64_combout\ : std_logic;
SIGNAL \inst14|conv_u[3]|binario8[0]~10_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~63_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~65_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~67_combout\ : std_logic;
SIGNAL \inst14|lcd_bus[0]~73_combout\ : std_logic;
SIGNAL \inst15|lcd_data[0]~10_combout\ : std_logic;
SIGNAL \inst15|lcd_data[0]~11_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[3]~64_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[3]~63_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[3]~65_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~67_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~66_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~68_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~69_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[2]~70_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[1]~72_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[1]~71_combout\ : std_logic;
SIGNAL \inst14|qnt_sorteio[1]~73_combout\ : std_logic;
SIGNAL \inst2|varia[6]|_~4_combout\ : std_logic;
SIGNAL \inst2|varia[3]|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[3]|count|count[1]~0_combout\ : std_logic;
SIGNAL \inst2|varia[3]|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[3]|_~2clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|op_1~4_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|op_1~1_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|op_1~0_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|op_1~2_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|op_1~3_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|op_1~5_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[2]~23_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|op_1~6_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[2]~24\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[3]~25_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[3]~26\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[4]~27_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[4]~28\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[5]~29_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[5]~30\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[6]~31_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[6]~32\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[7]~33_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[7]~34\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[8]~35_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[8]~36\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[9]~37_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[9]~38\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[10]~39_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[10]~40\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[11]~41_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[11]~42\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[12]~43_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[12]~44\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[13]~45_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[13]~46\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[14]~47_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[14]~48\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[15]~49_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[15]~50\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[16]~51_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[16]~52\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[17]~53_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[17]~54\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[18]~55_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[18]~56\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[19]~57_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[19]~58\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[20]~59_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[20]~60\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[21]~61_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[21]~62\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[22]~63_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[22]~64\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[23]~65_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[23]~66\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|count[24]~67_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[3]|freq2hz|alt~q\ : std_logic;
SIGNAL \inst2|varia[3]|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[3]|contador6|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[3]|contador6|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[3]|contador6|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[3]|contador6|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[3]|contador6|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[3]|contador6|alt~q\ : std_logic;
SIGNAL \inst2|varia[4]|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[4]|count|count[1]~0_combout\ : std_logic;
SIGNAL \inst2|varia[4]|count|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[4]|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[4]|_~2clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|op_1~4_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|op_1~0_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|op_1~1_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|op_1~2_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|op_1~3_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|op_1~5_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[2]~23_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|op_1~6_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[2]~24\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[3]~25_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[3]~26\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[4]~27_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[4]~28\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[5]~29_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[5]~30\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[6]~31_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[6]~32\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[7]~33_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[7]~34\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[8]~35_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[8]~36\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[9]~37_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[9]~38\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[10]~39_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[10]~40\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[11]~41_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[11]~42\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[12]~43_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[12]~44\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[13]~45_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[13]~46\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[14]~47_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[14]~48\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[15]~49_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[15]~50\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[16]~51_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[16]~52\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[17]~53_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[17]~54\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[18]~55_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[18]~56\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[19]~57_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[19]~58\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[20]~59_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[20]~60\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[21]~61_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[21]~62\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[22]~63_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[22]~64\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[23]~65_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[23]~66\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|count[24]~67_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[4]|freq2hz|alt~q\ : std_logic;
SIGNAL \inst2|varia[4]|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[4]|contador6|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[4]|contador6|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[4]|contador6|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[4]|contador6|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[4]|contador6|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[4]|contador6|alt~q\ : std_logic;
SIGNAL \inst2|_~5_combout\ : std_logic;
SIGNAL \inst2|varia[5]|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[5]|_~2clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|op_1~4_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|op_1~0_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|op_1~1_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|op_1~2_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|op_1~3_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|op_1~5_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[2]~23_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|op_1~6_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[2]~24\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[3]~25_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[3]~26\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[4]~27_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[4]~28\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[5]~29_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[5]~30\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[6]~31_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[6]~32\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[7]~33_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[7]~34\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[8]~35_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[8]~36\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[9]~37_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[9]~38\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[10]~39_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[10]~40\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[11]~41_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[11]~42\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[12]~43_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[12]~44\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[13]~45_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[13]~46\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[14]~47_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[14]~48\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[15]~49_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[15]~50\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[16]~51_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[16]~52\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[17]~53_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[17]~54\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[18]~55_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[18]~56\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[19]~57_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[19]~58\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[20]~59_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[20]~60\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[21]~61_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[21]~62\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[22]~63_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[22]~64\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[23]~65_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[23]~66\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|count[24]~67_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[5]|freq2hz|alt~q\ : std_logic;
SIGNAL \inst2|varia[5]|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[5]|contador6|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[5]|contador6|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[5]|contador6|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[5]|contador6|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[5]|contador6|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[5]|contador6|alt~q\ : std_logic;
SIGNAL \inst2|varia[5]|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[5]|count|count[1]~0_combout\ : std_logic;
SIGNAL \inst2|varia[5]|count|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[6]|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[6]|_~2clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|op_1~4_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|op_1~1_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|op_1~0_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|op_1~2_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|op_1~3_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|op_1~5_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[2]~23_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|op_1~6_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[2]~24\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[3]~25_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[3]~26\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[4]~27_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[4]~28\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[5]~29_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[5]~30\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[6]~31_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[6]~32\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[7]~33_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[7]~34\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[8]~35_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[8]~36\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[9]~37_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[9]~38\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[10]~39_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[10]~40\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[11]~41_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[11]~42\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[12]~43_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[12]~44\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[13]~45_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[13]~46\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[14]~47_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[14]~48\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[15]~49_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[15]~50\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[16]~51_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[16]~52\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[17]~53_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[17]~54\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[18]~55_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[18]~56\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[19]~57_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[19]~58\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[20]~59_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[20]~60\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[21]~61_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[21]~62\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[22]~63_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[22]~64\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[23]~65_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[23]~66\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|count[24]~67_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[6]|freq2hz|alt~q\ : std_logic;
SIGNAL \inst2|varia[6]|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[6]|contador6|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[6]|contador6|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[6]|contador6|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[6]|contador6|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[6]|contador6|alt~q\ : std_logic;
SIGNAL \inst2|varia[6]|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[6]|count|count[1]~0_combout\ : std_logic;
SIGNAL \inst2|varia[6]|count|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|_~4_combout\ : std_logic;
SIGNAL \inst2|varia[2]|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[2]|_~2clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|op_1~4_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|op_1~1_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|op_1~0_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|op_1~2_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|op_1~3_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|op_1~5_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[2]~23_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|op_1~6_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[2]~24\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[3]~25_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[3]~26\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[4]~27_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[4]~28\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[5]~29_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[5]~30\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[6]~31_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[6]~32\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[7]~33_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[7]~34\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[8]~35_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[8]~36\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[9]~37_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[9]~38\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[10]~39_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[10]~40\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[11]~41_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[11]~42\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[12]~43_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[12]~44\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[13]~45_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[13]~46\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[14]~47_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[14]~48\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[15]~49_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[15]~50\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[16]~51_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[16]~52\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[17]~53_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[17]~54\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[18]~55_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[18]~56\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[19]~57_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[19]~58\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[20]~59_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[20]~60\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[21]~61_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[21]~62\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[22]~63_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[22]~64\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[23]~65_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[23]~66\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|count[24]~67_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|alt~q\ : std_logic;
SIGNAL \inst2|varia[2]|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[2]|contador6|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[2]|contador6|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[2]|contador6|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[2]|contador6|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[2]|contador6|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[2]|contador6|alt~q\ : std_logic;
SIGNAL \inst2|varia[2]|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[2]|count|count[1]~0_combout\ : std_logic;
SIGNAL \inst2|varia[2]|count|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[1]|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[1]|_~2clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|op_1~4_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|op_1~1_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|op_1~0_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|op_1~2_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|op_1~3_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|op_1~5_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[2]~23_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|op_1~6_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[2]~24\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[3]~25_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[3]~26\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[4]~27_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[4]~28\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[5]~29_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[5]~30\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[6]~31_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[6]~32\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[7]~33_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[7]~34\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[8]~35_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[8]~36\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[9]~37_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[9]~38\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[10]~39_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[10]~40\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[11]~41_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[11]~42\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[12]~43_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[12]~44\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[13]~45_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[13]~46\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[14]~47_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[14]~48\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[15]~49_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[15]~50\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[16]~51_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[16]~52\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[17]~53_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[17]~54\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[18]~55_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[18]~56\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[19]~57_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[19]~58\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[20]~59_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[20]~60\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[21]~61_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[21]~62\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[22]~63_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[22]~64\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[23]~65_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[23]~66\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|count[24]~67_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|alt~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|alt~q\ : std_logic;
SIGNAL \inst2|varia[1]|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[1]|contador6|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[1]|contador6|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[1]|contador6|_~2_combout\ : std_logic;
SIGNAL \inst2|varia[1]|contador6|alt~1_combout\ : std_logic;
SIGNAL \inst2|varia[1]|contador6|alt~q\ : std_logic;
SIGNAL \inst2|varia[1]|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[1]|count|count[1]~0_combout\ : std_logic;
SIGNAL \inst2|varia[1]|count|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|_~6_combout\ : std_logic;
SIGNAL \inst2|_~7_combout\ : std_logic;
SIGNAL \inst2|varia[1]|spin|d[2]~0_combout\ : std_logic;
SIGNAL \inst2|varia[1]|spin|d[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|varia[1]|spin|DECIMAL[3]~1_combout\ : std_logic;
SIGNAL \inst2|varia[4]|u_sorteada[3]~2_combout\ : std_logic;
SIGNAL \inst4|_~18_combout\ : std_logic;
SIGNAL \inst2|_~53_combout\ : std_logic;
SIGNAL \inst4|_~20_combout\ : std_logic;
SIGNAL \inst2|varia[6]|u_sorteada[3]~2_combout\ : std_logic;
SIGNAL \inst2|_~55_combout\ : std_logic;
SIGNAL \inst2|varia[5]|u_sorteada[3]~2_combout\ : std_logic;
SIGNAL \inst4|_~19_combout\ : std_logic;
SIGNAL \inst2|_~54_combout\ : std_logic;
SIGNAL \inst2|varia[3]|u_sorteada[3]~2_combout\ : std_logic;
SIGNAL \inst2|_~10_combout\ : std_logic;
SIGNAL \inst2|_~52_combout\ : std_logic;
SIGNAL \inst2|_~56_combout\ : std_logic;
SIGNAL \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[2]|u_sorteada[3]~2_combout\ : std_logic;
SIGNAL \inst2|_~57_combout\ : std_logic;
SIGNAL \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|varia[1]|u_sorteada[3]~2_combout\ : std_logic;
SIGNAL \inst2|_~51_combout\ : std_logic;
SIGNAL \inst2|_~16_combout\ : std_logic;
SIGNAL \inst2|_~58_combout\ : std_logic;
SIGNAL \inst2|varia[1]|spin|_~1_combout\ : std_logic;
SIGNAL \inst2|varia[4]|u_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~46_combout\ : std_logic;
SIGNAL \inst2|varia[1]|u_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~43_combout\ : std_logic;
SIGNAL \inst2|varia[2]|u_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~44_combout\ : std_logic;
SIGNAL \inst2|varia[3]|u_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~45_combout\ : std_logic;
SIGNAL \inst2|_~47_combout\ : std_logic;
SIGNAL \inst2|varia[6]|u_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~49_combout\ : std_logic;
SIGNAL \inst2|varia[5]|u_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~48_combout\ : std_logic;
SIGNAL \inst2|_~50_combout\ : std_logic;
SIGNAL \inst2|varia[1]|u_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~35_combout\ : std_logic;
SIGNAL \inst2|varia[5]|u_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~38_combout\ : std_logic;
SIGNAL \inst2|varia[6]|u_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~39_combout\ : std_logic;
SIGNAL \inst2|varia[3]|u_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~36_combout\ : std_logic;
SIGNAL \inst2|varia[4]|u_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~37_combout\ : std_logic;
SIGNAL \inst2|_~40_combout\ : std_logic;
SIGNAL \inst2|varia[2]|u_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~41_combout\ : std_logic;
SIGNAL \inst2|_~42_combout\ : std_logic;
SIGNAL \inst2|seg[6]~26_combout\ : std_logic;
SIGNAL \inst2|_~59_combout\ : std_logic;
SIGNAL \inst2|_~60_combout\ : std_logic;
SIGNAL \inst2|_~61_combout\ : std_logic;
SIGNAL \inst2|_~66_combout\ : std_logic;
SIGNAL \inst2|_~63_combout\ : std_logic;
SIGNAL \inst2|_~62_combout\ : std_logic;
SIGNAL \inst2|_~64_combout\ : std_logic;
SIGNAL \inst2|_~65_combout\ : std_logic;
SIGNAL \inst2|_~67_combout\ : std_logic;
SIGNAL \inst2|seg[2]~27_combout\ : std_logic;
SIGNAL \inst2|seg[6]~24_combout\ : std_logic;
SIGNAL \inst2|varia[1]|spin|DECIMAL[5]~0_combout\ : std_logic;
SIGNAL \inst2|varia[1]|d_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~9_combout\ : std_logic;
SIGNAL \inst2|varia[2]|d_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~17_combout\ : std_logic;
SIGNAL \inst2|varia[6]|d_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~14_combout\ : std_logic;
SIGNAL \inst2|varia[5]|d_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~13_combout\ : std_logic;
SIGNAL \inst2|varia[3]|d_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~11_combout\ : std_logic;
SIGNAL \inst2|varia[4]|d_sorteada[1]~0_combout\ : std_logic;
SIGNAL \inst2|_~12_combout\ : std_logic;
SIGNAL \inst2|_~15_combout\ : std_logic;
SIGNAL \inst2|_~18_combout\ : std_logic;
SIGNAL \inst2|_~33_combout\ : std_logic;
SIGNAL \inst2|_~31_combout\ : std_logic;
SIGNAL \inst2|_~29_combout\ : std_logic;
SIGNAL \inst2|_~28_combout\ : std_logic;
SIGNAL \inst2|_~30_combout\ : std_logic;
SIGNAL \inst2|_~32_combout\ : std_logic;
SIGNAL \inst2|_~27_combout\ : std_logic;
SIGNAL \inst2|_~34_combout\ : std_logic;
SIGNAL \inst2|varia[1]|spin|_~0_combout\ : std_logic;
SIGNAL \inst2|varia[5]|d_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~24_combout\ : std_logic;
SIGNAL \inst2|varia[6]|d_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~25_combout\ : std_logic;
SIGNAL \inst2|varia[2]|d_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~20_combout\ : std_logic;
SIGNAL \inst2|varia[1]|d_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~19_combout\ : std_logic;
SIGNAL \inst2|varia[4]|d_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~22_combout\ : std_logic;
SIGNAL \inst2|varia[3]|d_sorteada[2]~1_combout\ : std_logic;
SIGNAL \inst2|_~21_combout\ : std_logic;
SIGNAL \inst2|_~23_combout\ : std_logic;
SIGNAL \inst2|_~26_combout\ : std_logic;
SIGNAL \inst2|seg[6]~25_combout\ : std_logic;
SIGNAL \inst2|seg[6]~28_combout\ : std_logic;
SIGNAL \inst2|seg[5]~30_combout\ : std_logic;
SIGNAL \inst2|seg[5]~29_combout\ : std_logic;
SIGNAL \inst2|seg[5]~51_combout\ : std_logic;
SIGNAL \inst2|seg[5]~52_combout\ : std_logic;
SIGNAL \inst2|seg[4]~32_combout\ : std_logic;
SIGNAL \inst2|seg[4]~33_combout\ : std_logic;
SIGNAL \inst2|seg[4]~34_combout\ : std_logic;
SIGNAL \inst2|seg[4]~31_combout\ : std_logic;
SIGNAL \inst2|seg[4]~35_combout\ : std_logic;
SIGNAL \inst2|seg[3]~37_combout\ : std_logic;
SIGNAL \inst2|seg[3]~36_combout\ : std_logic;
SIGNAL \inst2|seg[3]~38_combout\ : std_logic;
SIGNAL \inst2|seg[3]~39_combout\ : std_logic;
SIGNAL \inst2|seg[2]~40_combout\ : std_logic;
SIGNAL \inst2|seg[2]~41_combout\ : std_logic;
SIGNAL \inst2|seg[2]~42_combout\ : std_logic;
SIGNAL \inst2|seg[2]~43_combout\ : std_logic;
SIGNAL \inst2|seg[1]~44_combout\ : std_logic;
SIGNAL \inst2|seg[1]~46_combout\ : std_logic;
SIGNAL \inst2|seg[1]~45_combout\ : std_logic;
SIGNAL \inst2|seg[1]~47_combout\ : std_logic;
SIGNAL \inst2|seg[0]~49_combout\ : std_logic;
SIGNAL \inst2|seg[0]~48_combout\ : std_logic;
SIGNAL \inst2|seg[0]~50_combout\ : std_logic;
SIGNAL \inst2|varia[6]|d_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[5]|freq2hz|count\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \inst15|clk_count\ : std_logic_vector(22 DOWNTO 1);
SIGNAL \inst2|varia[3]|freq2hz|count\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \inst4|divisor|count\ : std_logic_vector(27 DOWNTO 1);
SIGNAL \inst2|varia[1]|contador6|count\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \inst|count\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \inst4|sorteio|contador|count\ : std_logic_vector(6 DOWNTO 1);
SIGNAL \inst2|varia[6]|freq2hz|count\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \inst2|varia[1]|freq2hz|count\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \inst2|varia[4]|freq2hz|count\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \inst2|varia[2]|freq2hz|count\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \inst4|div_sorteio|count\ : std_logic_vector(11 DOWNTO 1);
SIGNAL \inst1|debounc1|divisor|count\ : std_logic_vector(16 DOWNTO 1);
SIGNAL \inst3|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst15|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|debounc1|ff\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|varia[5]|count|count\ : std_logic_vector(0 TO 1);
SIGNAL \inst2|varia[6]|count|count\ : std_logic_vector(0 TO 1);
SIGNAL \inst2|varia[6]|contador6|count\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \inst2|varia[3]|count|count\ : std_logic_vector(0 TO 1);
SIGNAL \inst2|varia[4]|count|count\ : std_logic_vector(0 TO 1);
SIGNAL \inst2|varia[1]|count|count\ : std_logic_vector(0 TO 1);
SIGNAL \inst2|varia[2]|count|count\ : std_logic_vector(0 TO 1);
SIGNAL \inst4|count|cnt\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[1]|d_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[3]|d_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[4]|d_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[5]|d_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[2]|d_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[1]|u_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[3]|u_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[4]|u_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[5]|u_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst2|varia[6]|u_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst4|sorteio|DECIMAL\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \inst2|varia[2]|u_sorteada\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst14|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|varia[5]|contador6|count\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \inst2|varia[4]|contador6|count\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \inst2|varia[3]|contador6|count\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \inst2|varia[2]|contador6|count\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \inst2|varia[1]|spin|DECIMAL\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \inst2|varia[1]|spin|d\ : std_logic_vector(6 DOWNTO 1);
SIGNAL \inst4|deb|ff\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|ALT_INV__~7_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV__~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

lcd_rw <= ww_lcd_rw;
ww_clock <= clock;
ww_key <= key;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
dig <= ww_dig;
lcd_d <= ww_lcd_d;
led <= ww_led;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|varia[4]|_~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[4]|_~2_combout\);

\inst2|varia[1]|_~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[1]|_~2_combout\);

\inst2|varia[3]|_~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[3]|_~2_combout\);

\inst2|varia[2]|_~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[2]|_~2_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\inst2|varia[6]|_~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[6]|_~2_combout\);

\inst2|varia[5]|_~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[5]|_~2_combout\);

\inst2|varia[2]|freq2hz|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[2]|freq2hz|alt~q\);

\inst2|varia[1]|freq2hz|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|varia[1]|freq2hz|alt~q\);

\inst4|div_sorteio|alt~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|div_sorteio|alt~q\);
\inst2|ALT_INV__~7_combout\ <= NOT \inst2|_~7_combout\;
\inst2|ALT_INV__~3_combout\ <= NOT \inst2|_~3_combout\;
\inst2|ALT_INV__~2_combout\ <= NOT \inst2|_~2_combout\;
\inst2|ALT_INV__~1_combout\ <= NOT \inst2|_~1_combout\;
\inst2|ALT_INV__~0_combout\ <= NOT \inst2|_~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|e~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\dig[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~0_combout\,
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~1_combout\,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~2_combout\,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~3_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\lcd_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(7),
	devoe => ww_devoe,
	o => \lcd_d[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\lcd_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(6),
	devoe => ww_devoe,
	o => \lcd_d[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\lcd_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(5),
	devoe => ww_devoe,
	o => \lcd_d[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\lcd_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(4),
	devoe => ww_devoe,
	o => \lcd_d[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\lcd_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(3),
	devoe => ww_devoe,
	o => \lcd_d[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\lcd_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(2),
	devoe => ww_devoe,
	o => \lcd_d[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\lcd_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(1),
	devoe => ww_devoe,
	o => \lcd_d[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\lcd_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|lcd_data\(0),
	devoe => ww_devoe,
	o => \lcd_d[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|qnt_sorteio[3]~65_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|qnt_sorteio[2]~70_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|qnt_sorteio[1]~73_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV__~7_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[6]~28_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[5]~52_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[4]~35_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[3]~39_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[2]~43_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[1]~47_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|seg[0]~50_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y19_N2
\inst15|clk_count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[13]~43_combout\ = (\inst15|clk_count\(13) & (!\inst15|clk_count[12]~42\)) # (!\inst15|clk_count\(13) & ((\inst15|clk_count[12]~42\) # (GND)))
-- \inst15|clk_count[13]~44\ = CARRY((!\inst15|clk_count[12]~42\) # (!\inst15|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(13),
	datad => VCC,
	cin => \inst15|clk_count[12]~42\,
	combout => \inst15|clk_count[13]~43_combout\,
	cout => \inst15|clk_count[13]~44\);

-- Location: LCCOMB_X5_Y19_N4
\inst15|clk_count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[14]~45_combout\ = (\inst15|clk_count\(14) & (\inst15|clk_count[13]~44\ $ (GND))) # (!\inst15|clk_count\(14) & (!\inst15|clk_count[13]~44\ & VCC))
-- \inst15|clk_count[14]~46\ = CARRY((\inst15|clk_count\(14) & !\inst15|clk_count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(14),
	datad => VCC,
	cin => \inst15|clk_count[13]~44\,
	combout => \inst15|clk_count[14]~45_combout\,
	cout => \inst15|clk_count[14]~46\);

-- Location: FF_X5_Y19_N5
\inst15|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[14]~45_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(14));

-- Location: LCCOMB_X5_Y19_N6
\inst15|clk_count[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[15]~47_combout\ = (\inst15|clk_count\(15) & (!\inst15|clk_count[14]~46\)) # (!\inst15|clk_count\(15) & ((\inst15|clk_count[14]~46\) # (GND)))
-- \inst15|clk_count[15]~48\ = CARRY((!\inst15|clk_count[14]~46\) # (!\inst15|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datad => VCC,
	cin => \inst15|clk_count[14]~46\,
	combout => \inst15|clk_count[15]~47_combout\,
	cout => \inst15|clk_count[15]~48\);

-- Location: FF_X5_Y19_N7
\inst15|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[15]~47_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(15));

-- Location: LCCOMB_X5_Y19_N8
\inst15|clk_count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[16]~49_combout\ = (\inst15|clk_count\(16) & (\inst15|clk_count[15]~48\ $ (GND))) # (!\inst15|clk_count\(16) & (!\inst15|clk_count[15]~48\ & VCC))
-- \inst15|clk_count[16]~50\ = CARRY((\inst15|clk_count\(16) & !\inst15|clk_count[15]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(16),
	datad => VCC,
	cin => \inst15|clk_count[15]~48\,
	combout => \inst15|clk_count[16]~49_combout\,
	cout => \inst15|clk_count[16]~50\);

-- Location: FF_X5_Y19_N9
\inst15|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[16]~49_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(16));

-- Location: LCCOMB_X5_Y19_N10
\inst15|clk_count[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[17]~51_combout\ = (\inst15|clk_count\(17) & (!\inst15|clk_count[16]~50\)) # (!\inst15|clk_count\(17) & ((\inst15|clk_count[16]~50\) # (GND)))
-- \inst15|clk_count[17]~52\ = CARRY((!\inst15|clk_count[16]~50\) # (!\inst15|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(17),
	datad => VCC,
	cin => \inst15|clk_count[16]~50\,
	combout => \inst15|clk_count[17]~51_combout\,
	cout => \inst15|clk_count[17]~52\);

-- Location: FF_X5_Y19_N11
\inst15|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[17]~51_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(17));

-- Location: LCCOMB_X5_Y19_N12
\inst15|clk_count[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[18]~53_combout\ = (\inst15|clk_count\(18) & (\inst15|clk_count[17]~52\ $ (GND))) # (!\inst15|clk_count\(18) & (!\inst15|clk_count[17]~52\ & VCC))
-- \inst15|clk_count[18]~54\ = CARRY((\inst15|clk_count\(18) & !\inst15|clk_count[17]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(18),
	datad => VCC,
	cin => \inst15|clk_count[17]~52\,
	combout => \inst15|clk_count[18]~53_combout\,
	cout => \inst15|clk_count[18]~54\);

-- Location: FF_X5_Y19_N13
\inst15|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[18]~53_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(18));

-- Location: LCCOMB_X5_Y19_N14
\inst15|clk_count[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[19]~55_combout\ = (\inst15|clk_count\(19) & (!\inst15|clk_count[18]~54\)) # (!\inst15|clk_count\(19) & ((\inst15|clk_count[18]~54\) # (GND)))
-- \inst15|clk_count[19]~56\ = CARRY((!\inst15|clk_count[18]~54\) # (!\inst15|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(19),
	datad => VCC,
	cin => \inst15|clk_count[18]~54\,
	combout => \inst15|clk_count[19]~55_combout\,
	cout => \inst15|clk_count[19]~56\);

-- Location: FF_X5_Y19_N15
\inst15|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[19]~55_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(19));

-- Location: LCCOMB_X5_Y19_N16
\inst15|clk_count[20]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[20]~58_combout\ = (\inst15|clk_count\(20) & (\inst15|clk_count[19]~56\ $ (GND))) # (!\inst15|clk_count\(20) & (!\inst15|clk_count[19]~56\ & VCC))
-- \inst15|clk_count[20]~59\ = CARRY((\inst15|clk_count\(20) & !\inst15|clk_count[19]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(20),
	datad => VCC,
	cin => \inst15|clk_count[19]~56\,
	combout => \inst15|clk_count[20]~58_combout\,
	cout => \inst15|clk_count[20]~59\);

-- Location: FF_X5_Y19_N17
\inst15|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[20]~58_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(20));

-- Location: LCCOMB_X5_Y19_N18
\inst15|clk_count[21]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[21]~60_combout\ = (\inst15|clk_count\(21) & (!\inst15|clk_count[20]~59\)) # (!\inst15|clk_count\(21) & ((\inst15|clk_count[20]~59\) # (GND)))
-- \inst15|clk_count[21]~61\ = CARRY((!\inst15|clk_count[20]~59\) # (!\inst15|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(21),
	datad => VCC,
	cin => \inst15|clk_count[20]~59\,
	combout => \inst15|clk_count[21]~60_combout\,
	cout => \inst15|clk_count[21]~61\);

-- Location: FF_X5_Y19_N19
\inst15|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[21]~60_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(21));

-- Location: LCCOMB_X5_Y19_N26
\inst15|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~2_combout\ = (!\inst15|clk_count\(18) & (!\inst15|clk_count\(20) & (!\inst15|clk_count\(19) & !\inst15|clk_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(18),
	datab => \inst15|clk_count\(20),
	datac => \inst15|clk_count\(19),
	datad => \inst15|clk_count\(21),
	combout => \inst15|op_10~2_combout\);

-- Location: LCCOMB_X5_Y19_N20
\inst15|clk_count[22]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[22]~62_combout\ = \inst15|clk_count\(22) $ (!\inst15|clk_count[21]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(22),
	cin => \inst15|clk_count[21]~61\,
	combout => \inst15|clk_count[22]~62_combout\);

-- Location: FF_X5_Y19_N21
\inst15|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[22]~62_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(22));

-- Location: LCCOMB_X7_Y20_N6
\inst15|op_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~3_combout\ = (\inst15|clk_count\(12) & \inst15|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(11),
	combout => \inst15|op_6~3_combout\);

-- Location: LCCOMB_X6_Y20_N14
\inst15|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~2_combout\ = (\inst15|clk_count\(3) & (\inst15|clk_count\(1) & (\inst15|clk_count\(4) & \inst15|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(3),
	datab => \inst15|clk_count\(1),
	datac => \inst15|clk_count\(4),
	datad => \inst15|clk_count\(2),
	combout => \inst15|op_1~2_combout\);

-- Location: LCCOMB_X6_Y20_N6
\inst15|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~2_combout\ = (!\inst15|clk_count\(7) & (((!\inst15|clk_count\(5) & !\inst15|op_1~2_combout\)) # (!\inst15|clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|clk_count\(5),
	datac => \inst15|op_1~2_combout\,
	datad => \inst15|clk_count\(6),
	combout => \inst15|op_11~2_combout\);

-- Location: LCCOMB_X7_Y20_N12
\inst15|op_11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~3_combout\ = (!\inst15|clk_count\(10) & (((\inst15|op_11~2_combout\) # (!\inst15|clk_count\(8))) # (!\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datab => \inst15|clk_count\(8),
	datac => \inst15|op_11~2_combout\,
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_11~3_combout\);

-- Location: LCCOMB_X7_Y20_N10
\inst15|op_11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~4_combout\ = ((!\inst15|clk_count\(13) & ((\inst15|op_11~3_combout\) # (!\inst15|op_6~3_combout\)))) # (!\inst15|clk_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~3_combout\,
	datab => \inst15|clk_count\(14),
	datac => \inst15|clk_count\(13),
	datad => \inst15|op_11~3_combout\,
	combout => \inst15|op_11~4_combout\);

-- Location: LCCOMB_X7_Y20_N0
\inst15|op_11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~5_combout\ = (((!\inst15|clk_count\(15) & \inst15|op_11~4_combout\)) # (!\inst15|clk_count\(17))) # (!\inst15|clk_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(16),
	datab => \inst15|clk_count\(17),
	datac => \inst15|clk_count\(15),
	datad => \inst15|op_11~4_combout\,
	combout => \inst15|op_11~5_combout\);

-- Location: LCCOMB_X7_Y20_N16
\inst15|op_11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_11~6_combout\ = (\inst15|op_10~2_combout\ & (!\inst15|clk_count\(22) & \inst15|op_11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|op_10~2_combout\,
	datac => \inst15|clk_count\(22),
	datad => \inst15|op_11~5_combout\,
	combout => \inst15|op_11~6_combout\);

-- Location: FF_X6_Y19_N27
\inst15|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|PRONTO~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|busy~q\);

-- Location: LCCOMB_X4_Y11_N12
\inst14|lcd_bus[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~6_combout\ = (!\inst14|lcd_enable~q\ & !\inst15|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datad => \inst15|busy~q\,
	combout => \inst14|lcd_bus[2]~6_combout\);

-- Location: FF_X4_Y11_N3
\inst14|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|lcd_bus[2]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_enable~q\);

-- Location: LCCOMB_X5_Y19_N24
\inst15|op_10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~5_combout\ = (\inst15|clk_count\(17) & (\inst15|clk_count\(16) & ((\inst15|clk_count\(14)) # (\inst15|clk_count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(17),
	datab => \inst15|clk_count\(16),
	datac => \inst15|clk_count\(14),
	datad => \inst15|clk_count\(15),
	combout => \inst15|op_10~5_combout\);

-- Location: LCCOMB_X5_Y20_N10
\inst15|op_9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~3_combout\ = (!\inst15|clk_count\(9) & !\inst15|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(9),
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_9~3_combout\);

-- Location: LCCOMB_X6_Y20_N2
\inst15|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~1_combout\ = (!\inst15|clk_count\(3) & (!\inst15|clk_count\(4) & ((!\inst15|clk_count\(2)) # (!\inst15|clk_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(3),
	datab => \inst15|clk_count\(1),
	datac => \inst15|clk_count\(4),
	datad => \inst15|clk_count\(2),
	combout => \inst15|op_4~1_combout\);

-- Location: LCCOMB_X6_Y21_N30
\inst15|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~4_combout\ = (!\inst15|clk_count\(8) & (!\inst15|clk_count\(11) & (\inst15|op_9~3_combout\ & \inst15|op_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(11),
	datac => \inst15|op_9~3_combout\,
	datad => \inst15|op_4~1_combout\,
	combout => \inst15|op_9~4_combout\);

-- Location: LCCOMB_X6_Y20_N4
\inst15|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~4_combout\ = (!\inst15|clk_count\(12) & (!\inst15|clk_count\(13) & !\inst15|clk_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(13),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_4~4_combout\);

-- Location: LCCOMB_X6_Y20_N0
\inst15|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~2_combout\ = (!\inst15|clk_count\(6) & (\inst15|op_4~4_combout\ & !\inst15|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(6),
	datac => \inst15|op_4~4_combout\,
	datad => \inst15|clk_count\(7),
	combout => \inst15|op_9~2_combout\);

-- Location: LCCOMB_X6_Y21_N24
\inst15|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~13_combout\ = (\inst15|op_10~5_combout\ & ((\inst15|clk_count\(15)) # ((!\inst15|op_9~2_combout\) # (!\inst15|op_9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(15),
	datab => \inst15|op_10~5_combout\,
	datac => \inst15|op_9~4_combout\,
	datad => \inst15|op_9~2_combout\,
	combout => \inst15|_~13_combout\);

-- Location: LCCOMB_X6_Y21_N28
\inst15|op_9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_9~5_combout\ = (\inst15|op_10~2_combout\ & (!\inst15|clk_count\(22) & !\inst15|_~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|op_10~2_combout\,
	datac => \inst15|clk_count\(22),
	datad => \inst15|_~13_combout\,
	combout => \inst15|op_9~5_combout\);

-- Location: LCCOMB_X6_Y20_N22
\inst15|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~0_combout\ = (\inst15|clk_count\(4) & ((\inst15|clk_count\(3)) # ((\inst15|clk_count\(2) & \inst15|clk_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(1),
	datac => \inst15|clk_count\(4),
	datad => \inst15|clk_count\(3),
	combout => \inst15|op_6~0_combout\);

-- Location: LCCOMB_X6_Y20_N10
\inst15|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~2_combout\ = (!\inst15|clk_count\(10) & (!\inst15|clk_count\(7) & (!\inst15|op_6~0_combout\ & !\inst15|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(10),
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_6~0_combout\,
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_6~2_combout\);

-- Location: LCCOMB_X5_Y19_N28
\inst15|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~2_combout\ = (!\inst15|clk_count\(17) & (!\inst15|clk_count\(16) & (!\inst15|clk_count\(14) & !\inst15|clk_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(17),
	datab => \inst15|clk_count\(16),
	datac => \inst15|clk_count\(14),
	datad => \inst15|clk_count\(15),
	combout => \inst15|_~2_combout\);

-- Location: LCCOMB_X5_Y19_N22
\inst15|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~6_combout\ = (!\inst15|clk_count\(22) & (!\inst15|clk_count\(13) & (\inst15|op_10~2_combout\ & \inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(22),
	datab => \inst15|clk_count\(13),
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst15|_~6_combout\);

-- Location: LCCOMB_X5_Y20_N6
\inst15|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~2_combout\ = (\inst15|clk_count\(9) & \inst15|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(9),
	datad => \inst15|clk_count\(8),
	combout => \inst15|op_4~2_combout\);

-- Location: LCCOMB_X6_Y20_N28
\inst15|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~1_combout\ = (!\inst15|clk_count\(10) & (((!\inst15|clk_count\(7) & !\inst15|clk_count\(6))) # (!\inst15|op_4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|clk_count\(6),
	datac => \inst15|op_4~2_combout\,
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_6~1_combout\);

-- Location: LCCOMB_X7_Y19_N30
\inst15|op_6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_6~4_combout\ = (\inst15|_~6_combout\ & ((\inst15|op_6~2_combout\) # ((\inst15|op_6~1_combout\) # (!\inst15|op_6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~2_combout\,
	datab => \inst15|_~6_combout\,
	datac => \inst15|op_6~3_combout\,
	datad => \inst15|op_6~1_combout\,
	combout => \inst15|op_6~4_combout\);

-- Location: LCCOMB_X6_Y19_N24
\inst15|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~5_combout\ = (!\inst15|clk_count\(20) & !\inst15|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(20),
	datad => \inst15|clk_count\(21),
	combout => \inst15|op_1~5_combout\);

-- Location: LCCOMB_X6_Y19_N22
\inst15|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~6_combout\ = (!\inst15|clk_count\(17) & (\inst15|op_1~5_combout\ & (!\inst15|clk_count\(15) & !\inst15|clk_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(17),
	datab => \inst15|op_1~5_combout\,
	datac => \inst15|clk_count\(15),
	datad => \inst15|clk_count\(16),
	combout => \inst15|op_1~6_combout\);

-- Location: LCCOMB_X5_Y19_N30
\inst15|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~7_combout\ = ((\inst15|op_1~5_combout\ & ((!\inst15|clk_count\(19)) # (!\inst15|clk_count\(18))))) # (!\inst15|clk_count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(18),
	datab => \inst15|clk_count\(19),
	datac => \inst15|clk_count\(22),
	datad => \inst15|op_1~5_combout\,
	combout => \inst15|op_1~7_combout\);

-- Location: LCCOMB_X6_Y19_N0
\inst15|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~3_combout\ = ((!\inst15|clk_count\(13) & (!\inst15|clk_count\(11) & !\inst15|clk_count\(12)))) # (!\inst15|clk_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(14),
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(12),
	combout => \inst15|op_1~3_combout\);

-- Location: LCCOMB_X6_Y19_N2
\inst15|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~8_combout\ = (\inst15|op_1~3_combout\) # ((\inst15|op_4~4_combout\ & ((!\inst15|clk_count\(9)) # (!\inst15|clk_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(9),
	datac => \inst15|op_4~4_combout\,
	datad => \inst15|op_1~3_combout\,
	combout => \inst15|op_1~8_combout\);

-- Location: LCCOMB_X6_Y19_N18
\inst15|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_1~4_combout\ = (\inst15|op_1~8_combout\) # ((\inst15|op_9~2_combout\ & ((!\inst15|op_1~2_combout\) # (!\inst15|clk_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(5),
	datab => \inst15|op_1~2_combout\,
	datac => \inst15|op_9~2_combout\,
	datad => \inst15|op_1~8_combout\,
	combout => \inst15|op_1~4_combout\);

-- Location: LCCOMB_X6_Y19_N8
\inst15|ENERGIZACAO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|ENERGIZACAO~0_combout\ = (\inst15|ENERGIZACAO~q\) # ((!\inst15|op_1~7_combout\ & ((!\inst15|op_1~4_combout\) # (!\inst15|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~6_combout\,
	datab => \inst15|op_1~7_combout\,
	datac => \inst15|ENERGIZACAO~q\,
	datad => \inst15|op_1~4_combout\,
	combout => \inst15|ENERGIZACAO~0_combout\);

-- Location: FF_X6_Y19_N9
\inst15|ENERGIZACAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|ENERGIZACAO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|ENERGIZACAO~q\);

-- Location: LCCOMB_X6_Y19_N30
\inst15|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~17_combout\ = (!\inst15|op_1~7_combout\ & (!\inst15|ENERGIZACAO~q\ & ((!\inst15|op_1~4_combout\) # (!\inst15|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_1~6_combout\,
	datab => \inst15|op_1~7_combout\,
	datac => \inst15|ENERGIZACAO~q\,
	datad => \inst15|op_1~4_combout\,
	combout => \inst15|_~17_combout\);

-- Location: LCCOMB_X6_Y20_N30
\inst15|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~2_combout\ = (!\inst15|clk_count\(4) & (((!\inst15|clk_count\(2)) # (!\inst15|clk_count\(1))) # (!\inst15|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(3),
	datab => \inst15|clk_count\(1),
	datac => \inst15|clk_count\(4),
	datad => \inst15|clk_count\(2),
	combout => \inst15|op_5~2_combout\);

-- Location: LCCOMB_X5_Y20_N8
\inst15|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~0_combout\ = (\inst15|clk_count\(6) & \inst15|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(6),
	datad => \inst15|clk_count\(5),
	combout => \inst15|op_5~0_combout\);

-- Location: LCCOMB_X6_Y20_N24
\inst15|INICIALIZACAO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~0_combout\ = (\inst15|clk_count\(9) & ((\inst15|clk_count\(7)) # ((!\inst15|op_5~2_combout\ & \inst15|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_5~2_combout\,
	datad => \inst15|op_5~0_combout\,
	combout => \inst15|INICIALIZACAO~0_combout\);

-- Location: LCCOMB_X7_Y20_N30
\inst15|INICIALIZACAO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~1_combout\ = (\inst15|clk_count\(11)) # ((\inst15|clk_count\(8) & (\inst15|clk_count\(10) & \inst15|INICIALIZACAO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(8),
	datab => \inst15|clk_count\(10),
	datac => \inst15|clk_count\(11),
	datad => \inst15|INICIALIZACAO~0_combout\,
	combout => \inst15|INICIALIZACAO~1_combout\);

-- Location: LCCOMB_X6_Y19_N12
\inst15|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~3_combout\ = (!\inst15|clk_count\(22) & (\inst15|op_10~2_combout\ & \inst15|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(22),
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst15|_~3_combout\);

-- Location: LCCOMB_X6_Y20_N8
\inst15|op_4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~3_combout\ = (((\inst15|op_4~1_combout\) # (!\inst15|op_4~2_combout\)) # (!\inst15|clk_count\(7))) # (!\inst15|op_5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_5~0_combout\,
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_4~2_combout\,
	datad => \inst15|op_4~1_combout\,
	combout => \inst15|op_4~3_combout\);

-- Location: LCCOMB_X7_Y19_N16
\inst15|op_4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~5_combout\ = (\inst15|_~3_combout\ & (!\inst15|clk_count\(11) & (\inst15|op_4~3_combout\ & \inst15|op_4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~3_combout\,
	datab => \inst15|clk_count\(11),
	datac => \inst15|op_4~3_combout\,
	datad => \inst15|op_4~4_combout\,
	combout => \inst15|op_4~5_combout\);

-- Location: LCCOMB_X7_Y19_N18
\inst15|INICIALIZACAO~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~2_combout\ = (!\inst15|op_4~5_combout\ & (((\inst15|INICIALIZACAO~1_combout\ & \inst15|clk_count\(12))) # (!\inst15|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|INICIALIZACAO~1_combout\,
	datab => \inst15|_~6_combout\,
	datac => \inst15|clk_count\(12),
	datad => \inst15|op_4~5_combout\,
	combout => \inst15|INICIALIZACAO~2_combout\);

-- Location: LCCOMB_X5_Y20_N0
\inst15|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_4~0_combout\ = (!\inst15|clk_count\(11) & (!\inst15|clk_count\(12) & (!\inst15|clk_count\(13) & !\inst15|clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(11),
	datab => \inst15|clk_count\(12),
	datac => \inst15|clk_count\(13),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_4~0_combout\);

-- Location: LCCOMB_X5_Y20_N4
\inst15|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~4_combout\ = (((\inst15|op_5~2_combout\) # (!\inst15|op_4~2_combout\)) # (!\inst15|op_5~0_combout\)) # (!\inst15|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|op_5~0_combout\,
	datac => \inst15|op_5~2_combout\,
	datad => \inst15|op_4~2_combout\,
	combout => \inst15|op_10~4_combout\);

-- Location: LCCOMB_X6_Y21_N12
\inst15|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~6_combout\ = ((\inst15|op_4~0_combout\ & (!\inst15|clk_count\(15) & \inst15|op_10~4_combout\))) # (!\inst15|op_10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_4~0_combout\,
	datab => \inst15|clk_count\(15),
	datac => \inst15|op_10~5_combout\,
	datad => \inst15|op_10~4_combout\,
	combout => \inst15|op_10~6_combout\);

-- Location: LCCOMB_X7_Y21_N8
\inst15|op_10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~3_combout\ = (\inst15|op_10~2_combout\ & !\inst15|clk_count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|op_10~2_combout\,
	datad => \inst15|clk_count\(22),
	combout => \inst15|op_10~3_combout\);

-- Location: LCCOMB_X7_Y21_N10
\inst15|INICIALIZACAO~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~3_combout\ = (\inst15|op_10~3_combout\ & ((\inst15|op_10~6_combout\) # ((\inst15|op_11~5_combout\) # (!\inst15|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~6_combout\,
	datab => \inst15|_~13_combout\,
	datac => \inst15|op_10~3_combout\,
	datad => \inst15|op_11~5_combout\,
	combout => \inst15|INICIALIZACAO~3_combout\);

-- Location: LCCOMB_X7_Y20_N20
\inst15|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~2_combout\ = (!\inst15|clk_count\(12) & (((!\inst15|clk_count\(10)) # (!\inst15|clk_count\(11))) # (!\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|clk_count\(9),
	datac => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_7~2_combout\);

-- Location: LCCOMB_X7_Y20_N24
\inst15|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~0_combout\ = (\inst15|clk_count\(7) & ((\inst15|clk_count\(5)) # (\inst15|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(5),
	datac => \inst15|clk_count\(7),
	datad => \inst15|op_1~2_combout\,
	combout => \inst15|op_7~0_combout\);

-- Location: LCCOMB_X7_Y20_N26
\inst15|op_7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~1_combout\ = (!\inst15|clk_count\(12) & (!\inst15|clk_count\(8) & ((!\inst15|op_7~0_combout\) # (!\inst15|clk_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|clk_count\(6),
	datac => \inst15|clk_count\(8),
	datad => \inst15|op_7~0_combout\,
	combout => \inst15|op_7~1_combout\);

-- Location: LCCOMB_X7_Y19_N8
\inst15|op_7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_7~3_combout\ = (\inst15|_~3_combout\ & ((\inst15|op_7~2_combout\) # ((\inst15|op_7~1_combout\) # (!\inst15|clk_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~3_combout\,
	datab => \inst15|op_7~2_combout\,
	datac => \inst15|clk_count\(13),
	datad => \inst15|op_7~1_combout\,
	combout => \inst15|op_7~3_combout\);

-- Location: LCCOMB_X7_Y19_N20
\inst15|INICIALIZACAO~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~4_combout\ = (!\inst15|op_6~4_combout\ & ((\inst15|op_7~3_combout\) # ((\inst15|op_9~5_combout\ & !\inst15|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~4_combout\,
	datab => \inst15|op_7~3_combout\,
	datac => \inst15|op_9~5_combout\,
	datad => \inst15|op_8~4_combout\,
	combout => \inst15|INICIALIZACAO~4_combout\);

-- Location: LCCOMB_X7_Y19_N14
\inst15|INICIALIZACAO~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~5_combout\ = (\inst15|INICIALIZACAO~q\ & (((\inst15|INICIALIZACAO~3_combout\) # (\inst15|INICIALIZACAO~4_combout\)) # (!\inst15|INICIALIZACAO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|INICIALIZACAO~q\,
	datab => \inst15|INICIALIZACAO~2_combout\,
	datac => \inst15|INICIALIZACAO~3_combout\,
	datad => \inst15|INICIALIZACAO~4_combout\,
	combout => \inst15|INICIALIZACAO~5_combout\);

-- Location: LCCOMB_X7_Y19_N2
\inst15|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~21_combout\ = (!\inst15|clk_count\(22) & (\inst15|op_10~2_combout\ & (\inst15|op_11~5_combout\ & \inst15|_~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(22),
	datab => \inst15|op_10~2_combout\,
	datac => \inst15|op_11~5_combout\,
	datad => \inst15|_~20_combout\,
	combout => \inst15|_~21_combout\);

-- Location: LCCOMB_X7_Y19_N22
\inst15|INICIALIZACAO~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|INICIALIZACAO~6_combout\ = ((\inst15|_~17_combout\) # ((\inst15|INICIALIZACAO~5_combout\) # (\inst15|_~21_combout\))) # (!\inst15|e~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|e~0_combout\,
	datab => \inst15|_~17_combout\,
	datac => \inst15|INICIALIZACAO~5_combout\,
	datad => \inst15|_~21_combout\,
	combout => \inst15|INICIALIZACAO~6_combout\);

-- Location: FF_X7_Y19_N23
\inst15|INICIALIZACAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|INICIALIZACAO~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|INICIALIZACAO~q\);

-- Location: LCCOMB_X7_Y19_N28
\inst15|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~11_combout\ = (!\inst15|op_6~4_combout\ & (\inst15|INICIALIZACAO~q\ & (!\inst15|op_7~3_combout\ & \inst15|INICIALIZACAO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_6~4_combout\,
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|op_7~3_combout\,
	datad => \inst15|INICIALIZACAO~2_combout\,
	combout => \inst15|_~11_combout\);

-- Location: LCCOMB_X6_Y21_N6
\inst15|op_10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_10~7_combout\ = (\inst15|op_10~2_combout\ & (!\inst15|clk_count\(22) & \inst15|op_10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|op_10~2_combout\,
	datac => \inst15|clk_count\(22),
	datad => \inst15|op_10~6_combout\,
	combout => \inst15|op_10~7_combout\);

-- Location: LCCOMB_X7_Y19_N24
\inst15|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~20_combout\ = (!\inst15|op_9~5_combout\ & (\inst15|_~11_combout\ & (!\inst15|op_10~7_combout\ & !\inst15|op_8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_9~5_combout\,
	datab => \inst15|_~11_combout\,
	datac => \inst15|op_10~7_combout\,
	datad => \inst15|op_8~4_combout\,
	combout => \inst15|_~20_combout\);

-- Location: LCCOMB_X6_Y19_N4
\inst15|PRONTO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|PRONTO~0_combout\ = (\inst15|op_11~6_combout\ & (((\inst14|lcd_enable~q\)) # (!\inst15|PRONTO~q\))) # (!\inst15|op_11~6_combout\ & (!\inst15|_~20_combout\ & ((\inst14|lcd_enable~q\) # (!\inst15|PRONTO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_11~6_combout\,
	datab => \inst15|PRONTO~q\,
	datac => \inst14|lcd_enable~q\,
	datad => \inst15|_~20_combout\,
	combout => \inst15|PRONTO~0_combout\);

-- Location: LCCOMB_X6_Y20_N16
\inst15|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_5~1_combout\ = (!\inst15|clk_count\(11) & !\inst15|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(11),
	datad => \inst15|clk_count\(10),
	combout => \inst15|op_5~1_combout\);

-- Location: LCCOMB_X6_Y20_N18
\inst15|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~2_combout\ = (!\inst15|clk_count\(5) & \inst15|op_4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(5),
	datad => \inst15|op_4~1_combout\,
	combout => \inst15|op_8~2_combout\);

-- Location: LCCOMB_X6_Y20_N26
\inst15|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_12~0_combout\ = (((!\inst15|clk_count\(6) & \inst15|op_8~2_combout\)) # (!\inst15|op_4~2_combout\)) # (!\inst15|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(6),
	datab => \inst15|clk_count\(7),
	datac => \inst15|op_4~2_combout\,
	datad => \inst15|op_8~2_combout\,
	combout => \inst15|op_12~0_combout\);

-- Location: LCCOMB_X6_Y20_N20
\inst15|op_12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_12~1_combout\ = (\inst15|_~6_combout\ & (((\inst15|op_5~1_combout\ & \inst15|op_12~0_combout\)) # (!\inst15|clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(12),
	datab => \inst15|op_5~1_combout\,
	datac => \inst15|op_12~0_combout\,
	datad => \inst15|_~6_combout\,
	combout => \inst15|op_12~1_combout\);

-- Location: LCCOMB_X6_Y19_N16
\inst15|PRONTO~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|PRONTO~1_combout\ = ((\inst15|ENVIAR~q\ & !\inst15|op_12~1_combout\)) # (!\inst15|PRONTO~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|PRONTO~0_combout\,
	datad => \inst15|op_12~1_combout\,
	combout => \inst15|PRONTO~1_combout\);

-- Location: FF_X6_Y19_N17
\inst15|PRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|PRONTO~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|PRONTO~q\);

-- Location: LCCOMB_X6_Y19_N10
\inst15|ENVIAR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|ENVIAR~2_combout\ = (\inst15|PRONTO~q\ & ((\inst14|lcd_enable~q\) # ((\inst15|ENVIAR~q\ & \inst15|op_12~1_combout\)))) # (!\inst15|PRONTO~q\ & (((\inst15|ENVIAR~q\ & \inst15|op_12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|PRONTO~q\,
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|ENVIAR~q\,
	datad => \inst15|op_12~1_combout\,
	combout => \inst15|ENVIAR~2_combout\);

-- Location: FF_X6_Y19_N11
\inst15|ENVIAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|ENVIAR~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|ENVIAR~q\);

-- Location: LCCOMB_X6_Y19_N14
\inst15|clk_count[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[22]~57_combout\ = (!\inst15|INICIALIZACAO~q\ & (\inst15|ENERGIZACAO~0_combout\ & ((!\inst15|op_12~1_combout\) # (!\inst15|ENVIAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|ENERGIZACAO~0_combout\,
	datad => \inst15|op_12~1_combout\,
	combout => \inst15|clk_count[22]~57_combout\);

-- Location: LCCOMB_X6_Y20_N12
\inst15|clk_count[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[1]~64_combout\ = (!\inst15|clk_count\(1) & !\inst15|clk_count[22]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|clk_count\(1),
	datad => \inst15|clk_count[22]~57_combout\,
	combout => \inst15|clk_count[1]~64_combout\);

-- Location: FF_X6_Y20_N13
\inst15|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[1]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(1));

-- Location: LCCOMB_X5_Y20_N12
\inst15|clk_count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[2]~21_combout\ = (\inst15|clk_count\(2) & (\inst15|clk_count\(1) $ (VCC))) # (!\inst15|clk_count\(2) & (\inst15|clk_count\(1) & VCC))
-- \inst15|clk_count[2]~22\ = CARRY((\inst15|clk_count\(2) & \inst15|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(2),
	datab => \inst15|clk_count\(1),
	datad => VCC,
	combout => \inst15|clk_count[2]~21_combout\,
	cout => \inst15|clk_count[2]~22\);

-- Location: FF_X5_Y20_N13
\inst15|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[2]~21_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(2));

-- Location: LCCOMB_X5_Y20_N14
\inst15|clk_count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[3]~23_combout\ = (\inst15|clk_count\(3) & (!\inst15|clk_count[2]~22\)) # (!\inst15|clk_count\(3) & ((\inst15|clk_count[2]~22\) # (GND)))
-- \inst15|clk_count[3]~24\ = CARRY((!\inst15|clk_count[2]~22\) # (!\inst15|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(3),
	datad => VCC,
	cin => \inst15|clk_count[2]~22\,
	combout => \inst15|clk_count[3]~23_combout\,
	cout => \inst15|clk_count[3]~24\);

-- Location: FF_X5_Y20_N15
\inst15|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[3]~23_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(3));

-- Location: LCCOMB_X5_Y20_N16
\inst15|clk_count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[4]~25_combout\ = (\inst15|clk_count\(4) & (\inst15|clk_count[3]~24\ $ (GND))) # (!\inst15|clk_count\(4) & (!\inst15|clk_count[3]~24\ & VCC))
-- \inst15|clk_count[4]~26\ = CARRY((\inst15|clk_count\(4) & !\inst15|clk_count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(4),
	datad => VCC,
	cin => \inst15|clk_count[3]~24\,
	combout => \inst15|clk_count[4]~25_combout\,
	cout => \inst15|clk_count[4]~26\);

-- Location: FF_X5_Y20_N17
\inst15|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[4]~25_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(4));

-- Location: LCCOMB_X5_Y20_N18
\inst15|clk_count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[5]~27_combout\ = (\inst15|clk_count\(5) & (!\inst15|clk_count[4]~26\)) # (!\inst15|clk_count\(5) & ((\inst15|clk_count[4]~26\) # (GND)))
-- \inst15|clk_count[5]~28\ = CARRY((!\inst15|clk_count[4]~26\) # (!\inst15|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(5),
	datad => VCC,
	cin => \inst15|clk_count[4]~26\,
	combout => \inst15|clk_count[5]~27_combout\,
	cout => \inst15|clk_count[5]~28\);

-- Location: FF_X5_Y20_N19
\inst15|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[5]~27_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(5));

-- Location: LCCOMB_X5_Y20_N20
\inst15|clk_count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[6]~29_combout\ = (\inst15|clk_count\(6) & (\inst15|clk_count[5]~28\ $ (GND))) # (!\inst15|clk_count\(6) & (!\inst15|clk_count[5]~28\ & VCC))
-- \inst15|clk_count[6]~30\ = CARRY((\inst15|clk_count\(6) & !\inst15|clk_count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(6),
	datad => VCC,
	cin => \inst15|clk_count[5]~28\,
	combout => \inst15|clk_count[6]~29_combout\,
	cout => \inst15|clk_count[6]~30\);

-- Location: FF_X5_Y20_N21
\inst15|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[6]~29_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(6));

-- Location: LCCOMB_X5_Y20_N22
\inst15|clk_count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[7]~31_combout\ = (\inst15|clk_count\(7) & (!\inst15|clk_count[6]~30\)) # (!\inst15|clk_count\(7) & ((\inst15|clk_count[6]~30\) # (GND)))
-- \inst15|clk_count[7]~32\ = CARRY((!\inst15|clk_count[6]~30\) # (!\inst15|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datad => VCC,
	cin => \inst15|clk_count[6]~30\,
	combout => \inst15|clk_count[7]~31_combout\,
	cout => \inst15|clk_count[7]~32\);

-- Location: FF_X5_Y20_N23
\inst15|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[7]~31_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(7));

-- Location: LCCOMB_X5_Y20_N24
\inst15|clk_count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[8]~33_combout\ = (\inst15|clk_count\(8) & (\inst15|clk_count[7]~32\ $ (GND))) # (!\inst15|clk_count\(8) & (!\inst15|clk_count[7]~32\ & VCC))
-- \inst15|clk_count[8]~34\ = CARRY((\inst15|clk_count\(8) & !\inst15|clk_count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(8),
	datad => VCC,
	cin => \inst15|clk_count[7]~32\,
	combout => \inst15|clk_count[8]~33_combout\,
	cout => \inst15|clk_count[8]~34\);

-- Location: FF_X5_Y20_N25
\inst15|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[8]~33_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(8));

-- Location: LCCOMB_X5_Y20_N26
\inst15|clk_count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[9]~35_combout\ = (\inst15|clk_count\(9) & (!\inst15|clk_count[8]~34\)) # (!\inst15|clk_count\(9) & ((\inst15|clk_count[8]~34\) # (GND)))
-- \inst15|clk_count[9]~36\ = CARRY((!\inst15|clk_count[8]~34\) # (!\inst15|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(9),
	datad => VCC,
	cin => \inst15|clk_count[8]~34\,
	combout => \inst15|clk_count[9]~35_combout\,
	cout => \inst15|clk_count[9]~36\);

-- Location: FF_X5_Y20_N27
\inst15|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[9]~35_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(9));

-- Location: LCCOMB_X5_Y20_N28
\inst15|clk_count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[10]~37_combout\ = (\inst15|clk_count\(10) & (\inst15|clk_count[9]~36\ $ (GND))) # (!\inst15|clk_count\(10) & (!\inst15|clk_count[9]~36\ & VCC))
-- \inst15|clk_count[10]~38\ = CARRY((\inst15|clk_count\(10) & !\inst15|clk_count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(10),
	datad => VCC,
	cin => \inst15|clk_count[9]~36\,
	combout => \inst15|clk_count[10]~37_combout\,
	cout => \inst15|clk_count[10]~38\);

-- Location: FF_X5_Y20_N29
\inst15|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[10]~37_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(10));

-- Location: LCCOMB_X5_Y20_N30
\inst15|clk_count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[11]~39_combout\ = (\inst15|clk_count\(11) & (!\inst15|clk_count[10]~38\)) # (!\inst15|clk_count\(11) & ((\inst15|clk_count[10]~38\) # (GND)))
-- \inst15|clk_count[11]~40\ = CARRY((!\inst15|clk_count[10]~38\) # (!\inst15|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(11),
	datad => VCC,
	cin => \inst15|clk_count[10]~38\,
	combout => \inst15|clk_count[11]~39_combout\,
	cout => \inst15|clk_count[11]~40\);

-- Location: FF_X5_Y20_N31
\inst15|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[11]~39_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(11));

-- Location: LCCOMB_X5_Y19_N0
\inst15|clk_count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|clk_count[12]~41_combout\ = (\inst15|clk_count\(12) & (\inst15|clk_count[11]~40\ $ (GND))) # (!\inst15|clk_count\(12) & (!\inst15|clk_count[11]~40\ & VCC))
-- \inst15|clk_count[12]~42\ = CARRY((\inst15|clk_count\(12) & !\inst15|clk_count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(12),
	datad => VCC,
	cin => \inst15|clk_count[11]~40\,
	combout => \inst15|clk_count[12]~41_combout\,
	cout => \inst15|clk_count[12]~42\);

-- Location: FF_X5_Y19_N1
\inst15|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[12]~41_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(12));

-- Location: FF_X5_Y19_N3
\inst15|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|clk_count[13]~43_combout\,
	sclr => \inst15|clk_count[22]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|clk_count\(13));

-- Location: LCCOMB_X7_Y20_N22
\inst15|op_8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~5_combout\ = (\inst15|clk_count\(6) & (\inst15|clk_count\(7) & ((\inst15|clk_count\(5)) # (!\inst15|op_4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(5),
	datab => \inst15|clk_count\(6),
	datac => \inst15|clk_count\(7),
	datad => \inst15|op_4~1_combout\,
	combout => \inst15|op_8~5_combout\);

-- Location: LCCOMB_X7_Y20_N28
\inst15|op_8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~3_combout\ = (\inst15|op_5~1_combout\ & (((!\inst15|clk_count\(8) & !\inst15|op_8~5_combout\)) # (!\inst15|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_5~1_combout\,
	datab => \inst15|clk_count\(8),
	datac => \inst15|op_8~5_combout\,
	datad => \inst15|clk_count\(9),
	combout => \inst15|op_8~3_combout\);

-- Location: LCCOMB_X7_Y19_N6
\inst15|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|op_8~4_combout\ = (\inst15|_~3_combout\ & (((\inst15|op_8~3_combout\) # (!\inst15|clk_count\(12))) # (!\inst15|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(13),
	datab => \inst15|clk_count\(12),
	datac => \inst15|op_8~3_combout\,
	datad => \inst15|_~3_combout\,
	combout => \inst15|op_8~4_combout\);

-- Location: LCCOMB_X7_Y19_N26
\inst15|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~12_combout\ = (\inst15|INICIALIZACAO~q\ & (\inst15|op_6~4_combout\ & \inst15|INICIALIZACAO~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|INICIALIZACAO~q\,
	datac => \inst15|op_6~4_combout\,
	datad => \inst15|INICIALIZACAO~2_combout\,
	combout => \inst15|_~12_combout\);

-- Location: LCCOMB_X7_Y19_N12
\inst15|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~14_combout\ = (\inst15|op_10~7_combout\ & (\inst15|_~11_combout\ & (!\inst15|op_9~5_combout\ & !\inst15|op_8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_10~7_combout\,
	datab => \inst15|_~11_combout\,
	datac => \inst15|op_9~5_combout\,
	datad => \inst15|op_8~4_combout\,
	combout => \inst15|_~14_combout\);

-- Location: LCCOMB_X7_Y19_N10
\inst15|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|e~0_combout\ = (!\inst15|_~12_combout\ & (!\inst15|_~14_combout\ & ((!\inst15|_~11_combout\) # (!\inst15|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|op_8~4_combout\,
	datab => \inst15|_~11_combout\,
	datac => \inst15|_~12_combout\,
	datad => \inst15|_~14_combout\,
	combout => \inst15|e~0_combout\);

-- Location: LCCOMB_X8_Y19_N18
\inst15|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~5_combout\ = (\inst15|ENVIAR~q\ & (!\inst15|clk_count\(12) & !\inst15|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|clk_count\(12),
	datad => \inst15|clk_count\(11),
	combout => \inst15|_~5_combout\);

-- Location: LCCOMB_X7_Y19_N4
\inst15|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~4_combout\ = (\inst15|_~3_combout\ & (\inst15|op_4~0_combout\ & (\inst15|op_4~3_combout\ & \inst15|INICIALIZACAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~3_combout\,
	datab => \inst15|op_4~0_combout\,
	datac => \inst15|op_4~3_combout\,
	datad => \inst15|INICIALIZACAO~q\,
	combout => \inst15|_~4_combout\);

-- Location: LCCOMB_X4_Y20_N16
\inst15|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~7_combout\ = (\inst15|clk_count\(2)) # ((\inst15|clk_count\(3)) # (\inst15|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|clk_count\(2),
	datac => \inst15|clk_count\(3),
	datad => \inst15|clk_count\(4),
	combout => \inst15|_~7_combout\);

-- Location: LCCOMB_X5_Y20_N2
\inst15|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~8_combout\ = (\inst15|op_5~0_combout\ & ((\inst15|clk_count\(8) & ((\inst15|op_6~0_combout\))) # (!\inst15|clk_count\(8) & (\inst15|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~7_combout\,
	datab => \inst15|clk_count\(8),
	datac => \inst15|op_5~0_combout\,
	datad => \inst15|op_6~0_combout\,
	combout => \inst15|_~8_combout\);

-- Location: LCCOMB_X7_Y20_N8
\inst15|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~9_combout\ = (\inst15|clk_count\(8) & ((\inst15|clk_count\(7)) # ((\inst15|_~8_combout\) # (!\inst15|clk_count\(10))))) # (!\inst15|clk_count\(8) & (!\inst15|clk_count\(10) & ((\inst15|clk_count\(7)) # (\inst15|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|clk_count\(7),
	datab => \inst15|clk_count\(8),
	datac => \inst15|_~8_combout\,
	datad => \inst15|clk_count\(10),
	combout => \inst15|_~9_combout\);

-- Location: LCCOMB_X7_Y20_N14
\inst15|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~10_combout\ = (\inst15|_~6_combout\ & (\inst15|clk_count\(10) $ (((\inst15|_~9_combout\) # (\inst15|clk_count\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~6_combout\,
	datab => \inst15|clk_count\(10),
	datac => \inst15|_~9_combout\,
	datad => \inst15|clk_count\(9),
	combout => \inst15|_~10_combout\);

-- Location: LCCOMB_X7_Y19_N0
\inst15|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|e~1_combout\ = ((\inst15|_~4_combout\) # ((\inst15|_~5_combout\ & \inst15|_~10_combout\))) # (!\inst15|e~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|e~0_combout\,
	datab => \inst15|_~5_combout\,
	datac => \inst15|_~4_combout\,
	datad => \inst15|_~10_combout\,
	combout => \inst15|e~1_combout\);

-- Location: FF_X7_Y19_N1
\inst15|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|e~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|e~q\);

-- Location: LCCOMB_X6_Y7_N18
\inst14|char_24~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_24~feeder_combout\ = \inst14|char_23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_23~q\,
	combout => \inst14|char_24~feeder_combout\);

-- Location: FF_X6_Y7_N19
\inst14|char_24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_24~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_24~q\);

-- Location: LCCOMB_X4_Y7_N26
\inst14|char_25~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_25~feeder_combout\ = \inst14|char_24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_24~q\,
	combout => \inst14|char_25~feeder_combout\);

-- Location: FF_X4_Y7_N27
\inst14|char_25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_25~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_25~q\);

-- Location: FF_X4_Y11_N7
\inst14|char_26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_25~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_26~q\);

-- Location: LCCOMB_X4_Y11_N8
\inst14|char_27~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_27~feeder_combout\ = \inst14|char_26~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_26~q\,
	combout => \inst14|char_27~feeder_combout\);

-- Location: FF_X4_Y11_N9
\inst14|char_27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_27~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_27~q\);

-- Location: FF_X4_Y11_N5
\inst14|char_28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_27~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_28~q\);

-- Location: FF_X4_Y11_N13
\inst14|char_29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_28~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_29~q\);

-- Location: LCCOMB_X3_Y10_N26
\inst14|char_30~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_30~feeder_combout\ = \inst14|char_29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_29~q\,
	combout => \inst14|char_30~feeder_combout\);

-- Location: FF_X3_Y10_N27
\inst14|char_30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_30~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_30~q\);

-- Location: LCCOMB_X3_Y10_N6
\inst14|char_31~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_31~feeder_combout\ = \inst14|char_30~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_30~q\,
	combout => \inst14|char_31~feeder_combout\);

-- Location: FF_X3_Y10_N7
\inst14|char_31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_31~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_31~q\);

-- Location: LCCOMB_X3_Y10_N8
\inst14|char_32~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_32~feeder_combout\ = \inst14|char_31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_31~q\,
	combout => \inst14|char_32~feeder_combout\);

-- Location: FF_X3_Y10_N9
\inst14|char_32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_32~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_32~q\);

-- Location: FF_X3_Y10_N1
\inst14|char_33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_32~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_33~q\);

-- Location: LCCOMB_X3_Y11_N8
\inst14|char_00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_00~0_combout\ = !\inst14|char_33~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_33~q\,
	combout => \inst14|char_00~0_combout\);

-- Location: FF_X3_Y11_N9
\inst14|char_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_00~0_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_00~q\);

-- Location: LCCOMB_X3_Y11_N10
\inst14|char_01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_01~0_combout\ = !\inst14|char_00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_00~q\,
	combout => \inst14|char_01~0_combout\);

-- Location: FF_X3_Y11_N11
\inst14|char_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_01~0_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_01~q\);

-- Location: LCCOMB_X7_Y11_N2
\inst14|char_02~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_02~feeder_combout\ = \inst14|char_01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_01~q\,
	combout => \inst14|char_02~feeder_combout\);

-- Location: FF_X7_Y11_N3
\inst14|char_02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_02~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_02~q\);

-- Location: LCCOMB_X7_Y11_N4
\inst14|char_03~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_03~feeder_combout\ = \inst14|char_02~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_02~q\,
	combout => \inst14|char_03~feeder_combout\);

-- Location: FF_X7_Y11_N5
\inst14|char_03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_03~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_03~q\);

-- Location: FF_X7_Y11_N11
\inst14|char_04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_03~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_04~q\);

-- Location: LCCOMB_X7_Y11_N8
\inst14|char_05~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_05~feeder_combout\ = \inst14|char_04~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_04~q\,
	combout => \inst14|char_05~feeder_combout\);

-- Location: FF_X7_Y11_N9
\inst14|char_05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_05~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_05~q\);

-- Location: FF_X9_Y7_N13
\inst14|char_06\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_05~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_06~q\);

-- Location: LCCOMB_X6_Y7_N8
\inst14|char_07~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_07~feeder_combout\ = \inst14|char_06~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_06~q\,
	combout => \inst14|char_07~feeder_combout\);

-- Location: FF_X6_Y7_N9
\inst14|char_07\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_07~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_07~q\);

-- Location: LCCOMB_X6_Y7_N14
\inst14|char_08~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_08~feeder_combout\ = \inst14|char_07~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_07~q\,
	combout => \inst14|char_08~feeder_combout\);

-- Location: FF_X6_Y7_N15
\inst14|char_08\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_08~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_08~q\);

-- Location: FF_X6_Y7_N29
\inst14|char_09\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_08~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_09~q\);

-- Location: LCCOMB_X6_Y7_N30
\inst14|char_10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_10~feeder_combout\ = \inst14|char_09~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_09~q\,
	combout => \inst14|char_10~feeder_combout\);

-- Location: FF_X6_Y7_N31
\inst14|char_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_10~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_10~q\);

-- Location: FF_X9_Y9_N7
\inst14|char_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_10~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_11~q\);

-- Location: LCCOMB_X9_Y9_N26
\inst14|char_12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_12~feeder_combout\ = \inst14|char_11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_11~q\,
	combout => \inst14|char_12~feeder_combout\);

-- Location: FF_X9_Y9_N27
\inst14|char_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_12~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_12~q\);

-- Location: LCCOMB_X3_Y11_N12
\inst14|char_13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_13~feeder_combout\ = \inst14|char_12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_12~q\,
	combout => \inst14|char_13~feeder_combout\);

-- Location: FF_X3_Y11_N13
\inst14|char_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_13~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_13~q\);

-- Location: LCCOMB_X3_Y11_N6
\inst14|char_14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_14~feeder_combout\ = \inst14|char_13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_13~q\,
	combout => \inst14|char_14~feeder_combout\);

-- Location: FF_X3_Y11_N7
\inst14|char_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_14~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_14~q\);

-- Location: LCCOMB_X3_Y11_N24
\inst14|char_15~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_15~feeder_combout\ = \inst14|char_14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_14~q\,
	combout => \inst14|char_15~feeder_combout\);

-- Location: FF_X3_Y11_N25
\inst14|char_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_15~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_15~q\);

-- Location: FF_X3_Y11_N15
\inst14|char_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_15~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_16~q\);

-- Location: LCCOMB_X3_Y11_N18
\inst14|char_17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_17~feeder_combout\ = \inst14|char_16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|char_16~q\,
	combout => \inst14|char_17~feeder_combout\);

-- Location: FF_X3_Y11_N19
\inst14|char_17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_17~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_17~q\);

-- Location: LCCOMB_X3_Y11_N20
\inst14|char_18~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_18~feeder_combout\ = \inst14|char_17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_17~q\,
	combout => \inst14|char_18~feeder_combout\);

-- Location: FF_X3_Y11_N21
\inst14|char_18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_18~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_18~q\);

-- Location: LCCOMB_X3_Y11_N22
\inst14|char_19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_19~feeder_combout\ = \inst14|char_18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_18~q\,
	combout => \inst14|char_19~feeder_combout\);

-- Location: FF_X3_Y11_N23
\inst14|char_19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_19~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_19~q\);

-- Location: LCCOMB_X3_Y11_N4
\inst14|char_20~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_20~feeder_combout\ = \inst14|char_19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_19~q\,
	combout => \inst14|char_20~feeder_combout\);

-- Location: FF_X3_Y11_N5
\inst14|char_20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_20~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_20~q\);

-- Location: FF_X3_Y11_N31
\inst14|char_21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_20~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_21~q\);

-- Location: LCCOMB_X7_Y11_N14
\inst14|char_22~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|char_22~feeder_combout\ = \inst14|char_21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|char_21~q\,
	combout => \inst14|char_22~feeder_combout\);

-- Location: FF_X7_Y11_N15
\inst14|char_22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|char_22~feeder_combout\,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_22~q\);

-- Location: FF_X9_Y7_N11
\inst14|char_23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst14|char_22~q\,
	sload => VCC,
	ena => \inst14|lcd_bus[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|char_23~q\);

-- Location: LCCOMB_X9_Y7_N12
\inst14|lcd_bus[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~7_combout\ = (\inst14|char_23~q\) # ((\inst14|char_09~q\) # ((\inst14|char_06~q\) # (\inst14|char_12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_23~q\,
	datab => \inst14|char_09~q\,
	datac => \inst14|char_06~q\,
	datad => \inst14|char_12~q\,
	combout => \inst14|lcd_bus[9]~7_combout\);

-- Location: LCCOMB_X4_Y11_N26
\inst14|lcd_bus[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~8_combout\ = (\inst14|char_26~q\) # (\inst14|char_29~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_26~q\,
	datad => \inst14|char_29~q\,
	combout => \inst14|lcd_bus[9]~8_combout\);

-- Location: LCCOMB_X3_Y10_N0
\inst14|lcd_bus[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~16_combout\ = (!\inst14|char_30~q\ & (!\inst14|char_32~q\ & (!\inst14|char_33~q\ & !\inst14|char_31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_30~q\,
	datab => \inst14|char_32~q\,
	datac => \inst14|char_33~q\,
	datad => \inst14|char_31~q\,
	combout => \inst14|lcd_bus[9]~16_combout\);

-- Location: LCCOMB_X3_Y11_N14
\inst14|lcd_bus[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~14_combout\ = (!\inst14|char_13~q\ & (!\inst14|char_15~q\ & (!\inst14|char_16~q\ & !\inst14|char_14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_13~q\,
	datab => \inst14|char_15~q\,
	datac => \inst14|char_16~q\,
	datad => \inst14|char_14~q\,
	combout => \inst14|lcd_bus[9]~14_combout\);

-- Location: LCCOMB_X3_Y11_N30
\inst14|lcd_bus[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~15_combout\ = (!\inst14|char_19~q\ & (!\inst14|char_20~q\ & (!\inst14|char_21~q\ & !\inst14|char_18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_19~q\,
	datab => \inst14|char_20~q\,
	datac => \inst14|char_21~q\,
	datad => \inst14|char_18~q\,
	combout => \inst14|lcd_bus[9]~15_combout\);

-- Location: LCCOMB_X6_Y7_N22
\inst14|lcd_bus[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~11_combout\ = (!\inst14|char_27~q\ & (!\inst14|char_07~q\ & (!\inst14|char_10~q\ & !\inst14|char_24~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_27~q\,
	datab => \inst14|char_07~q\,
	datac => \inst14|char_10~q\,
	datad => \inst14|char_24~q\,
	combout => \inst14|lcd_bus[3]~11_combout\);

-- Location: LCCOMB_X7_Y11_N28
\inst14|lcd_bus[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~9_combout\ = (!\inst14|char_08~q\ & (!\inst14|char_22~q\ & (!\inst14|char_05~q\ & !\inst14|char_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_08~q\,
	datab => \inst14|char_22~q\,
	datac => \inst14|char_05~q\,
	datad => \inst14|char_11~q\,
	combout => \inst14|lcd_bus[9]~9_combout\);

-- Location: LCCOMB_X4_Y11_N4
\inst14|lcd_bus[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~10_combout\ = (!\inst14|char_25~q\ & (!\inst14|char_28~q\ & \inst14|lcd_bus[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_25~q\,
	datac => \inst14|char_28~q\,
	datad => \inst14|lcd_bus[9]~9_combout\,
	combout => \inst14|lcd_bus[9]~10_combout\);

-- Location: LCCOMB_X7_Y11_N10
\inst14|lcd_bus[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~12_combout\ = (!\inst14|char_02~q\ & (!\inst14|char_03~q\ & (!\inst14|char_04~q\ & !\inst14|char_01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_02~q\,
	datab => \inst14|char_03~q\,
	datac => \inst14|char_04~q\,
	datad => \inst14|char_01~q\,
	combout => \inst14|lcd_bus[9]~12_combout\);

-- Location: LCCOMB_X4_Y11_N2
\inst14|lcd_bus[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~13_combout\ = (\inst14|lcd_bus[3]~11_combout\ & (\inst14|lcd_bus[9]~10_combout\ & \inst14|lcd_bus[9]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~11_combout\,
	datab => \inst14|lcd_bus[9]~10_combout\,
	datad => \inst14|lcd_bus[9]~12_combout\,
	combout => \inst14|lcd_bus[9]~13_combout\);

-- Location: LCCOMB_X3_Y11_N0
\inst14|lcd_bus[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~17_combout\ = (\inst14|lcd_bus[9]~16_combout\ & (\inst14|lcd_bus[9]~14_combout\ & (\inst14|lcd_bus[9]~15_combout\ & \inst14|lcd_bus[9]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[9]~16_combout\,
	datab => \inst14|lcd_bus[9]~14_combout\,
	datac => \inst14|lcd_bus[9]~15_combout\,
	datad => \inst14|lcd_bus[9]~13_combout\,
	combout => \inst14|lcd_bus[9]~17_combout\);

-- Location: LCCOMB_X3_Y11_N16
\inst14|lcd_bus[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[9]~18_combout\ = (\inst14|lcd_bus[2]~6_combout\ & ((\inst14|lcd_bus[9]~7_combout\) # ((\inst14|lcd_bus[9]~8_combout\) # (!\inst14|lcd_bus[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[9]~7_combout\,
	datab => \inst14|lcd_bus[9]~8_combout\,
	datac => \inst14|lcd_bus[2]~6_combout\,
	datad => \inst14|lcd_bus[9]~17_combout\,
	combout => \inst14|lcd_bus[9]~18_combout\);

-- Location: FF_X3_Y11_N17
\inst14|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[9]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(9));

-- Location: LCCOMB_X8_Y19_N20
\inst15|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~15_combout\ = (\inst14|lcd_enable~q\ & \inst15|PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|PRONTO~q\,
	combout => \inst15|_~15_combout\);

-- Location: LCCOMB_X8_Y19_N4
\inst15|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|rs~0_combout\ = (\inst14|lcd_bus\(9) & ((\inst15|_~15_combout\) # ((\inst15|ENVIAR~q\ & \inst15|rs~q\)))) # (!\inst14|lcd_bus\(9) & (\inst15|ENVIAR~q\ & (\inst15|rs~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(9),
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|rs~q\,
	datad => \inst15|_~15_combout\,
	combout => \inst15|rs~0_combout\);

-- Location: FF_X8_Y19_N5
\inst15|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|rs~q\);

-- Location: LCCOMB_X10_Y18_N30
\inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|_~0_combout\ = (!\inst|count\(1) & !\inst|op_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(1),
	datad => \inst|op_1~1_combout\,
	combout => \inst|_~0_combout\);

-- Location: FF_X10_Y18_N31
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X10_Y18_N2
\inst|count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~13_combout\ = (\inst|count\(1) & (\inst|count\(2) $ (VCC))) # (!\inst|count\(1) & (\inst|count\(2) & VCC))
-- \inst|count[2]~14\ = CARRY((\inst|count\(1) & \inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datad => VCC,
	combout => \inst|count[2]~13_combout\,
	cout => \inst|count[2]~14\);

-- Location: FF_X10_Y18_N3
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[2]~13_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X10_Y18_N4
\inst|count[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~15_combout\ = (\inst|count\(3) & (!\inst|count[2]~14\)) # (!\inst|count\(3) & ((\inst|count[2]~14\) # (GND)))
-- \inst|count[3]~16\ = CARRY((!\inst|count[2]~14\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~14\,
	combout => \inst|count[3]~15_combout\,
	cout => \inst|count[3]~16\);

-- Location: FF_X10_Y18_N5
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[3]~15_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X10_Y18_N6
\inst|count[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[4]~17_combout\ = (\inst|count\(4) & (\inst|count[3]~16\ $ (GND))) # (!\inst|count\(4) & (!\inst|count[3]~16\ & VCC))
-- \inst|count[4]~18\ = CARRY((\inst|count\(4) & !\inst|count[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datad => VCC,
	cin => \inst|count[3]~16\,
	combout => \inst|count[4]~17_combout\,
	cout => \inst|count[4]~18\);

-- Location: FF_X10_Y18_N7
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[4]~17_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X10_Y18_N8
\inst|count[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[5]~19_combout\ = (\inst|count\(5) & (!\inst|count[4]~18\)) # (!\inst|count\(5) & ((\inst|count[4]~18\) # (GND)))
-- \inst|count[5]~20\ = CARRY((!\inst|count[4]~18\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(5),
	datad => VCC,
	cin => \inst|count[4]~18\,
	combout => \inst|count[5]~19_combout\,
	cout => \inst|count[5]~20\);

-- Location: FF_X10_Y18_N9
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[5]~19_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X10_Y18_N10
\inst|count[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[6]~21_combout\ = (\inst|count\(6) & (\inst|count[5]~20\ $ (GND))) # (!\inst|count\(6) & (!\inst|count[5]~20\ & VCC))
-- \inst|count[6]~22\ = CARRY((\inst|count\(6) & !\inst|count[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(6),
	datad => VCC,
	cin => \inst|count[5]~20\,
	combout => \inst|count[6]~21_combout\,
	cout => \inst|count[6]~22\);

-- Location: FF_X10_Y18_N11
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[6]~21_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X10_Y18_N12
\inst|count[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[7]~23_combout\ = (\inst|count\(7) & (!\inst|count[6]~22\)) # (!\inst|count\(7) & ((\inst|count[6]~22\) # (GND)))
-- \inst|count[7]~24\ = CARRY((!\inst|count[6]~22\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datad => VCC,
	cin => \inst|count[6]~22\,
	combout => \inst|count[7]~23_combout\,
	cout => \inst|count[7]~24\);

-- Location: FF_X10_Y18_N13
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[7]~23_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LCCOMB_X10_Y18_N14
\inst|count[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[8]~25_combout\ = (\inst|count\(8) & (\inst|count[7]~24\ $ (GND))) # (!\inst|count\(8) & (!\inst|count[7]~24\ & VCC))
-- \inst|count[8]~26\ = CARRY((\inst|count\(8) & !\inst|count[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(8),
	datad => VCC,
	cin => \inst|count[7]~24\,
	combout => \inst|count[8]~25_combout\,
	cout => \inst|count[8]~26\);

-- Location: FF_X10_Y18_N15
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[8]~25_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: LCCOMB_X10_Y18_N16
\inst|count[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[9]~27_combout\ = (\inst|count\(9) & (!\inst|count[8]~26\)) # (!\inst|count\(9) & ((\inst|count[8]~26\) # (GND)))
-- \inst|count[9]~28\ = CARRY((!\inst|count[8]~26\) # (!\inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(9),
	datad => VCC,
	cin => \inst|count[8]~26\,
	combout => \inst|count[9]~27_combout\,
	cout => \inst|count[9]~28\);

-- Location: FF_X10_Y18_N17
\inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[9]~27_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(9));

-- Location: LCCOMB_X10_Y18_N18
\inst|count[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[10]~29_combout\ = (\inst|count\(10) & (\inst|count[9]~28\ $ (GND))) # (!\inst|count\(10) & (!\inst|count[9]~28\ & VCC))
-- \inst|count[10]~30\ = CARRY((\inst|count\(10) & !\inst|count[9]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(10),
	datad => VCC,
	cin => \inst|count[9]~28\,
	combout => \inst|count[10]~29_combout\,
	cout => \inst|count[10]~30\);

-- Location: FF_X10_Y18_N19
\inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[10]~29_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(10));

-- Location: LCCOMB_X10_Y18_N20
\inst|count[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[11]~31_combout\ = (\inst|count\(11) & (!\inst|count[10]~30\)) # (!\inst|count\(11) & ((\inst|count[10]~30\) # (GND)))
-- \inst|count[11]~32\ = CARRY((!\inst|count[10]~30\) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(11),
	datad => VCC,
	cin => \inst|count[10]~30\,
	combout => \inst|count[11]~31_combout\,
	cout => \inst|count[11]~32\);

-- Location: FF_X10_Y18_N21
\inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[11]~31_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(11));

-- Location: LCCOMB_X10_Y18_N22
\inst|count[12]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[12]~33_combout\ = (\inst|count\(12) & (\inst|count[11]~32\ $ (GND))) # (!\inst|count\(12) & (!\inst|count[11]~32\ & VCC))
-- \inst|count[12]~34\ = CARRY((\inst|count\(12) & !\inst|count[11]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(12),
	datad => VCC,
	cin => \inst|count[11]~32\,
	combout => \inst|count[12]~33_combout\,
	cout => \inst|count[12]~34\);

-- Location: FF_X10_Y18_N23
\inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[12]~33_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(12));

-- Location: LCCOMB_X10_Y18_N24
\inst|count[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[13]~35_combout\ = (\inst|count\(13) & (!\inst|count[12]~34\)) # (!\inst|count\(13) & ((\inst|count[12]~34\) # (GND)))
-- \inst|count[13]~36\ = CARRY((!\inst|count[12]~34\) # (!\inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(13),
	datad => VCC,
	cin => \inst|count[12]~34\,
	combout => \inst|count[13]~35_combout\,
	cout => \inst|count[13]~36\);

-- Location: FF_X10_Y18_N25
\inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[13]~35_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(13));

-- Location: LCCOMB_X10_Y18_N26
\inst|count[14]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[14]~37_combout\ = \inst|count\(14) $ (!\inst|count[13]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(14),
	cin => \inst|count[13]~36\,
	combout => \inst|count[14]~37_combout\);

-- Location: FF_X10_Y18_N27
\inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[14]~37_combout\,
	sclr => \inst|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(14));

-- Location: LCCOMB_X10_Y18_N0
\inst|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~0_combout\ = (((!\inst|count\(9) & !\inst|count\(8))) # (!\inst|count\(10))) # (!\inst|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(11),
	datab => \inst|count\(9),
	datac => \inst|count\(8),
	datad => \inst|count\(10),
	combout => \inst|op_1~0_combout\);

-- Location: LCCOMB_X10_Y18_N28
\inst|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_1~1_combout\ = (\inst|count\(14) & (\inst|count\(13) & (\inst|count\(12) & !\inst|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(14),
	datab => \inst|count\(13),
	datac => \inst|count\(12),
	datad => \inst|op_1~0_combout\,
	combout => \inst|op_1~1_combout\);

-- Location: LCCOMB_X11_Y18_N28
\inst|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~1_combout\ = \inst|alt~q\ $ (\inst|op_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|alt~q\,
	datad => \inst|op_1~1_combout\,
	combout => \inst|alt~1_combout\);

-- Location: LCCOMB_X11_Y18_N10
\inst|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alt~feeder_combout\ = \inst|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|alt~1_combout\,
	combout => \inst|alt~feeder_combout\);

-- Location: FF_X11_Y18_N11
\inst|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|alt~q\);

-- Location: LCCOMB_X11_Y18_N12
\inst3|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~0_combout\ = !\inst3|cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	combout => \inst3|cnt[1]~0_combout\);

-- Location: FF_X11_Y18_N13
\inst3|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~q\,
	d => \inst3|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(1));

-- Location: LCCOMB_X11_Y18_N20
\inst3|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|_~0_combout\ = \inst3|cnt\(2) $ (\inst3|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(2),
	datad => \inst3|cnt\(1),
	combout => \inst3|_~0_combout\);

-- Location: FF_X11_Y18_N21
\inst3|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|alt~q\,
	d => \inst3|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt\(2));

-- Location: LCCOMB_X11_Y18_N26
\inst2|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~0_combout\ = (!\inst3|cnt\(1) & !\inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~0_combout\);

-- Location: LCCOMB_X11_Y18_N30
\inst2|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~1_combout\ = (\inst3|cnt\(1) & !\inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~1_combout\);

-- Location: LCCOMB_X11_Y18_N24
\inst2|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~2_combout\ = (!\inst3|cnt\(1) & \inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~2_combout\);

-- Location: LCCOMB_X12_Y12_N8
\inst2|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~3_combout\ = (\inst3|cnt\(1) & \inst3|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datad => \inst3|cnt\(2),
	combout => \inst2|_~3_combout\);

-- Location: LCCOMB_X4_Y11_N28
\inst14|lcd_bus[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[7]~19_combout\ = (!\inst14|lcd_enable~q\ & (!\inst15|busy~q\ & ((\inst14|char_17~q\) # (!\inst14|char_00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_00~q\,
	datab => \inst14|lcd_enable~q\,
	datac => \inst14|char_17~q\,
	datad => \inst15|busy~q\,
	combout => \inst14|lcd_bus[7]~19_combout\);

-- Location: FF_X4_Y11_N29
\inst14|lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(7));

-- Location: LCCOMB_X8_Y19_N30
\inst15|lcd_data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[7]~0_combout\ = (\inst14|lcd_bus\(7) & ((\inst15|_~15_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(7))))) # (!\inst14|lcd_bus\(7) & (\inst15|ENVIAR~q\ & (\inst15|lcd_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(7),
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(7),
	datad => \inst15|_~15_combout\,
	combout => \inst15|lcd_data[7]~0_combout\);

-- Location: FF_X8_Y19_N31
\inst15|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(7));

-- Location: LCCOMB_X4_Y11_N10
\inst14|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~0_combout\ = (!\inst14|lcd_enable~q\ & (\inst14|char_17~q\ & !\inst15|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_enable~q\,
	datac => \inst14|char_17~q\,
	datad => \inst15|busy~q\,
	combout => \inst14|_~0_combout\);

-- Location: FF_X4_Y11_N11
\inst14|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(6));

-- Location: LCCOMB_X8_Y19_N16
\inst15|lcd_data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[6]~1_combout\ = (\inst14|lcd_bus\(6) & ((\inst15|_~15_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(6))))) # (!\inst14|lcd_bus\(6) & (\inst15|ENVIAR~q\ & (\inst15|lcd_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(6),
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(6),
	datad => \inst15|_~15_combout\,
	combout => \inst15|lcd_data[6]~1_combout\);

-- Location: FF_X8_Y19_N17
\inst15|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(6));

-- Location: LCCOMB_X6_Y19_N20
\inst15|lcd_data[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[5]~2_combout\ = (!\inst15|_~17_combout\ & ((!\inst15|op_4~5_combout\) # (!\inst15|INICIALIZACAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|INICIALIZACAO~q\,
	datac => \inst15|_~17_combout\,
	datad => \inst15|op_4~5_combout\,
	combout => \inst15|lcd_data[5]~2_combout\);

-- Location: LCCOMB_X12_Y9_N28
\inst4|deb|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|alt~1_combout\ = !\inst4|deb|divisor|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|deb|divisor|alt~q\,
	combout => \inst4|deb|divisor|alt~1_combout\);

-- Location: LCCOMB_X12_Y9_N12
\inst4|deb|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|alt~feeder_combout\ = \inst4|deb|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|deb|divisor|alt~1_combout\,
	combout => \inst4|deb|divisor|alt~feeder_combout\);

-- Location: LCCOMB_X14_Y9_N28
\inst1|debounc1|divisor|count[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[15]~41_combout\ = (\inst1|debounc1|divisor|count\(15) & (!\inst1|debounc1|divisor|count[14]~40\)) # (!\inst1|debounc1|divisor|count\(15) & ((\inst1|debounc1|divisor|count[14]~40\) # (GND)))
-- \inst1|debounc1|divisor|count[15]~42\ = CARRY((!\inst1|debounc1|divisor|count[14]~40\) # (!\inst1|debounc1|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(15),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[14]~40\,
	combout => \inst1|debounc1|divisor|count[15]~41_combout\,
	cout => \inst1|debounc1|divisor|count[15]~42\);

-- Location: LCCOMB_X14_Y9_N30
\inst1|debounc1|divisor|count[16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[16]~43_combout\ = \inst1|debounc1|divisor|count\(16) $ (!\inst1|debounc1|divisor|count[15]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(16),
	cin => \inst1|debounc1|divisor|count[15]~42\,
	combout => \inst1|debounc1|divisor|count[16]~43_combout\);

-- Location: FF_X14_Y9_N31
\inst1|debounc1|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[16]~43_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(16));

-- Location: LCCOMB_X14_Y9_N0
\inst4|deb|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~0_combout\ = (!\inst1|debounc1|divisor|count\(14) & (!\inst1|debounc1|divisor|count\(13) & (!\inst1|debounc1|divisor|count\(12) & !\inst1|debounc1|divisor|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(14),
	datab => \inst1|debounc1|divisor|count\(13),
	datac => \inst1|debounc1|divisor|count\(12),
	datad => \inst1|debounc1|divisor|count\(11),
	combout => \inst4|deb|divisor|op_1~0_combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst4|deb|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~1_combout\ = (!\inst1|debounc1|divisor|count\(8) & (((!\inst1|debounc1|divisor|count\(6) & !\inst1|debounc1|divisor|count\(5))) # (!\inst1|debounc1|divisor|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(8),
	datab => \inst1|debounc1|divisor|count\(6),
	datac => \inst1|debounc1|divisor|count\(7),
	datad => \inst1|debounc1|divisor|count\(5),
	combout => \inst4|deb|divisor|op_1~1_combout\);

-- Location: LCCOMB_X13_Y9_N28
\inst4|deb|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~2_combout\ = (\inst4|deb|divisor|op_1~0_combout\ & (((\inst4|deb|divisor|op_1~1_combout\) # (!\inst1|debounc1|divisor|count\(10))) # (!\inst1|debounc1|divisor|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(9),
	datab => \inst1|debounc1|divisor|count\(10),
	datac => \inst4|deb|divisor|op_1~0_combout\,
	datad => \inst4|deb|divisor|op_1~1_combout\,
	combout => \inst4|deb|divisor|op_1~2_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst1|debounc1|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|_~0_combout\ = (!\inst1|debounc1|divisor|count\(1) & (((\inst4|deb|divisor|op_1~2_combout\) # (!\inst1|debounc1|divisor|count\(15))) # (!\inst1|debounc1|divisor|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(16),
	datab => \inst1|debounc1|divisor|count\(15),
	datac => \inst1|debounc1|divisor|count\(1),
	datad => \inst4|deb|divisor|op_1~2_combout\,
	combout => \inst1|debounc1|divisor|_~0_combout\);

-- Location: FF_X13_Y9_N17
\inst1|debounc1|divisor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(1));

-- Location: LCCOMB_X14_Y9_N2
\inst1|debounc1|divisor|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[2]~15_combout\ = (\inst1|debounc1|divisor|count\(1) & (\inst1|debounc1|divisor|count\(2) $ (VCC))) # (!\inst1|debounc1|divisor|count\(1) & (\inst1|debounc1|divisor|count\(2) & VCC))
-- \inst1|debounc1|divisor|count[2]~16\ = CARRY((\inst1|debounc1|divisor|count\(1) & \inst1|debounc1|divisor|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(1),
	datab => \inst1|debounc1|divisor|count\(2),
	datad => VCC,
	combout => \inst1|debounc1|divisor|count[2]~15_combout\,
	cout => \inst1|debounc1|divisor|count[2]~16\);

-- Location: FF_X14_Y9_N3
\inst1|debounc1|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[2]~15_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(2));

-- Location: LCCOMB_X14_Y9_N4
\inst1|debounc1|divisor|count[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[3]~17_combout\ = (\inst1|debounc1|divisor|count\(3) & (!\inst1|debounc1|divisor|count[2]~16\)) # (!\inst1|debounc1|divisor|count\(3) & ((\inst1|debounc1|divisor|count[2]~16\) # (GND)))
-- \inst1|debounc1|divisor|count[3]~18\ = CARRY((!\inst1|debounc1|divisor|count[2]~16\) # (!\inst1|debounc1|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(3),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[2]~16\,
	combout => \inst1|debounc1|divisor|count[3]~17_combout\,
	cout => \inst1|debounc1|divisor|count[3]~18\);

-- Location: FF_X14_Y9_N5
\inst1|debounc1|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[3]~17_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(3));

-- Location: LCCOMB_X14_Y9_N6
\inst1|debounc1|divisor|count[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[4]~19_combout\ = (\inst1|debounc1|divisor|count\(4) & (\inst1|debounc1|divisor|count[3]~18\ $ (GND))) # (!\inst1|debounc1|divisor|count\(4) & (!\inst1|debounc1|divisor|count[3]~18\ & VCC))
-- \inst1|debounc1|divisor|count[4]~20\ = CARRY((\inst1|debounc1|divisor|count\(4) & !\inst1|debounc1|divisor|count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(4),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[3]~18\,
	combout => \inst1|debounc1|divisor|count[4]~19_combout\,
	cout => \inst1|debounc1|divisor|count[4]~20\);

-- Location: FF_X14_Y9_N7
\inst1|debounc1|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[4]~19_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(4));

-- Location: LCCOMB_X14_Y9_N8
\inst1|debounc1|divisor|count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[5]~21_combout\ = (\inst1|debounc1|divisor|count\(5) & (!\inst1|debounc1|divisor|count[4]~20\)) # (!\inst1|debounc1|divisor|count\(5) & ((\inst1|debounc1|divisor|count[4]~20\) # (GND)))
-- \inst1|debounc1|divisor|count[5]~22\ = CARRY((!\inst1|debounc1|divisor|count[4]~20\) # (!\inst1|debounc1|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(5),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[4]~20\,
	combout => \inst1|debounc1|divisor|count[5]~21_combout\,
	cout => \inst1|debounc1|divisor|count[5]~22\);

-- Location: FF_X14_Y9_N9
\inst1|debounc1|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[5]~21_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(5));

-- Location: LCCOMB_X14_Y9_N10
\inst1|debounc1|divisor|count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[6]~23_combout\ = (\inst1|debounc1|divisor|count\(6) & (\inst1|debounc1|divisor|count[5]~22\ $ (GND))) # (!\inst1|debounc1|divisor|count\(6) & (!\inst1|debounc1|divisor|count[5]~22\ & VCC))
-- \inst1|debounc1|divisor|count[6]~24\ = CARRY((\inst1|debounc1|divisor|count\(6) & !\inst1|debounc1|divisor|count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(6),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[5]~22\,
	combout => \inst1|debounc1|divisor|count[6]~23_combout\,
	cout => \inst1|debounc1|divisor|count[6]~24\);

-- Location: FF_X14_Y9_N11
\inst1|debounc1|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[6]~23_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(6));

-- Location: LCCOMB_X14_Y9_N12
\inst1|debounc1|divisor|count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[7]~25_combout\ = (\inst1|debounc1|divisor|count\(7) & (!\inst1|debounc1|divisor|count[6]~24\)) # (!\inst1|debounc1|divisor|count\(7) & ((\inst1|debounc1|divisor|count[6]~24\) # (GND)))
-- \inst1|debounc1|divisor|count[7]~26\ = CARRY((!\inst1|debounc1|divisor|count[6]~24\) # (!\inst1|debounc1|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(7),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[6]~24\,
	combout => \inst1|debounc1|divisor|count[7]~25_combout\,
	cout => \inst1|debounc1|divisor|count[7]~26\);

-- Location: FF_X14_Y9_N13
\inst1|debounc1|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[7]~25_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(7));

-- Location: LCCOMB_X14_Y9_N14
\inst1|debounc1|divisor|count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[8]~27_combout\ = (\inst1|debounc1|divisor|count\(8) & (\inst1|debounc1|divisor|count[7]~26\ $ (GND))) # (!\inst1|debounc1|divisor|count\(8) & (!\inst1|debounc1|divisor|count[7]~26\ & VCC))
-- \inst1|debounc1|divisor|count[8]~28\ = CARRY((\inst1|debounc1|divisor|count\(8) & !\inst1|debounc1|divisor|count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(8),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[7]~26\,
	combout => \inst1|debounc1|divisor|count[8]~27_combout\,
	cout => \inst1|debounc1|divisor|count[8]~28\);

-- Location: FF_X14_Y9_N15
\inst1|debounc1|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[8]~27_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(8));

-- Location: LCCOMB_X14_Y9_N16
\inst1|debounc1|divisor|count[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[9]~29_combout\ = (\inst1|debounc1|divisor|count\(9) & (!\inst1|debounc1|divisor|count[8]~28\)) # (!\inst1|debounc1|divisor|count\(9) & ((\inst1|debounc1|divisor|count[8]~28\) # (GND)))
-- \inst1|debounc1|divisor|count[9]~30\ = CARRY((!\inst1|debounc1|divisor|count[8]~28\) # (!\inst1|debounc1|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(9),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[8]~28\,
	combout => \inst1|debounc1|divisor|count[9]~29_combout\,
	cout => \inst1|debounc1|divisor|count[9]~30\);

-- Location: FF_X14_Y9_N17
\inst1|debounc1|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[9]~29_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(9));

-- Location: LCCOMB_X14_Y9_N18
\inst1|debounc1|divisor|count[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[10]~31_combout\ = (\inst1|debounc1|divisor|count\(10) & (\inst1|debounc1|divisor|count[9]~30\ $ (GND))) # (!\inst1|debounc1|divisor|count\(10) & (!\inst1|debounc1|divisor|count[9]~30\ & VCC))
-- \inst1|debounc1|divisor|count[10]~32\ = CARRY((\inst1|debounc1|divisor|count\(10) & !\inst1|debounc1|divisor|count[9]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(10),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[9]~30\,
	combout => \inst1|debounc1|divisor|count[10]~31_combout\,
	cout => \inst1|debounc1|divisor|count[10]~32\);

-- Location: FF_X14_Y9_N19
\inst1|debounc1|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[10]~31_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(10));

-- Location: LCCOMB_X14_Y9_N20
\inst1|debounc1|divisor|count[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[11]~33_combout\ = (\inst1|debounc1|divisor|count\(11) & (!\inst1|debounc1|divisor|count[10]~32\)) # (!\inst1|debounc1|divisor|count\(11) & ((\inst1|debounc1|divisor|count[10]~32\) # (GND)))
-- \inst1|debounc1|divisor|count[11]~34\ = CARRY((!\inst1|debounc1|divisor|count[10]~32\) # (!\inst1|debounc1|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(11),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[10]~32\,
	combout => \inst1|debounc1|divisor|count[11]~33_combout\,
	cout => \inst1|debounc1|divisor|count[11]~34\);

-- Location: FF_X14_Y9_N21
\inst1|debounc1|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[11]~33_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(11));

-- Location: LCCOMB_X14_Y9_N22
\inst1|debounc1|divisor|count[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[12]~35_combout\ = (\inst1|debounc1|divisor|count\(12) & (\inst1|debounc1|divisor|count[11]~34\ $ (GND))) # (!\inst1|debounc1|divisor|count\(12) & (!\inst1|debounc1|divisor|count[11]~34\ & VCC))
-- \inst1|debounc1|divisor|count[12]~36\ = CARRY((\inst1|debounc1|divisor|count\(12) & !\inst1|debounc1|divisor|count[11]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(12),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[11]~34\,
	combout => \inst1|debounc1|divisor|count[12]~35_combout\,
	cout => \inst1|debounc1|divisor|count[12]~36\);

-- Location: FF_X14_Y9_N23
\inst1|debounc1|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[12]~35_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(12));

-- Location: LCCOMB_X14_Y9_N24
\inst1|debounc1|divisor|count[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[13]~37_combout\ = (\inst1|debounc1|divisor|count\(13) & (!\inst1|debounc1|divisor|count[12]~36\)) # (!\inst1|debounc1|divisor|count\(13) & ((\inst1|debounc1|divisor|count[12]~36\) # (GND)))
-- \inst1|debounc1|divisor|count[13]~38\ = CARRY((!\inst1|debounc1|divisor|count[12]~36\) # (!\inst1|debounc1|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(13),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[12]~36\,
	combout => \inst1|debounc1|divisor|count[13]~37_combout\,
	cout => \inst1|debounc1|divisor|count[13]~38\);

-- Location: FF_X14_Y9_N25
\inst1|debounc1|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[13]~37_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(13));

-- Location: LCCOMB_X14_Y9_N26
\inst1|debounc1|divisor|count[14]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|count[14]~39_combout\ = (\inst1|debounc1|divisor|count\(14) & (\inst1|debounc1|divisor|count[13]~38\ $ (GND))) # (!\inst1|debounc1|divisor|count\(14) & (!\inst1|debounc1|divisor|count[13]~38\ & VCC))
-- \inst1|debounc1|divisor|count[14]~40\ = CARRY((\inst1|debounc1|divisor|count\(14) & !\inst1|debounc1|divisor|count[13]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|count\(14),
	datad => VCC,
	cin => \inst1|debounc1|divisor|count[13]~38\,
	combout => \inst1|debounc1|divisor|count[14]~39_combout\,
	cout => \inst1|debounc1|divisor|count[14]~40\);

-- Location: FF_X14_Y9_N27
\inst1|debounc1|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[14]~39_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(14));

-- Location: FF_X14_Y9_N29
\inst1|debounc1|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|count[15]~41_combout\,
	sclr => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|count\(15));

-- Location: LCCOMB_X13_Y9_N22
\inst4|deb|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|divisor|op_1~3_combout\ = (\inst1|debounc1|divisor|count\(15) & (\inst1|debounc1|divisor|count\(16) & !\inst4|deb|divisor|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|debounc1|divisor|count\(15),
	datac => \inst1|debounc1|divisor|count\(16),
	datad => \inst4|deb|divisor|op_1~2_combout\,
	combout => \inst4|deb|divisor|op_1~3_combout\);

-- Location: FF_X12_Y9_N13
\inst4|deb|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|deb|divisor|alt~feeder_combout\,
	ena => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|divisor|alt~q\);

-- Location: LCCOMB_X12_Y9_N10
\inst4|deb|ff[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[2]~0_combout\ = LCELL(\inst4|deb|divisor|alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|deb|divisor|alt~q\,
	combout => \inst4|deb|ff[2]~0_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst1|debounc1|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|alt~1_combout\ = !\inst1|debounc1|divisor|alt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|alt~q\,
	combout => \inst1|debounc1|divisor|alt~1_combout\);

-- Location: LCCOMB_X13_Y9_N24
\inst1|debounc1|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|divisor|alt~feeder_combout\ = \inst1|debounc1|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|debounc1|divisor|alt~1_combout\,
	combout => \inst1|debounc1|divisor|alt~feeder_combout\);

-- Location: FF_X13_Y9_N25
\inst1|debounc1|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|debounc1|divisor|alt~feeder_combout\,
	ena => \inst4|deb|divisor|op_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|divisor|alt~q\);

-- Location: LCCOMB_X16_Y9_N24
\inst1|debounc1|ff[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[2]~0_combout\ = LCELL(\inst1|debounc1|divisor|alt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|debounc1|divisor|alt~q\,
	combout => \inst1|debounc1|ff[2]~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LCCOMB_X16_Y9_N20
\inst1|debounc1|ff[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[0]~1_combout\ = !\key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[1]~input_o\,
	combout => \inst1|debounc1|ff[0]~1_combout\);

-- Location: FF_X16_Y9_N21
\inst1|debounc1|ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|debounc1|divisor|alt~q\,
	d => \inst1|debounc1|ff[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|ff\(0));

-- Location: LCCOMB_X16_Y9_N28
\inst1|debounc1|ff[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|debounc1|ff[1]~feeder_combout\ = \inst1|debounc1|ff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|debounc1|ff\(0),
	combout => \inst1|debounc1|ff[1]~feeder_combout\);

-- Location: FF_X16_Y9_N29
\inst1|debounc1|ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|debounc1|divisor|alt~q\,
	d => \inst1|debounc1|ff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|ff\(1));

-- Location: FF_X16_Y9_N25
\inst1|debounc1|ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|debounc1|ff[2]~0_combout\,
	asdata => \inst1|debounc1|ff\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|debounc1|ff\(2));

-- Location: LCCOMB_X12_Y9_N6
\inst4|deb|ff[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[0]~feeder_combout\ = \inst1|debounc1|ff\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|debounc1|ff\(2),
	combout => \inst4|deb|ff[0]~feeder_combout\);

-- Location: FF_X12_Y9_N7
\inst4|deb|ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|deb|divisor|alt~q\,
	d => \inst4|deb|ff[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|ff\(0));

-- Location: LCCOMB_X12_Y9_N22
\inst4|deb|ff[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|deb|ff[1]~feeder_combout\ = \inst4|deb|ff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|deb|ff\(0),
	combout => \inst4|deb|ff[1]~feeder_combout\);

-- Location: FF_X12_Y9_N23
\inst4|deb|ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|deb|divisor|alt~q\,
	d => \inst4|deb|ff[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|ff\(1));

-- Location: FF_X7_Y9_N1
\inst4|deb|ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|deb|ff[2]~0_combout\,
	asdata => \inst4|deb|ff\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|deb|ff\(2));

-- Location: LCCOMB_X5_Y5_N18
\inst4|divisor|count[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[24]~70_combout\ = (\inst4|divisor|count\(24) & (\inst4|divisor|count[23]~69\ $ (GND))) # (!\inst4|divisor|count\(24) & (!\inst4|divisor|count[23]~69\ & VCC))
-- \inst4|divisor|count[24]~71\ = CARRY((\inst4|divisor|count\(24) & !\inst4|divisor|count[23]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(24),
	datad => VCC,
	cin => \inst4|divisor|count[23]~69\,
	combout => \inst4|divisor|count[24]~70_combout\,
	cout => \inst4|divisor|count[24]~71\);

-- Location: LCCOMB_X5_Y5_N20
\inst4|divisor|count[25]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[25]~72_combout\ = (\inst4|divisor|count\(25) & (!\inst4|divisor|count[24]~71\)) # (!\inst4|divisor|count\(25) & ((\inst4|divisor|count[24]~71\) # (GND)))
-- \inst4|divisor|count[25]~73\ = CARRY((!\inst4|divisor|count[24]~71\) # (!\inst4|divisor|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(25),
	datad => VCC,
	cin => \inst4|divisor|count[24]~71\,
	combout => \inst4|divisor|count[25]~72_combout\,
	cout => \inst4|divisor|count[25]~73\);

-- Location: LCCOMB_X4_Y5_N0
\inst4|divisor|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~0_combout\ = ((!\inst4|divisor|count\(23)) # (!\inst4|divisor|count\(21))) # (!\inst4|divisor|count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(22),
	datac => \inst4|divisor|count\(21),
	datad => \inst4|divisor|count\(23),
	combout => \inst4|divisor|op_1~0_combout\);

-- Location: LCCOMB_X5_Y5_N30
\inst4|divisor|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~1_combout\ = (!\inst4|divisor|count\(10) & (((!\inst4|divisor|count\(7) & !\inst4|divisor|count\(8))) # (!\inst4|divisor|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(9),
	datab => \inst4|divisor|count\(10),
	datac => \inst4|divisor|count\(7),
	datad => \inst4|divisor|count\(8),
	combout => \inst4|divisor|op_1~1_combout\);

-- Location: LCCOMB_X5_Y5_N28
\inst4|divisor|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~2_combout\ = (((!\inst4|divisor|count\(11) & \inst4|divisor|op_1~1_combout\)) # (!\inst4|divisor|count\(12))) # (!\inst4|divisor|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(11),
	datab => \inst4|divisor|count\(13),
	datac => \inst4|divisor|op_1~1_combout\,
	datad => \inst4|divisor|count\(12),
	combout => \inst4|divisor|op_1~2_combout\);

-- Location: LCCOMB_X5_Y5_N26
\inst4|divisor|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~3_combout\ = (!\inst4|divisor|count\(16) & (((!\inst4|divisor|count\(14) & \inst4|divisor|op_1~2_combout\)) # (!\inst4|divisor|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(14),
	datab => \inst4|divisor|count\(16),
	datac => \inst4|divisor|count\(15),
	datad => \inst4|divisor|op_1~2_combout\,
	combout => \inst4|divisor|op_1~3_combout\);

-- Location: LCCOMB_X5_Y6_N0
\inst4|divisor|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~4_combout\ = ((\inst4|divisor|op_1~3_combout\) # (!\inst4|divisor|count\(18))) # (!\inst4|divisor|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(17),
	datac => \inst4|divisor|count\(18),
	datad => \inst4|divisor|op_1~3_combout\,
	combout => \inst4|divisor|op_1~4_combout\);

-- Location: LCCOMB_X5_Y6_N2
\inst4|divisor|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~5_combout\ = (\inst4|divisor|op_1~0_combout\) # ((!\inst4|divisor|count\(19) & (!\inst4|divisor|count\(20) & \inst4|divisor|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~0_combout\,
	datab => \inst4|divisor|count\(19),
	datac => \inst4|divisor|count\(20),
	datad => \inst4|divisor|op_1~4_combout\,
	combout => \inst4|divisor|op_1~5_combout\);

-- Location: LCCOMB_X5_Y6_N4
\inst4|divisor|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~7_combout\ = (!\inst4|divisor|op_1~6_combout\ & ((\inst4|divisor|count\(24)) # (!\inst4|divisor|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|op_1~6_combout\,
	datac => \inst4|divisor|count\(24),
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|op_1~7_combout\);

-- Location: FF_X5_Y5_N21
\inst4|divisor|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[25]~72_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(25));

-- Location: LCCOMB_X5_Y5_N22
\inst4|divisor|count[26]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[26]~74_combout\ = (\inst4|divisor|count\(26) & (\inst4|divisor|count[25]~73\ $ (GND))) # (!\inst4|divisor|count\(26) & (!\inst4|divisor|count[25]~73\ & VCC))
-- \inst4|divisor|count[26]~75\ = CARRY((\inst4|divisor|count\(26) & !\inst4|divisor|count[25]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(26),
	datad => VCC,
	cin => \inst4|divisor|count[25]~73\,
	combout => \inst4|divisor|count[26]~74_combout\,
	cout => \inst4|divisor|count[26]~75\);

-- Location: FF_X5_Y5_N23
\inst4|divisor|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[26]~74_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(26));

-- Location: LCCOMB_X5_Y5_N24
\inst4|divisor|count[27]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[27]~76_combout\ = \inst4|divisor|count\(27) $ (\inst4|divisor|count[26]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(27),
	cin => \inst4|divisor|count[26]~75\,
	combout => \inst4|divisor|count[27]~76_combout\);

-- Location: FF_X5_Y5_N25
\inst4|divisor|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[27]~76_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(27));

-- Location: LCCOMB_X6_Y5_N0
\inst4|divisor|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|op_1~6_combout\ = ((!\inst4|divisor|count\(25)) # (!\inst4|divisor|count\(26))) # (!\inst4|divisor|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(27),
	datac => \inst4|divisor|count\(26),
	datad => \inst4|divisor|count\(25),
	combout => \inst4|divisor|op_1~6_combout\);

-- Location: LCCOMB_X6_Y6_N28
\inst4|divisor|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|_~0_combout\ = (!\inst4|divisor|count\(1) & ((\inst4|divisor|op_1~6_combout\) # ((!\inst4|divisor|count\(24) & \inst4|divisor|op_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|op_1~6_combout\,
	datab => \inst4|divisor|count\(24),
	datac => \inst4|divisor|count\(1),
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|_~0_combout\);

-- Location: FF_X6_Y6_N29
\inst4|divisor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(1));

-- Location: LCCOMB_X5_Y6_N6
\inst4|divisor|count[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[2]~26_combout\ = (\inst4|divisor|count\(2) & (\inst4|divisor|count\(1) $ (VCC))) # (!\inst4|divisor|count\(2) & (\inst4|divisor|count\(1) & VCC))
-- \inst4|divisor|count[2]~27\ = CARRY((\inst4|divisor|count\(2) & \inst4|divisor|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(2),
	datab => \inst4|divisor|count\(1),
	datad => VCC,
	combout => \inst4|divisor|count[2]~26_combout\,
	cout => \inst4|divisor|count[2]~27\);

-- Location: FF_X5_Y6_N7
\inst4|divisor|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[2]~26_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(2));

-- Location: LCCOMB_X5_Y6_N8
\inst4|divisor|count[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[3]~28_combout\ = (\inst4|divisor|count\(3) & (!\inst4|divisor|count[2]~27\)) # (!\inst4|divisor|count\(3) & ((\inst4|divisor|count[2]~27\) # (GND)))
-- \inst4|divisor|count[3]~29\ = CARRY((!\inst4|divisor|count[2]~27\) # (!\inst4|divisor|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(3),
	datad => VCC,
	cin => \inst4|divisor|count[2]~27\,
	combout => \inst4|divisor|count[3]~28_combout\,
	cout => \inst4|divisor|count[3]~29\);

-- Location: FF_X5_Y6_N9
\inst4|divisor|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[3]~28_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(3));

-- Location: LCCOMB_X5_Y6_N10
\inst4|divisor|count[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[4]~30_combout\ = (\inst4|divisor|count\(4) & (\inst4|divisor|count[3]~29\ $ (GND))) # (!\inst4|divisor|count\(4) & (!\inst4|divisor|count[3]~29\ & VCC))
-- \inst4|divisor|count[4]~31\ = CARRY((\inst4|divisor|count\(4) & !\inst4|divisor|count[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(4),
	datad => VCC,
	cin => \inst4|divisor|count[3]~29\,
	combout => \inst4|divisor|count[4]~30_combout\,
	cout => \inst4|divisor|count[4]~31\);

-- Location: FF_X5_Y6_N11
\inst4|divisor|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[4]~30_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(4));

-- Location: LCCOMB_X5_Y6_N12
\inst4|divisor|count[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[5]~32_combout\ = (\inst4|divisor|count\(5) & (!\inst4|divisor|count[4]~31\)) # (!\inst4|divisor|count\(5) & ((\inst4|divisor|count[4]~31\) # (GND)))
-- \inst4|divisor|count[5]~33\ = CARRY((!\inst4|divisor|count[4]~31\) # (!\inst4|divisor|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(5),
	datad => VCC,
	cin => \inst4|divisor|count[4]~31\,
	combout => \inst4|divisor|count[5]~32_combout\,
	cout => \inst4|divisor|count[5]~33\);

-- Location: FF_X5_Y6_N13
\inst4|divisor|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[5]~32_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(5));

-- Location: LCCOMB_X5_Y6_N14
\inst4|divisor|count[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[6]~34_combout\ = (\inst4|divisor|count\(6) & (\inst4|divisor|count[5]~33\ $ (GND))) # (!\inst4|divisor|count\(6) & (!\inst4|divisor|count[5]~33\ & VCC))
-- \inst4|divisor|count[6]~35\ = CARRY((\inst4|divisor|count\(6) & !\inst4|divisor|count[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(6),
	datad => VCC,
	cin => \inst4|divisor|count[5]~33\,
	combout => \inst4|divisor|count[6]~34_combout\,
	cout => \inst4|divisor|count[6]~35\);

-- Location: FF_X5_Y6_N15
\inst4|divisor|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[6]~34_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(6));

-- Location: LCCOMB_X5_Y6_N16
\inst4|divisor|count[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[7]~36_combout\ = (\inst4|divisor|count\(7) & (!\inst4|divisor|count[6]~35\)) # (!\inst4|divisor|count\(7) & ((\inst4|divisor|count[6]~35\) # (GND)))
-- \inst4|divisor|count[7]~37\ = CARRY((!\inst4|divisor|count[6]~35\) # (!\inst4|divisor|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(7),
	datad => VCC,
	cin => \inst4|divisor|count[6]~35\,
	combout => \inst4|divisor|count[7]~36_combout\,
	cout => \inst4|divisor|count[7]~37\);

-- Location: FF_X5_Y6_N17
\inst4|divisor|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[7]~36_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(7));

-- Location: LCCOMB_X5_Y6_N18
\inst4|divisor|count[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[8]~38_combout\ = (\inst4|divisor|count\(8) & (\inst4|divisor|count[7]~37\ $ (GND))) # (!\inst4|divisor|count\(8) & (!\inst4|divisor|count[7]~37\ & VCC))
-- \inst4|divisor|count[8]~39\ = CARRY((\inst4|divisor|count\(8) & !\inst4|divisor|count[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(8),
	datad => VCC,
	cin => \inst4|divisor|count[7]~37\,
	combout => \inst4|divisor|count[8]~38_combout\,
	cout => \inst4|divisor|count[8]~39\);

-- Location: FF_X5_Y6_N19
\inst4|divisor|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[8]~38_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(8));

-- Location: LCCOMB_X5_Y6_N20
\inst4|divisor|count[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[9]~40_combout\ = (\inst4|divisor|count\(9) & (!\inst4|divisor|count[8]~39\)) # (!\inst4|divisor|count\(9) & ((\inst4|divisor|count[8]~39\) # (GND)))
-- \inst4|divisor|count[9]~41\ = CARRY((!\inst4|divisor|count[8]~39\) # (!\inst4|divisor|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(9),
	datad => VCC,
	cin => \inst4|divisor|count[8]~39\,
	combout => \inst4|divisor|count[9]~40_combout\,
	cout => \inst4|divisor|count[9]~41\);

-- Location: FF_X5_Y6_N21
\inst4|divisor|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[9]~40_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(9));

-- Location: LCCOMB_X5_Y6_N22
\inst4|divisor|count[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[10]~42_combout\ = (\inst4|divisor|count\(10) & (\inst4|divisor|count[9]~41\ $ (GND))) # (!\inst4|divisor|count\(10) & (!\inst4|divisor|count[9]~41\ & VCC))
-- \inst4|divisor|count[10]~43\ = CARRY((\inst4|divisor|count\(10) & !\inst4|divisor|count[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(10),
	datad => VCC,
	cin => \inst4|divisor|count[9]~41\,
	combout => \inst4|divisor|count[10]~42_combout\,
	cout => \inst4|divisor|count[10]~43\);

-- Location: FF_X5_Y6_N23
\inst4|divisor|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[10]~42_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(10));

-- Location: LCCOMB_X5_Y6_N24
\inst4|divisor|count[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[11]~44_combout\ = (\inst4|divisor|count\(11) & (!\inst4|divisor|count[10]~43\)) # (!\inst4|divisor|count\(11) & ((\inst4|divisor|count[10]~43\) # (GND)))
-- \inst4|divisor|count[11]~45\ = CARRY((!\inst4|divisor|count[10]~43\) # (!\inst4|divisor|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(11),
	datad => VCC,
	cin => \inst4|divisor|count[10]~43\,
	combout => \inst4|divisor|count[11]~44_combout\,
	cout => \inst4|divisor|count[11]~45\);

-- Location: FF_X5_Y6_N25
\inst4|divisor|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[11]~44_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(11));

-- Location: LCCOMB_X5_Y6_N26
\inst4|divisor|count[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[12]~46_combout\ = (\inst4|divisor|count\(12) & (\inst4|divisor|count[11]~45\ $ (GND))) # (!\inst4|divisor|count\(12) & (!\inst4|divisor|count[11]~45\ & VCC))
-- \inst4|divisor|count[12]~47\ = CARRY((\inst4|divisor|count\(12) & !\inst4|divisor|count[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(12),
	datad => VCC,
	cin => \inst4|divisor|count[11]~45\,
	combout => \inst4|divisor|count[12]~46_combout\,
	cout => \inst4|divisor|count[12]~47\);

-- Location: FF_X5_Y6_N27
\inst4|divisor|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[12]~46_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(12));

-- Location: LCCOMB_X5_Y6_N28
\inst4|divisor|count[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[13]~48_combout\ = (\inst4|divisor|count\(13) & (!\inst4|divisor|count[12]~47\)) # (!\inst4|divisor|count\(13) & ((\inst4|divisor|count[12]~47\) # (GND)))
-- \inst4|divisor|count[13]~49\ = CARRY((!\inst4|divisor|count[12]~47\) # (!\inst4|divisor|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(13),
	datad => VCC,
	cin => \inst4|divisor|count[12]~47\,
	combout => \inst4|divisor|count[13]~48_combout\,
	cout => \inst4|divisor|count[13]~49\);

-- Location: FF_X5_Y6_N29
\inst4|divisor|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[13]~48_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(13));

-- Location: LCCOMB_X5_Y6_N30
\inst4|divisor|count[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[14]~50_combout\ = (\inst4|divisor|count\(14) & (\inst4|divisor|count[13]~49\ $ (GND))) # (!\inst4|divisor|count\(14) & (!\inst4|divisor|count[13]~49\ & VCC))
-- \inst4|divisor|count[14]~51\ = CARRY((\inst4|divisor|count\(14) & !\inst4|divisor|count[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(14),
	datad => VCC,
	cin => \inst4|divisor|count[13]~49\,
	combout => \inst4|divisor|count[14]~50_combout\,
	cout => \inst4|divisor|count[14]~51\);

-- Location: FF_X5_Y6_N31
\inst4|divisor|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[14]~50_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(14));

-- Location: LCCOMB_X5_Y5_N0
\inst4|divisor|count[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[15]~52_combout\ = (\inst4|divisor|count\(15) & (!\inst4|divisor|count[14]~51\)) # (!\inst4|divisor|count\(15) & ((\inst4|divisor|count[14]~51\) # (GND)))
-- \inst4|divisor|count[15]~53\ = CARRY((!\inst4|divisor|count[14]~51\) # (!\inst4|divisor|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(15),
	datad => VCC,
	cin => \inst4|divisor|count[14]~51\,
	combout => \inst4|divisor|count[15]~52_combout\,
	cout => \inst4|divisor|count[15]~53\);

-- Location: FF_X5_Y5_N1
\inst4|divisor|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[15]~52_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(15));

-- Location: LCCOMB_X5_Y5_N2
\inst4|divisor|count[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[16]~54_combout\ = (\inst4|divisor|count\(16) & (\inst4|divisor|count[15]~53\ $ (GND))) # (!\inst4|divisor|count\(16) & (!\inst4|divisor|count[15]~53\ & VCC))
-- \inst4|divisor|count[16]~55\ = CARRY((\inst4|divisor|count\(16) & !\inst4|divisor|count[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(16),
	datad => VCC,
	cin => \inst4|divisor|count[15]~53\,
	combout => \inst4|divisor|count[16]~54_combout\,
	cout => \inst4|divisor|count[16]~55\);

-- Location: FF_X5_Y5_N3
\inst4|divisor|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[16]~54_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(16));

-- Location: LCCOMB_X5_Y5_N4
\inst4|divisor|count[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[17]~56_combout\ = (\inst4|divisor|count\(17) & (!\inst4|divisor|count[16]~55\)) # (!\inst4|divisor|count\(17) & ((\inst4|divisor|count[16]~55\) # (GND)))
-- \inst4|divisor|count[17]~57\ = CARRY((!\inst4|divisor|count[16]~55\) # (!\inst4|divisor|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(17),
	datad => VCC,
	cin => \inst4|divisor|count[16]~55\,
	combout => \inst4|divisor|count[17]~56_combout\,
	cout => \inst4|divisor|count[17]~57\);

-- Location: FF_X5_Y5_N5
\inst4|divisor|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[17]~56_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(17));

-- Location: LCCOMB_X5_Y5_N6
\inst4|divisor|count[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[18]~58_combout\ = (\inst4|divisor|count\(18) & (\inst4|divisor|count[17]~57\ $ (GND))) # (!\inst4|divisor|count\(18) & (!\inst4|divisor|count[17]~57\ & VCC))
-- \inst4|divisor|count[18]~59\ = CARRY((\inst4|divisor|count\(18) & !\inst4|divisor|count[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(18),
	datad => VCC,
	cin => \inst4|divisor|count[17]~57\,
	combout => \inst4|divisor|count[18]~58_combout\,
	cout => \inst4|divisor|count[18]~59\);

-- Location: FF_X5_Y5_N7
\inst4|divisor|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[18]~58_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(18));

-- Location: LCCOMB_X5_Y5_N8
\inst4|divisor|count[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[19]~60_combout\ = (\inst4|divisor|count\(19) & (!\inst4|divisor|count[18]~59\)) # (!\inst4|divisor|count\(19) & ((\inst4|divisor|count[18]~59\) # (GND)))
-- \inst4|divisor|count[19]~61\ = CARRY((!\inst4|divisor|count[18]~59\) # (!\inst4|divisor|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(19),
	datad => VCC,
	cin => \inst4|divisor|count[18]~59\,
	combout => \inst4|divisor|count[19]~60_combout\,
	cout => \inst4|divisor|count[19]~61\);

-- Location: FF_X5_Y5_N9
\inst4|divisor|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[19]~60_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(19));

-- Location: LCCOMB_X5_Y5_N10
\inst4|divisor|count[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[20]~62_combout\ = (\inst4|divisor|count\(20) & (\inst4|divisor|count[19]~61\ $ (GND))) # (!\inst4|divisor|count\(20) & (!\inst4|divisor|count[19]~61\ & VCC))
-- \inst4|divisor|count[20]~63\ = CARRY((\inst4|divisor|count\(20) & !\inst4|divisor|count[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(20),
	datad => VCC,
	cin => \inst4|divisor|count[19]~61\,
	combout => \inst4|divisor|count[20]~62_combout\,
	cout => \inst4|divisor|count[20]~63\);

-- Location: FF_X5_Y5_N11
\inst4|divisor|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[20]~62_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(20));

-- Location: LCCOMB_X5_Y5_N12
\inst4|divisor|count[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[21]~64_combout\ = (\inst4|divisor|count\(21) & (!\inst4|divisor|count[20]~63\)) # (!\inst4|divisor|count\(21) & ((\inst4|divisor|count[20]~63\) # (GND)))
-- \inst4|divisor|count[21]~65\ = CARRY((!\inst4|divisor|count[20]~63\) # (!\inst4|divisor|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(21),
	datad => VCC,
	cin => \inst4|divisor|count[20]~63\,
	combout => \inst4|divisor|count[21]~64_combout\,
	cout => \inst4|divisor|count[21]~65\);

-- Location: FF_X5_Y5_N13
\inst4|divisor|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[21]~64_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(21));

-- Location: LCCOMB_X5_Y5_N14
\inst4|divisor|count[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[22]~66_combout\ = (\inst4|divisor|count\(22) & (\inst4|divisor|count[21]~65\ $ (GND))) # (!\inst4|divisor|count\(22) & (!\inst4|divisor|count[21]~65\ & VCC))
-- \inst4|divisor|count[22]~67\ = CARRY((\inst4|divisor|count\(22) & !\inst4|divisor|count[21]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(22),
	datad => VCC,
	cin => \inst4|divisor|count[21]~65\,
	combout => \inst4|divisor|count[22]~66_combout\,
	cout => \inst4|divisor|count[22]~67\);

-- Location: FF_X5_Y5_N15
\inst4|divisor|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[22]~66_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(22));

-- Location: LCCOMB_X5_Y5_N16
\inst4|divisor|count[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|count[23]~68_combout\ = (\inst4|divisor|count\(23) & (!\inst4|divisor|count[22]~67\)) # (!\inst4|divisor|count\(23) & ((\inst4|divisor|count[22]~67\) # (GND)))
-- \inst4|divisor|count[23]~69\ = CARRY((!\inst4|divisor|count[22]~67\) # (!\inst4|divisor|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|count\(23),
	datad => VCC,
	cin => \inst4|divisor|count[22]~67\,
	combout => \inst4|divisor|count[23]~68_combout\,
	cout => \inst4|divisor|count[23]~69\);

-- Location: FF_X5_Y5_N17
\inst4|divisor|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[23]~68_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(23));

-- Location: FF_X5_Y5_N19
\inst4|divisor|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|count[24]~70_combout\,
	sclr => \inst4|divisor|op_1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|count\(24));

-- Location: LCCOMB_X6_Y6_N18
\inst4|divisor|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~1_combout\ = \inst4|divisor|alt~q\ $ (((!\inst4|divisor|op_1~6_combout\ & ((\inst4|divisor|count\(24)) # (!\inst4|divisor|op_1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|divisor|count\(24),
	datab => \inst4|divisor|alt~q\,
	datac => \inst4|divisor|op_1~6_combout\,
	datad => \inst4|divisor|op_1~5_combout\,
	combout => \inst4|divisor|alt~1_combout\);

-- Location: LCCOMB_X6_Y6_N24
\inst4|divisor|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|divisor|alt~feeder_combout\ = \inst4|divisor|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|divisor|alt~1_combout\,
	combout => \inst4|divisor|alt~feeder_combout\);

-- Location: FF_X6_Y6_N25
\inst4|divisor|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|divisor|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|divisor|alt~q\);

-- Location: LCCOMB_X7_Y9_N0
\inst4|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp~0_combout\ = LCELL((\inst4|temp~q\ & ((\inst4|divisor|alt~q\))) # (!\inst4|temp~q\ & (!\inst4|deb|ff\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datac => \inst4|deb|ff\(2),
	datad => \inst4|divisor|alt~q\,
	combout => \inst4|temp~0_combout\);

-- Location: LCCOMB_X7_Y10_N30
\inst4|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|temp~2_combout\ = !\inst4|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|temp~q\,
	combout => \inst4|temp~2_combout\);

-- Location: FF_X7_Y10_N31
\inst4|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|temp~0_combout\,
	d => \inst4|temp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|temp~q\);

-- Location: LCCOMB_X33_Y12_N2
\inst4|div_sorteio|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|op_1~0_combout\ = ((!\inst4|div_sorteio|count\(7) & (!\inst4|div_sorteio|count\(8) & !\inst4|div_sorteio|count\(9)))) # (!\inst4|div_sorteio|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|div_sorteio|count\(7),
	datab => \inst4|div_sorteio|count\(8),
	datac => \inst4|div_sorteio|count\(9),
	datad => \inst4|div_sorteio|count\(10),
	combout => \inst4|div_sorteio|op_1~0_combout\);

-- Location: LCCOMB_X33_Y12_N4
\inst4|div_sorteio|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|_~0_combout\ = (!\inst4|div_sorteio|count\(1) & ((\inst4|div_sorteio|op_1~0_combout\) # (!\inst4|div_sorteio|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|div_sorteio|count\(11),
	datac => \inst4|div_sorteio|count\(1),
	datad => \inst4|div_sorteio|op_1~0_combout\,
	combout => \inst4|div_sorteio|_~0_combout\);

-- Location: FF_X33_Y12_N5
\inst4|div_sorteio|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(1));

-- Location: LCCOMB_X33_Y12_N12
\inst4|div_sorteio|count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[2]~10_combout\ = (\inst4|div_sorteio|count\(2) & (\inst4|div_sorteio|count\(1) $ (VCC))) # (!\inst4|div_sorteio|count\(2) & (\inst4|div_sorteio|count\(1) & VCC))
-- \inst4|div_sorteio|count[2]~11\ = CARRY((\inst4|div_sorteio|count\(2) & \inst4|div_sorteio|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|div_sorteio|count\(2),
	datab => \inst4|div_sorteio|count\(1),
	datad => VCC,
	combout => \inst4|div_sorteio|count[2]~10_combout\,
	cout => \inst4|div_sorteio|count[2]~11\);

-- Location: LCCOMB_X33_Y12_N8
\inst4|div_sorteio|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|op_1~1_combout\ = (\inst4|div_sorteio|count\(11) & !\inst4|div_sorteio|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|div_sorteio|count\(11),
	datad => \inst4|div_sorteio|op_1~0_combout\,
	combout => \inst4|div_sorteio|op_1~1_combout\);

-- Location: FF_X33_Y12_N13
\inst4|div_sorteio|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[2]~10_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(2));

-- Location: LCCOMB_X33_Y12_N14
\inst4|div_sorteio|count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[3]~12_combout\ = (\inst4|div_sorteio|count\(3) & (!\inst4|div_sorteio|count[2]~11\)) # (!\inst4|div_sorteio|count\(3) & ((\inst4|div_sorteio|count[2]~11\) # (GND)))
-- \inst4|div_sorteio|count[3]~13\ = CARRY((!\inst4|div_sorteio|count[2]~11\) # (!\inst4|div_sorteio|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(3),
	datad => VCC,
	cin => \inst4|div_sorteio|count[2]~11\,
	combout => \inst4|div_sorteio|count[3]~12_combout\,
	cout => \inst4|div_sorteio|count[3]~13\);

-- Location: FF_X33_Y12_N15
\inst4|div_sorteio|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[3]~12_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(3));

-- Location: LCCOMB_X33_Y12_N16
\inst4|div_sorteio|count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[4]~14_combout\ = (\inst4|div_sorteio|count\(4) & (\inst4|div_sorteio|count[3]~13\ $ (GND))) # (!\inst4|div_sorteio|count\(4) & (!\inst4|div_sorteio|count[3]~13\ & VCC))
-- \inst4|div_sorteio|count[4]~15\ = CARRY((\inst4|div_sorteio|count\(4) & !\inst4|div_sorteio|count[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(4),
	datad => VCC,
	cin => \inst4|div_sorteio|count[3]~13\,
	combout => \inst4|div_sorteio|count[4]~14_combout\,
	cout => \inst4|div_sorteio|count[4]~15\);

-- Location: FF_X33_Y12_N17
\inst4|div_sorteio|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[4]~14_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(4));

-- Location: LCCOMB_X33_Y12_N18
\inst4|div_sorteio|count[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[5]~16_combout\ = (\inst4|div_sorteio|count\(5) & (!\inst4|div_sorteio|count[4]~15\)) # (!\inst4|div_sorteio|count\(5) & ((\inst4|div_sorteio|count[4]~15\) # (GND)))
-- \inst4|div_sorteio|count[5]~17\ = CARRY((!\inst4|div_sorteio|count[4]~15\) # (!\inst4|div_sorteio|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(5),
	datad => VCC,
	cin => \inst4|div_sorteio|count[4]~15\,
	combout => \inst4|div_sorteio|count[5]~16_combout\,
	cout => \inst4|div_sorteio|count[5]~17\);

-- Location: FF_X33_Y12_N19
\inst4|div_sorteio|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[5]~16_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(5));

-- Location: LCCOMB_X33_Y12_N20
\inst4|div_sorteio|count[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[6]~18_combout\ = (\inst4|div_sorteio|count\(6) & (\inst4|div_sorteio|count[5]~17\ $ (GND))) # (!\inst4|div_sorteio|count\(6) & (!\inst4|div_sorteio|count[5]~17\ & VCC))
-- \inst4|div_sorteio|count[6]~19\ = CARRY((\inst4|div_sorteio|count\(6) & !\inst4|div_sorteio|count[5]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(6),
	datad => VCC,
	cin => \inst4|div_sorteio|count[5]~17\,
	combout => \inst4|div_sorteio|count[6]~18_combout\,
	cout => \inst4|div_sorteio|count[6]~19\);

-- Location: FF_X33_Y12_N21
\inst4|div_sorteio|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[6]~18_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(6));

-- Location: LCCOMB_X33_Y12_N22
\inst4|div_sorteio|count[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[7]~20_combout\ = (\inst4|div_sorteio|count\(7) & (!\inst4|div_sorteio|count[6]~19\)) # (!\inst4|div_sorteio|count\(7) & ((\inst4|div_sorteio|count[6]~19\) # (GND)))
-- \inst4|div_sorteio|count[7]~21\ = CARRY((!\inst4|div_sorteio|count[6]~19\) # (!\inst4|div_sorteio|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(7),
	datad => VCC,
	cin => \inst4|div_sorteio|count[6]~19\,
	combout => \inst4|div_sorteio|count[7]~20_combout\,
	cout => \inst4|div_sorteio|count[7]~21\);

-- Location: FF_X33_Y12_N23
\inst4|div_sorteio|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[7]~20_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(7));

-- Location: LCCOMB_X33_Y12_N24
\inst4|div_sorteio|count[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[8]~22_combout\ = (\inst4|div_sorteio|count\(8) & (\inst4|div_sorteio|count[7]~21\ $ (GND))) # (!\inst4|div_sorteio|count\(8) & (!\inst4|div_sorteio|count[7]~21\ & VCC))
-- \inst4|div_sorteio|count[8]~23\ = CARRY((\inst4|div_sorteio|count\(8) & !\inst4|div_sorteio|count[7]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(8),
	datad => VCC,
	cin => \inst4|div_sorteio|count[7]~21\,
	combout => \inst4|div_sorteio|count[8]~22_combout\,
	cout => \inst4|div_sorteio|count[8]~23\);

-- Location: FF_X33_Y12_N25
\inst4|div_sorteio|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[8]~22_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(8));

-- Location: LCCOMB_X33_Y12_N26
\inst4|div_sorteio|count[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[9]~24_combout\ = (\inst4|div_sorteio|count\(9) & (!\inst4|div_sorteio|count[8]~23\)) # (!\inst4|div_sorteio|count\(9) & ((\inst4|div_sorteio|count[8]~23\) # (GND)))
-- \inst4|div_sorteio|count[9]~25\ = CARRY((!\inst4|div_sorteio|count[8]~23\) # (!\inst4|div_sorteio|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(9),
	datad => VCC,
	cin => \inst4|div_sorteio|count[8]~23\,
	combout => \inst4|div_sorteio|count[9]~24_combout\,
	cout => \inst4|div_sorteio|count[9]~25\);

-- Location: FF_X33_Y12_N27
\inst4|div_sorteio|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[9]~24_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(9));

-- Location: LCCOMB_X33_Y12_N28
\inst4|div_sorteio|count[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[10]~26_combout\ = (\inst4|div_sorteio|count\(10) & (\inst4|div_sorteio|count[9]~25\ $ (GND))) # (!\inst4|div_sorteio|count\(10) & (!\inst4|div_sorteio|count[9]~25\ & VCC))
-- \inst4|div_sorteio|count[10]~27\ = CARRY((\inst4|div_sorteio|count\(10) & !\inst4|div_sorteio|count[9]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(10),
	datad => VCC,
	cin => \inst4|div_sorteio|count[9]~25\,
	combout => \inst4|div_sorteio|count[10]~26_combout\,
	cout => \inst4|div_sorteio|count[10]~27\);

-- Location: FF_X33_Y12_N29
\inst4|div_sorteio|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[10]~26_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(10));

-- Location: LCCOMB_X33_Y12_N30
\inst4|div_sorteio|count[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|count[11]~28_combout\ = \inst4|div_sorteio|count\(11) $ (\inst4|div_sorteio|count[10]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|count\(11),
	cin => \inst4|div_sorteio|count[10]~27\,
	combout => \inst4|div_sorteio|count[11]~28_combout\);

-- Location: FF_X33_Y12_N31
\inst4|div_sorteio|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|count[11]~28_combout\,
	sclr => \inst4|div_sorteio|op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|count\(11));

-- Location: LCCOMB_X33_Y12_N6
\inst4|div_sorteio|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|alt~1_combout\ = \inst4|div_sorteio|alt~q\ $ (((\inst4|div_sorteio|count\(11) & !\inst4|div_sorteio|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|div_sorteio|alt~q\,
	datac => \inst4|div_sorteio|count\(11),
	datad => \inst4|div_sorteio|op_1~0_combout\,
	combout => \inst4|div_sorteio|alt~1_combout\);

-- Location: LCCOMB_X33_Y12_N10
\inst4|div_sorteio|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|div_sorteio|alt~feeder_combout\ = \inst4|div_sorteio|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|div_sorteio|alt~1_combout\,
	combout => \inst4|div_sorteio|alt~feeder_combout\);

-- Location: FF_X33_Y12_N11
\inst4|div_sorteio|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|div_sorteio|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|div_sorteio|alt~q\);

-- Location: CLKCTRL_G7
\inst4|div_sorteio|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|div_sorteio|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|div_sorteio|alt~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N6
\inst4|sorteio|contador|count[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|contador|count[5]~11_combout\ = (\inst4|sorteio|contador|count\(5) & (!\inst4|sorteio|contador|count[4]~10\)) # (!\inst4|sorteio|contador|count\(5) & ((\inst4|sorteio|contador|count[4]~10\) # (GND)))
-- \inst4|sorteio|contador|count[5]~12\ = CARRY((!\inst4|sorteio|contador|count[4]~10\) # (!\inst4|sorteio|contador|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(5),
	datad => VCC,
	cin => \inst4|sorteio|contador|count[4]~10\,
	combout => \inst4|sorteio|contador|count[5]~11_combout\,
	cout => \inst4|sorteio|contador|count[5]~12\);

-- Location: LCCOMB_X1_Y10_N8
\inst4|sorteio|contador|count[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|contador|count[6]~13_combout\ = \inst4|sorteio|contador|count[5]~12\ $ (!\inst4|sorteio|contador|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|sorteio|contador|count\(6),
	cin => \inst4|sorteio|contador|count[5]~12\,
	combout => \inst4|sorteio|contador|count[6]~13_combout\);

-- Location: FF_X1_Y10_N9
\inst4|sorteio|contador|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|contador|count[6]~13_combout\,
	sclr => \inst4|sorteio|contador|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|contador|count\(6));

-- Location: LCCOMB_X1_Y10_N18
\inst4|sorteio|contador|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|contador|op_1~0_combout\ = (\inst4|sorteio|contador|count\(5) & (\inst4|sorteio|contador|count\(4) & (\inst4|sorteio|contador|count\(6) & \inst4|sorteio|contador|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(5),
	datab => \inst4|sorteio|contador|count\(4),
	datac => \inst4|sorteio|contador|count\(6),
	datad => \inst4|sorteio|contador|count\(3),
	combout => \inst4|sorteio|contador|op_1~0_combout\);

-- Location: LCCOMB_X1_Y10_N12
\inst4|sorteio|contador|count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|contador|count[1]~15_combout\ = (\inst4|sorteio|contador|op_1~0_combout\) # (!\inst4|sorteio|contador|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sorteio|contador|count\(1),
	datad => \inst4|sorteio|contador|op_1~0_combout\,
	combout => \inst4|sorteio|contador|count[1]~15_combout\);

-- Location: FF_X1_Y10_N13
\inst4|sorteio|contador|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|contador|count[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|contador|count\(1));

-- Location: LCCOMB_X1_Y10_N0
\inst4|sorteio|contador|count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|contador|count[2]~5_combout\ = (\inst4|sorteio|contador|count\(1) & (\inst4|sorteio|contador|count\(2) $ (VCC))) # (!\inst4|sorteio|contador|count\(1) & (\inst4|sorteio|contador|count\(2) & VCC))
-- \inst4|sorteio|contador|count[2]~6\ = CARRY((\inst4|sorteio|contador|count\(1) & \inst4|sorteio|contador|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(1),
	datab => \inst4|sorteio|contador|count\(2),
	datad => VCC,
	combout => \inst4|sorteio|contador|count[2]~5_combout\,
	cout => \inst4|sorteio|contador|count[2]~6\);

-- Location: FF_X1_Y10_N1
\inst4|sorteio|contador|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|contador|count[2]~5_combout\,
	sclr => \inst4|sorteio|contador|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|contador|count\(2));

-- Location: LCCOMB_X1_Y10_N2
\inst4|sorteio|contador|count[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|contador|count[3]~7_combout\ = (\inst4|sorteio|contador|count\(3) & (!\inst4|sorteio|contador|count[2]~6\)) # (!\inst4|sorteio|contador|count\(3) & ((\inst4|sorteio|contador|count[2]~6\) # (GND)))
-- \inst4|sorteio|contador|count[3]~8\ = CARRY((!\inst4|sorteio|contador|count[2]~6\) # (!\inst4|sorteio|contador|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sorteio|contador|count\(3),
	datad => VCC,
	cin => \inst4|sorteio|contador|count[2]~6\,
	combout => \inst4|sorteio|contador|count[3]~7_combout\,
	cout => \inst4|sorteio|contador|count[3]~8\);

-- Location: FF_X1_Y10_N3
\inst4|sorteio|contador|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|contador|count[3]~7_combout\,
	sclr => \inst4|sorteio|contador|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|contador|count\(3));

-- Location: LCCOMB_X1_Y10_N4
\inst4|sorteio|contador|count[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|contador|count[4]~9_combout\ = (\inst4|sorteio|contador|count\(4) & (\inst4|sorteio|contador|count[3]~8\ $ (GND))) # (!\inst4|sorteio|contador|count\(4) & (!\inst4|sorteio|contador|count[3]~8\ & VCC))
-- \inst4|sorteio|contador|count[4]~10\ = CARRY((\inst4|sorteio|contador|count\(4) & !\inst4|sorteio|contador|count[3]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sorteio|contador|count\(4),
	datad => VCC,
	cin => \inst4|sorteio|contador|count[3]~8\,
	combout => \inst4|sorteio|contador|count[4]~9_combout\,
	cout => \inst4|sorteio|contador|count[4]~10\);

-- Location: FF_X1_Y10_N5
\inst4|sorteio|contador|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|contador|count[4]~9_combout\,
	sclr => \inst4|sorteio|contador|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|contador|count\(4));

-- Location: FF_X1_Y10_N7
\inst4|sorteio|contador|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|contador|count[5]~11_combout\,
	sclr => \inst4|sorteio|contador|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|contador|count\(5));

-- Location: LCCOMB_X5_Y10_N4
\inst4|sorteio|DECIMAL[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[3]~0_combout\ = (\inst4|sorteio|contador|count\(2) & (\inst4|sorteio|contador|count\(3) $ (((!\inst4|sorteio|contador|count\(4) & \inst4|sorteio|contador|count\(6)))))) # (!\inst4|sorteio|contador|count\(2) & 
-- (\inst4|sorteio|contador|count\(3) & ((\inst4|sorteio|contador|count\(6)) # (!\inst4|sorteio|contador|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(3),
	datab => \inst4|sorteio|contador|count\(2),
	datac => \inst4|sorteio|contador|count\(4),
	datad => \inst4|sorteio|contador|count\(6),
	combout => \inst4|sorteio|DECIMAL[3]~0_combout\);

-- Location: LCCOMB_X5_Y10_N2
\inst4|sorteio|DECIMAL[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[3]~1_combout\ = (\inst4|sorteio|contador|count\(3) & (((\inst4|sorteio|contador|count\(4)) # (!\inst4|sorteio|contador|count\(6))) # (!\inst4|sorteio|contador|count\(2)))) # (!\inst4|sorteio|contador|count\(3) & 
-- ((\inst4|sorteio|contador|count\(2) & ((\inst4|sorteio|contador|count\(6)) # (!\inst4|sorteio|contador|count\(4)))) # (!\inst4|sorteio|contador|count\(2) & (!\inst4|sorteio|contador|count\(4) & \inst4|sorteio|contador|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(3),
	datab => \inst4|sorteio|contador|count\(2),
	datac => \inst4|sorteio|contador|count\(4),
	datad => \inst4|sorteio|contador|count\(6),
	combout => \inst4|sorteio|DECIMAL[3]~1_combout\);

-- Location: LCCOMB_X5_Y10_N24
\inst4|sorteio|DECIMAL[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[3]~2_combout\ = (\inst4|sorteio|contador|count\(5) & ((!\inst4|sorteio|DECIMAL[3]~1_combout\))) # (!\inst4|sorteio|contador|count\(5) & (\inst4|sorteio|DECIMAL[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(5),
	datac => \inst4|sorteio|DECIMAL[3]~0_combout\,
	datad => \inst4|sorteio|DECIMAL[3]~1_combout\,
	combout => \inst4|sorteio|DECIMAL[3]~2_combout\);

-- Location: FF_X5_Y10_N25
\inst4|sorteio|DECIMAL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|DECIMAL[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|DECIMAL\(3));

-- Location: LCCOMB_X5_Y10_N22
\inst4|sorteio|DECIMAL[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[2]~12_combout\ = (\inst4|sorteio|contador|count\(2) & (((!\inst4|sorteio|contador|count\(3) & \inst4|sorteio|contador|count\(5))) # (!\inst4|sorteio|contador|count\(4)))) # (!\inst4|sorteio|contador|count\(2) & 
-- (\inst4|sorteio|contador|count\(4) $ (((!\inst4|sorteio|contador|count\(3) & \inst4|sorteio|contador|count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(3),
	datab => \inst4|sorteio|contador|count\(2),
	datac => \inst4|sorteio|contador|count\(4),
	datad => \inst4|sorteio|contador|count\(5),
	combout => \inst4|sorteio|DECIMAL[2]~12_combout\);

-- Location: LCCOMB_X5_Y10_N28
\inst4|sorteio|DECIMAL[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[2]~11_combout\ = (\inst4|sorteio|contador|count\(4) & ((\inst4|sorteio|contador|count\(3) & (!\inst4|sorteio|contador|count\(2) & !\inst4|sorteio|contador|count\(5))) # (!\inst4|sorteio|contador|count\(3) & 
-- (\inst4|sorteio|contador|count\(2) & \inst4|sorteio|contador|count\(5))))) # (!\inst4|sorteio|contador|count\(4) & (\inst4|sorteio|contador|count\(2) $ (((!\inst4|sorteio|contador|count\(3) & \inst4|sorteio|contador|count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(3),
	datab => \inst4|sorteio|contador|count\(4),
	datac => \inst4|sorteio|contador|count\(2),
	datad => \inst4|sorteio|contador|count\(5),
	combout => \inst4|sorteio|DECIMAL[2]~11_combout\);

-- Location: LCCOMB_X5_Y10_N18
\inst4|sorteio|DECIMAL[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[2]~13_combout\ = (\inst4|sorteio|contador|count\(6) & (!\inst4|sorteio|DECIMAL[2]~12_combout\)) # (!\inst4|sorteio|contador|count\(6) & ((\inst4|sorteio|DECIMAL[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(6),
	datac => \inst4|sorteio|DECIMAL[2]~12_combout\,
	datad => \inst4|sorteio|DECIMAL[2]~11_combout\,
	combout => \inst4|sorteio|DECIMAL[2]~13_combout\);

-- Location: FF_X5_Y10_N19
\inst4|sorteio|DECIMAL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|DECIMAL[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|DECIMAL\(2));

-- Location: LCCOMB_X7_Y9_N18
\inst4|count|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~1_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & !\inst4|count|cnt\(1))) # (!\inst4|count|cnt\(2) & ((\inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst4|count|_~1_combout\);

-- Location: FF_X7_Y9_N19
\inst4|count|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~q\,
	d => \inst4|count|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(2));

-- Location: LCCOMB_X7_Y9_N10
\inst4|count|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|_~0_combout\ = (\inst4|count|cnt\(3) & ((!\inst4|count|cnt\(2)))) # (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & \inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|count|_~0_combout\);

-- Location: FF_X7_Y9_N11
\inst4|count|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~q\,
	d => \inst4|count|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(3));

-- Location: LCCOMB_X7_Y9_N28
\inst4|count|cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count|cnt[1]~0_combout\ = ((\inst4|count|cnt\(3) & \inst4|count|cnt\(2))) # (!\inst4|count|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst4|count|cnt[1]~0_combout\);

-- Location: FF_X7_Y9_N29
\inst4|count|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|divisor|alt~q\,
	d => \inst4|count|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count|cnt\(1));

-- Location: LCCOMB_X7_Y10_N14
\inst4|_~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~68_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & (\inst4|temp~q\ & \inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(2),
	combout => \inst4|_~68_combout\);

-- Location: LCCOMB_X1_Y10_N22
\inst4|sorteio|DECIMAL[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[4]~9_combout\ = (\inst4|sorteio|contador|count\(2) & (!\inst4|sorteio|contador|count\(4) & (\inst4|sorteio|contador|count\(6) & \inst4|sorteio|contador|count\(3)))) # (!\inst4|sorteio|contador|count\(2) & 
-- (\inst4|sorteio|contador|count\(4) & (!\inst4|sorteio|contador|count\(6) & !\inst4|sorteio|contador|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(2),
	datab => \inst4|sorteio|contador|count\(4),
	datac => \inst4|sorteio|contador|count\(6),
	datad => \inst4|sorteio|contador|count\(3),
	combout => \inst4|sorteio|DECIMAL[4]~9_combout\);

-- Location: LCCOMB_X1_Y10_N16
\inst4|sorteio|DECIMAL[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[4]~8_combout\ = (\inst4|sorteio|contador|count\(2) & (!\inst4|sorteio|contador|count\(3) & (\inst4|sorteio|contador|count\(4) $ (!\inst4|sorteio|contador|count\(6))))) # (!\inst4|sorteio|contador|count\(2) & 
-- ((\inst4|sorteio|contador|count\(3) & (\inst4|sorteio|contador|count\(4) & !\inst4|sorteio|contador|count\(6))) # (!\inst4|sorteio|contador|count\(3) & (!\inst4|sorteio|contador|count\(4) & \inst4|sorteio|contador|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(2),
	datab => \inst4|sorteio|contador|count\(3),
	datac => \inst4|sorteio|contador|count\(4),
	datad => \inst4|sorteio|contador|count\(6),
	combout => \inst4|sorteio|DECIMAL[4]~8_combout\);

-- Location: LCCOMB_X1_Y10_N20
\inst4|sorteio|DECIMAL[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[4]~10_combout\ = (\inst4|sorteio|contador|count\(5) & ((\inst4|sorteio|DECIMAL[4]~8_combout\))) # (!\inst4|sorteio|contador|count\(5) & (\inst4|sorteio|DECIMAL[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(5),
	datac => \inst4|sorteio|DECIMAL[4]~9_combout\,
	datad => \inst4|sorteio|DECIMAL[4]~8_combout\,
	combout => \inst4|sorteio|DECIMAL[4]~10_combout\);

-- Location: FF_X1_Y10_N21
\inst4|sorteio|DECIMAL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|DECIMAL[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|DECIMAL\(4));

-- Location: LCCOMB_X2_Y10_N16
\inst4|u[6][4]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~90_combout\ = (\inst4|_~15_combout\ & (\inst4|_~68_combout\ & (\inst4|sorteio|DECIMAL\(4) & \inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~15_combout\,
	datab => \inst4|_~68_combout\,
	datac => \inst4|sorteio|DECIMAL\(4),
	datad => \inst4|_~25_combout\,
	combout => \inst4|u[6][4]~90_combout\);

-- Location: LCCOMB_X8_Y10_N8
\inst4|_~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~62_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(2) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|temp~q\,
	combout => \inst4|_~62_combout\);

-- Location: LCCOMB_X7_Y10_N4
\inst4|_~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~64_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & (\inst4|temp~q\ & !\inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(2),
	combout => \inst4|_~64_combout\);

-- Location: LCCOMB_X4_Y10_N2
\inst4|u[1][1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~16_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~62_combout\) # (\inst4|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~62_combout\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[1][1]~16_combout\);

-- Location: LCCOMB_X4_Y10_N8
\inst4|u[1][1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~17_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~70_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[1][1]~17_combout\);

-- Location: FF_X6_Y10_N13
\inst4|sorteio|DECIMAL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	asdata => \inst4|sorteio|contador|count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|DECIMAL\(1));

-- Location: LCCOMB_X6_Y8_N24
\inst4|u[2][1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~76_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~64_combout\) # (\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~64_combout\,
	datac => \inst4|u[2][1]~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|u[2][1]~76_combout\);

-- Location: LCCOMB_X6_Y8_N20
\inst4|u[2][1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~77_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~70_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|u[2][1]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[2][1]~77_combout\);

-- Location: LCCOMB_X7_Y9_N6
\inst2|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~8_combout\ = (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & !\inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|_~8_combout\);

-- Location: LCCOMB_X5_Y11_N12
\inst4|u[4][1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~57_combout\ = (\inst4|u[4][1]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[4][1]~57_combout\);

-- Location: LCCOMB_X5_Y10_N20
\inst4|sorteio|DECIMAL[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[6]~4_combout\ = (\inst4|sorteio|contador|count\(5) & ((\inst4|sorteio|contador|count\(4) & ((\inst4|sorteio|contador|count\(3)) # (!\inst4|sorteio|contador|count\(6)))) # (!\inst4|sorteio|contador|count\(4) & 
-- (\inst4|sorteio|contador|count\(3) & !\inst4|sorteio|contador|count\(6))))) # (!\inst4|sorteio|contador|count\(5) & (!\inst4|sorteio|contador|count\(4) & ((\inst4|sorteio|contador|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(5),
	datab => \inst4|sorteio|contador|count\(4),
	datac => \inst4|sorteio|contador|count\(3),
	datad => \inst4|sorteio|contador|count\(6),
	combout => \inst4|sorteio|DECIMAL[6]~4_combout\);

-- Location: FF_X5_Y10_N21
\inst4|sorteio|DECIMAL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|DECIMAL[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|DECIMAL\(6));

-- Location: LCCOMB_X8_Y10_N30
\inst4|_~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~80_combout\ = (\inst4|_~30_combout\ & (\inst4|_~9_combout\ & (\inst4|_~62_combout\ & \inst4|_~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~30_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~67_combout\,
	combout => \inst4|_~80_combout\);

-- Location: LCCOMB_X5_Y9_N22
\inst4|d[5][2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~22_combout\ = (\inst4|sorteio|DECIMAL\(6) & ((\inst4|_~80_combout\) # ((\inst4|d[5][2]~q\ & \inst4|_~71_combout\)))) # (!\inst4|sorteio|DECIMAL\(6) & (\inst4|d[5][2]~q\ & ((\inst4|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(6),
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~80_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[5][2]~22_combout\);

-- Location: LCCOMB_X5_Y9_N18
\inst4|d[5][2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~23_combout\ = (\inst4|d[5][2]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[5][2]~23_combout\);

-- Location: LCCOMB_X6_Y8_N2
\inst4|_~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~50_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1) & (\inst4|temp~q\ & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(1),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~50_combout\);

-- Location: LCCOMB_X5_Y9_N14
\inst4|d[5][2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~20_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~50_combout\) # ((\inst2|_~8_combout\ & \inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~8_combout\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[5][2]~20_combout\);

-- Location: LCCOMB_X5_Y9_N12
\inst4|u[4][4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~52_combout\ = (\inst4|u[4][4]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[4][4]~52_combout\);

-- Location: LCCOMB_X5_Y9_N20
\inst4|u[4][4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~51_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~80_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|_~80_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[4][4]~51_combout\);

-- Location: LCCOMB_X5_Y9_N26
\inst4|u[4][4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~49_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~50_combout\) # ((\inst2|_~8_combout\ & \inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst2|_~8_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[4][4]~49_combout\);

-- Location: LCCOMB_X8_Y10_N6
\inst4|_~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~51_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & \inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|temp~q\,
	combout => \inst4|_~51_combout\);

-- Location: LCCOMB_X5_Y9_N2
\inst4|u[4][4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~50_combout\ = (\inst4|u[4][4]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sorteio|DECIMAL\(4) & \inst4|_~65_combout\)))) # (!\inst4|u[4][4]~q\ & (((\inst4|sorteio|DECIMAL\(4) & \inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|sorteio|DECIMAL\(4),
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[4][4]~50_combout\);

-- Location: LCCOMB_X5_Y9_N10
\inst4|u[4][4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][4]~53_combout\ = (\inst4|u[4][4]~52_combout\) # ((\inst4|u[4][4]~51_combout\) # ((\inst4|u[4][4]~49_combout\) # (\inst4|u[4][4]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][4]~52_combout\,
	datab => \inst4|u[4][4]~51_combout\,
	datac => \inst4|u[4][4]~49_combout\,
	datad => \inst4|u[4][4]~50_combout\,
	combout => \inst4|u[4][4]~53_combout\);

-- Location: FF_X5_Y9_N11
\inst4|u[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][4]~q\);

-- Location: LCCOMB_X8_Y11_N6
\inst4|d[4][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~43_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|_~80_combout\) # ((\inst4|_~71_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~80_combout\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|d[4][1]~q\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|d[4][1]~43_combout\);

-- Location: LCCOMB_X8_Y11_N0
\inst4|d[4][1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~44_combout\ = (\inst4|d[4][1]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|d[4][1]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[4][1]~44_combout\);

-- Location: LCCOMB_X1_Y10_N30
\inst4|sorteio|DECIMAL[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[5]~6_combout\ = (\inst4|sorteio|contador|count\(3) & (((\inst4|sorteio|contador|count\(4))))) # (!\inst4|sorteio|contador|count\(3) & ((\inst4|sorteio|contador|count\(4) & ((!\inst4|sorteio|contador|count\(5)))) # 
-- (!\inst4|sorteio|contador|count\(4) & (!\inst4|sorteio|contador|count\(2) & \inst4|sorteio|contador|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(2),
	datab => \inst4|sorteio|contador|count\(3),
	datac => \inst4|sorteio|contador|count\(4),
	datad => \inst4|sorteio|contador|count\(5),
	combout => \inst4|sorteio|DECIMAL[5]~6_combout\);

-- Location: LCCOMB_X1_Y10_N28
\inst4|sorteio|DECIMAL[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[5]~5_combout\ = (\inst4|sorteio|contador|count\(3) & (\inst4|sorteio|contador|count\(4) & ((\inst4|sorteio|contador|count\(2)) # (!\inst4|sorteio|contador|count\(5))))) # (!\inst4|sorteio|contador|count\(3) & 
-- ((\inst4|sorteio|contador|count\(4) & (\inst4|sorteio|contador|count\(2) & !\inst4|sorteio|contador|count\(5))) # (!\inst4|sorteio|contador|count\(4) & ((\inst4|sorteio|contador|count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(2),
	datab => \inst4|sorteio|contador|count\(3),
	datac => \inst4|sorteio|contador|count\(4),
	datad => \inst4|sorteio|contador|count\(5),
	combout => \inst4|sorteio|DECIMAL[5]~5_combout\);

-- Location: LCCOMB_X1_Y10_N26
\inst4|sorteio|DECIMAL[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[5]~7_combout\ = (\inst4|sorteio|contador|count\(6) & (!\inst4|sorteio|DECIMAL[5]~6_combout\)) # (!\inst4|sorteio|contador|count\(6) & ((\inst4|sorteio|DECIMAL[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sorteio|contador|count\(6),
	datac => \inst4|sorteio|DECIMAL[5]~6_combout\,
	datad => \inst4|sorteio|DECIMAL[5]~5_combout\,
	combout => \inst4|sorteio|DECIMAL[5]~7_combout\);

-- Location: FF_X1_Y10_N27
\inst4|sorteio|DECIMAL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|DECIMAL[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|DECIMAL\(5));

-- Location: LCCOMB_X8_Y11_N4
\inst4|d[4][1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~42_combout\ = (\inst4|_~51_combout\ & ((\inst4|d[4][1]~q\) # ((\inst4|sorteio|DECIMAL\(5) & \inst4|_~65_combout\)))) # (!\inst4|_~51_combout\ & (\inst4|sorteio|DECIMAL\(5) & ((\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|sorteio|DECIMAL\(5),
	datac => \inst4|d[4][1]~q\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[4][1]~42_combout\);

-- Location: LCCOMB_X8_Y11_N28
\inst4|d[4][1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~41_combout\ = (\inst4|d[4][1]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~49_combout\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|d[4][1]~q\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|d[4][1]~41_combout\);

-- Location: LCCOMB_X8_Y11_N26
\inst4|d[4][1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][1]~45_combout\ = (\inst4|d[4][1]~43_combout\) # ((\inst4|d[4][1]~44_combout\) # ((\inst4|d[4][1]~42_combout\) # (\inst4|d[4][1]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][1]~43_combout\,
	datab => \inst4|d[4][1]~44_combout\,
	datac => \inst4|d[4][1]~42_combout\,
	datad => \inst4|d[4][1]~41_combout\,
	combout => \inst4|d[4][1]~45_combout\);

-- Location: FF_X8_Y11_N27
\inst4|d[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[4][1]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][1]~q\);

-- Location: LCCOMB_X10_Y10_N8
\inst4|d[4][3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~33_combout\ = (\inst4|d[4][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|d[4][3]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[4][3]~33_combout\);

-- Location: LCCOMB_X8_Y10_N22
\inst4|d[4][3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~32_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~80_combout\) # ((\inst4|_~71_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~80_combout\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|d[4][3]~q\,
	combout => \inst4|d[4][3]~32_combout\);

-- Location: LCCOMB_X5_Y10_N30
\inst4|sorteio|DECIMAL[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|sorteio|DECIMAL[7]~3_combout\ = (\inst4|sorteio|contador|count\(6) & ((\inst4|sorteio|contador|count\(5)) # (\inst4|sorteio|contador|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|contador|count\(5),
	datac => \inst4|sorteio|contador|count\(4),
	datad => \inst4|sorteio|contador|count\(6),
	combout => \inst4|sorteio|DECIMAL[7]~3_combout\);

-- Location: FF_X5_Y10_N31
\inst4|sorteio|DECIMAL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|div_sorteio|alt~clkctrl_outclk\,
	d => \inst4|sorteio|DECIMAL[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sorteio|DECIMAL\(7));

-- Location: LCCOMB_X10_Y10_N4
\inst4|d[4][3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~31_combout\ = (\inst4|_~51_combout\ & ((\inst4|d[4][3]~q\) # ((\inst4|_~65_combout\ & \inst4|sorteio|DECIMAL\(7))))) # (!\inst4|_~51_combout\ & (((\inst4|_~65_combout\ & \inst4|sorteio|DECIMAL\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|sorteio|DECIMAL\(7),
	combout => \inst4|d[4][3]~31_combout\);

-- Location: LCCOMB_X10_Y10_N20
\inst4|d[4][3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~30_combout\ = (\inst4|d[4][3]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|d[4][3]~30_combout\);

-- Location: LCCOMB_X10_Y10_N14
\inst4|d[4][3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][3]~34_combout\ = (\inst4|d[4][3]~33_combout\) # ((\inst4|d[4][3]~32_combout\) # ((\inst4|d[4][3]~31_combout\) # (\inst4|d[4][3]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~33_combout\,
	datab => \inst4|d[4][3]~32_combout\,
	datac => \inst4|d[4][3]~31_combout\,
	datad => \inst4|d[4][3]~30_combout\,
	combout => \inst4|d[4][3]~34_combout\);

-- Location: FF_X10_Y10_N15
\inst4|d[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[4][3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][3]~q\);

-- Location: LCCOMB_X4_Y10_N22
\inst4|d[3][1]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~88_combout\ = (!\inst4|_~64_combout\ & (!\inst2|_~8_combout\ & \inst4|temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datac => \inst2|_~8_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[3][1]~88_combout\);

-- Location: LCCOMB_X4_Y10_N0
\inst4|d[3][1]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~89_combout\ = (\inst4|_~69_combout\) # ((\inst4|_~62_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[3][1]~89_combout\);

-- Location: LCCOMB_X6_Y11_N6
\inst4|u[3][4]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~113_combout\ = (\inst4|u[3][4]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|u[3][4]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[3][4]~113_combout\);

-- Location: LCCOMB_X6_Y11_N16
\inst4|u[3][4]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~112_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[3][4]~112_combout\);

-- Location: LCCOMB_X6_Y11_N26
\inst4|u[3][4]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~110_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|u[3][4]~q\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[3][4]~110_combout\);

-- Location: LCCOMB_X7_Y9_N26
\inst4|_~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~60_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & (\inst4|temp~q\ & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|temp~q\,
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~60_combout\);

-- Location: LCCOMB_X7_Y9_N20
\inst4|_~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~59_combout\ = (((!\inst4|_~56_combout\) # (!\inst4|_~41_combout\)) # (!\inst4|_~17_combout\)) # (!\inst4|_~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|_~17_combout\,
	datac => \inst4|_~41_combout\,
	datad => \inst4|_~56_combout\,
	combout => \inst4|_~59_combout\);

-- Location: LCCOMB_X7_Y9_N22
\inst4|_~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~61_combout\ = (\inst4|_~60_combout\ & (((\inst4|_~59_combout\) # (!\inst4|_~25_combout\)) # (!\inst4|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~30_combout\,
	datab => \inst4|_~25_combout\,
	datac => \inst4|_~60_combout\,
	datad => \inst4|_~59_combout\,
	combout => \inst4|_~61_combout\);

-- Location: LCCOMB_X6_Y11_N24
\inst4|u[3][4]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~111_combout\ = (\inst4|u[3][4]~q\ & ((\inst4|_~61_combout\) # ((\inst4|sorteio|DECIMAL\(4) & \inst4|_~58_combout\)))) # (!\inst4|u[3][4]~q\ & (\inst4|sorteio|DECIMAL\(4) & ((\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|sorteio|DECIMAL\(4),
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[3][4]~111_combout\);

-- Location: LCCOMB_X6_Y11_N22
\inst4|u[3][4]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][4]~114_combout\ = (\inst4|u[3][4]~113_combout\) # ((\inst4|u[3][4]~112_combout\) # ((\inst4|u[3][4]~110_combout\) # (\inst4|u[3][4]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~113_combout\,
	datab => \inst4|u[3][4]~112_combout\,
	datac => \inst4|u[3][4]~110_combout\,
	datad => \inst4|u[3][4]~111_combout\,
	combout => \inst4|u[3][4]~114_combout\);

-- Location: FF_X6_Y11_N23
\inst4|u[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][4]~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][4]~q\);

-- Location: LCCOMB_X6_Y9_N10
\inst4|u[3][1]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~118_combout\ = (\inst4|u[3][1]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[3][1]~118_combout\);

-- Location: LCCOMB_X6_Y9_N2
\inst4|u[3][1]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~117_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|_~66_combout\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[3][1]~117_combout\);

-- Location: LCCOMB_X6_Y9_N4
\inst4|u[3][1]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~115_combout\ = (\inst4|u[3][1]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[3][1]~115_combout\);

-- Location: LCCOMB_X6_Y9_N20
\inst4|u[3][1]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~116_combout\ = (\inst4|sorteio|DECIMAL\(1) & ((\inst4|_~58_combout\) # ((\inst4|_~61_combout\ & \inst4|u[3][1]~q\)))) # (!\inst4|sorteio|DECIMAL\(1) & (\inst4|_~61_combout\ & (\inst4|u[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(1),
	datab => \inst4|_~61_combout\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[3][1]~116_combout\);

-- Location: LCCOMB_X6_Y9_N26
\inst4|u[3][1]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][1]~119_combout\ = (\inst4|u[3][1]~118_combout\) # ((\inst4|u[3][1]~117_combout\) # ((\inst4|u[3][1]~115_combout\) # (\inst4|u[3][1]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~118_combout\,
	datab => \inst4|u[3][1]~117_combout\,
	datac => \inst4|u[3][1]~115_combout\,
	datad => \inst4|u[3][1]~116_combout\,
	combout => \inst4|u[3][1]~119_combout\);

-- Location: FF_X6_Y9_N27
\inst4|u[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][1]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][1]~q\);

-- Location: LCCOMB_X8_Y9_N26
\inst4|d[3][3]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~80_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~69_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[3][3]~80_combout\);

-- Location: LCCOMB_X8_Y9_N18
\inst4|d[3][3]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~79_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|d[3][3]~79_combout\);

-- Location: LCCOMB_X8_Y9_N30
\inst4|d[3][3]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~78_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~61_combout\) # ((\inst4|sorteio|DECIMAL\(7) & \inst4|_~58_combout\)))) # (!\inst4|d[3][3]~q\ & (\inst4|sorteio|DECIMAL\(7) & (\inst4|_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|sorteio|DECIMAL\(7),
	datac => \inst4|_~58_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[3][3]~78_combout\);

-- Location: LCCOMB_X8_Y9_N2
\inst4|d[3][3]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~77_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~48_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[3][3]~77_combout\);

-- Location: LCCOMB_X8_Y9_N6
\inst4|d[3][3]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][3]~81_combout\ = (\inst4|d[3][3]~80_combout\) # ((\inst4|d[3][3]~79_combout\) # ((\inst4|d[3][3]~78_combout\) # (\inst4|d[3][3]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~80_combout\,
	datab => \inst4|d[3][3]~79_combout\,
	datac => \inst4|d[3][3]~78_combout\,
	datad => \inst4|d[3][3]~77_combout\,
	combout => \inst4|d[3][3]~81_combout\);

-- Location: FF_X8_Y9_N7
\inst4|d[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[3][3]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][3]~q\);

-- Location: LCCOMB_X8_Y9_N12
\inst4|d[3][2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~85_combout\ = (\inst4|d[3][2]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[3][2]~85_combout\);

-- Location: LCCOMB_X8_Y9_N14
\inst4|d[3][2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~84_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~65_combout\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|d[3][2]~84_combout\);

-- Location: LCCOMB_X8_Y9_N8
\inst4|d[3][2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~83_combout\ = (\inst4|sorteio|DECIMAL\(6) & ((\inst4|_~58_combout\) # ((\inst4|d[3][2]~q\ & \inst4|_~61_combout\)))) # (!\inst4|sorteio|DECIMAL\(6) & (\inst4|d[3][2]~q\ & ((\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(6),
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[3][2]~83_combout\);

-- Location: LCCOMB_X8_Y9_N10
\inst4|d[3][2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~82_combout\ = (\inst4|d[3][2]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~48_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[3][2]~82_combout\);

-- Location: LCCOMB_X8_Y9_N28
\inst4|d[3][2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][2]~86_combout\ = (\inst4|d[3][2]~85_combout\) # ((\inst4|d[3][2]~84_combout\) # ((\inst4|d[3][2]~83_combout\) # (\inst4|d[3][2]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][2]~85_combout\,
	datab => \inst4|d[3][2]~84_combout\,
	datac => \inst4|d[3][2]~83_combout\,
	datad => \inst4|d[3][2]~82_combout\,
	combout => \inst4|d[3][2]~86_combout\);

-- Location: FF_X8_Y9_N29
\inst4|d[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[3][2]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][2]~q\);

-- Location: LCCOMB_X7_Y8_N6
\inst4|u[3][2]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~107_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[3][2]~107_combout\);

-- Location: LCCOMB_X7_Y10_N12
\inst4|u[3][2]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~108_combout\ = (\inst4|u[3][2]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[3][2]~108_combout\);

-- Location: LCCOMB_X7_Y8_N26
\inst4|u[3][2]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~105_combout\ = (\inst4|u[3][2]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[3][2]~105_combout\);

-- Location: LCCOMB_X7_Y8_N2
\inst4|u[3][2]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~106_combout\ = (\inst4|sorteio|DECIMAL\(2) & ((\inst4|_~58_combout\) # ((\inst4|u[3][2]~q\ & \inst4|_~61_combout\)))) # (!\inst4|sorteio|DECIMAL\(2) & (\inst4|u[3][2]~q\ & (\inst4|_~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(2),
	datab => \inst4|u[3][2]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[3][2]~106_combout\);

-- Location: LCCOMB_X7_Y8_N0
\inst4|u[3][2]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][2]~109_combout\ = (\inst4|u[3][2]~107_combout\) # ((\inst4|u[3][2]~108_combout\) # ((\inst4|u[3][2]~105_combout\) # (\inst4|u[3][2]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][2]~107_combout\,
	datab => \inst4|u[3][2]~108_combout\,
	datac => \inst4|u[3][2]~105_combout\,
	datad => \inst4|u[3][2]~106_combout\,
	combout => \inst4|u[3][2]~109_combout\);

-- Location: FF_X7_Y8_N1
\inst4|u[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][2]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][2]~q\);

-- Location: LCCOMB_X6_Y9_N6
\inst4|u[3][3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~102_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~66_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|_~66_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[3][3]~102_combout\);

-- Location: LCCOMB_X6_Y9_N24
\inst4|u[3][3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~103_combout\ = (\inst4|u[3][3]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[3][3]~103_combout\);

-- Location: LCCOMB_X6_Y9_N14
\inst4|u[3][3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~100_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~48_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[3][3]~100_combout\);

-- Location: LCCOMB_X6_Y9_N28
\inst4|u[3][3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~101_combout\ = (\inst4|u[3][3]~q\ & ((\inst4|_~61_combout\) # ((\inst4|sorteio|DECIMAL\(3) & \inst4|_~58_combout\)))) # (!\inst4|u[3][3]~q\ & (((\inst4|sorteio|DECIMAL\(3) & \inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst4|sorteio|DECIMAL\(3),
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[3][3]~101_combout\);

-- Location: LCCOMB_X6_Y9_N12
\inst4|u[3][3]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[3][3]~104_combout\ = (\inst4|u[3][3]~102_combout\) # ((\inst4|u[3][3]~103_combout\) # ((\inst4|u[3][3]~100_combout\) # (\inst4|u[3][3]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~102_combout\,
	datab => \inst4|u[3][3]~103_combout\,
	datac => \inst4|u[3][3]~100_combout\,
	datad => \inst4|u[3][3]~101_combout\,
	combout => \inst4|u[3][3]~104_combout\);

-- Location: FF_X6_Y9_N13
\inst4|u[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[3][3]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[3][3]~q\);

-- Location: LCCOMB_X9_Y9_N24
\inst4|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~16_combout\ = (!\inst4|d[3][3]~q\ & (!\inst4|d[3][2]~q\ & (!\inst4|u[3][2]~q\ & !\inst4|u[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst4|u[3][3]~q\,
	combout => \inst4|_~16_combout\);

-- Location: LCCOMB_X9_Y9_N22
\inst4|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~17_combout\ = (!\inst4|u[3][4]~q\ & (!\inst4|d[3][1]~q\ & (!\inst4|u[3][1]~q\ & \inst4|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|d[3][1]~q\,
	datac => \inst4|u[3][1]~q\,
	datad => \inst4|_~16_combout\,
	combout => \inst4|_~17_combout\);

-- Location: LCCOMB_X8_Y10_N10
\inst4|_~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~57_combout\ = (\inst4|_~56_combout\ & (\inst4|_~17_combout\ & (\inst4|_~30_combout\ & \inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|_~17_combout\,
	datac => \inst4|_~30_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|_~57_combout\);

-- Location: LCCOMB_X8_Y10_N16
\inst4|_~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~58_combout\ = (\inst4|_~51_combout\ & (\inst4|_~41_combout\ & (\inst4|_~46_combout\ & \inst4|_~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~46_combout\,
	datad => \inst4|_~57_combout\,
	combout => \inst4|_~58_combout\);

-- Location: LCCOMB_X4_Y10_N24
\inst4|d[3][1]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~87_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|_~61_combout\) # ((\inst4|sorteio|DECIMAL\(5) & \inst4|_~58_combout\)))) # (!\inst4|d[3][1]~q\ & (\inst4|sorteio|DECIMAL\(5) & (\inst4|_~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|sorteio|DECIMAL\(5),
	datac => \inst4|_~58_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[3][1]~87_combout\);

-- Location: LCCOMB_X4_Y10_N30
\inst4|d[3][1]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[3][1]~90_combout\ = (\inst4|d[3][1]~87_combout\) # ((\inst4|d[3][1]~q\ & ((\inst4|d[3][1]~89_combout\) # (!\inst4|d[3][1]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~88_combout\,
	datab => \inst4|d[3][1]~89_combout\,
	datac => \inst4|d[3][1]~q\,
	datad => \inst4|d[3][1]~87_combout\,
	combout => \inst4|d[3][1]~90_combout\);

-- Location: FF_X4_Y10_N31
\inst4|d[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[3][1]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[3][1]~q\);

-- Location: LCCOMB_X4_Y10_N20
\inst4|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~33_combout\ = (\inst4|d[3][1]~q\ & ((\inst4|sorteio|DECIMAL\(4) $ (\inst4|u[3][4]~q\)) # (!\inst4|sorteio|DECIMAL\(5)))) # (!\inst4|d[3][1]~q\ & ((\inst4|sorteio|DECIMAL\(5)) # (\inst4|sorteio|DECIMAL\(4) $ (\inst4|u[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][1]~q\,
	datab => \inst4|sorteio|DECIMAL\(4),
	datac => \inst4|sorteio|DECIMAL\(5),
	datad => \inst4|u[3][4]~q\,
	combout => \inst4|_~33_combout\);

-- Location: LCCOMB_X7_Y10_N8
\inst4|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~34_combout\ = \inst4|sorteio|DECIMAL\(1) $ (\inst4|u[3][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(1),
	datad => \inst4|u[3][1]~q\,
	combout => \inst4|_~34_combout\);

-- Location: LCCOMB_X5_Y10_N10
\inst4|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~35_combout\ = (\inst4|sorteio|DECIMAL\(2) & ((\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[3][3]~q\)) # (!\inst4|u[3][2]~q\))) # (!\inst4|sorteio|DECIMAL\(2) & ((\inst4|u[3][2]~q\) # (\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(2),
	datab => \inst4|sorteio|DECIMAL\(3),
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][2]~q\,
	combout => \inst4|_~35_combout\);

-- Location: LCCOMB_X8_Y9_N16
\inst4|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~32_combout\ = (\inst4|d[3][3]~q\ & ((\inst4|d[3][2]~q\ $ (\inst4|sorteio|DECIMAL\(6))) # (!\inst4|sorteio|DECIMAL\(7)))) # (!\inst4|d[3][3]~q\ & ((\inst4|sorteio|DECIMAL\(7)) # (\inst4|d[3][2]~q\ $ (\inst4|sorteio|DECIMAL\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[3][3]~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst4|sorteio|DECIMAL\(6),
	datad => \inst4|sorteio|DECIMAL\(7),
	combout => \inst4|_~32_combout\);

-- Location: LCCOMB_X7_Y10_N28
\inst4|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~36_combout\ = (\inst4|_~33_combout\) # ((\inst4|_~34_combout\) # ((\inst4|_~35_combout\) # (\inst4|_~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~33_combout\,
	datab => \inst4|_~34_combout\,
	datac => \inst4|_~35_combout\,
	datad => \inst4|_~32_combout\,
	combout => \inst4|_~36_combout\);

-- Location: LCCOMB_X7_Y10_N24
\inst4|_~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~63_combout\ = (\inst4|_~36_combout\ & (\inst4|_~56_combout\ & (\inst4|_~30_combout\ & \inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~36_combout\,
	datab => \inst4|_~56_combout\,
	datac => \inst4|_~30_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|_~63_combout\);

-- Location: LCCOMB_X10_Y10_N12
\inst4|d[4][2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~37_combout\ = ((!\inst4|_~63_combout\) # (!\inst4|_~11_combout\)) # (!\inst4|_~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~63_combout\,
	combout => \inst4|d[4][2]~37_combout\);

-- Location: LCCOMB_X10_Y10_N10
\inst4|d[4][2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~38_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~64_combout\ & \inst4|d[4][2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|d[4][2]~37_combout\,
	combout => \inst4|d[4][2]~38_combout\);

-- Location: LCCOMB_X10_Y10_N28
\inst4|d[4][2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~39_combout\ = (\inst4|d[4][2]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[4][2]~39_combout\);

-- Location: LCCOMB_X10_Y10_N22
\inst4|d[4][2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~36_combout\ = (\inst4|_~51_combout\ & ((\inst4|d[4][2]~q\) # ((\inst4|_~65_combout\ & \inst4|sorteio|DECIMAL\(6))))) # (!\inst4|_~51_combout\ & (((\inst4|_~65_combout\ & \inst4|sorteio|DECIMAL\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|sorteio|DECIMAL\(6),
	combout => \inst4|d[4][2]~36_combout\);

-- Location: LCCOMB_X10_Y10_N18
\inst4|d[4][2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~35_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[4][2]~35_combout\);

-- Location: LCCOMB_X10_Y10_N0
\inst4|d[4][2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[4][2]~40_combout\ = (\inst4|d[4][2]~38_combout\) # ((\inst4|d[4][2]~39_combout\) # ((\inst4|d[4][2]~36_combout\) # (\inst4|d[4][2]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~38_combout\,
	datab => \inst4|d[4][2]~39_combout\,
	datac => \inst4|d[4][2]~36_combout\,
	datad => \inst4|d[4][2]~35_combout\,
	combout => \inst4|d[4][2]~40_combout\);

-- Location: FF_X10_Y10_N1
\inst4|d[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[4][2]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[4][2]~q\);

-- Location: LCCOMB_X5_Y11_N22
\inst4|u[4][2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~46_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~71_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~80_combout\,
	combout => \inst4|u[4][2]~46_combout\);

-- Location: LCCOMB_X5_Y11_N14
\inst4|u[4][2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~47_combout\ = (\inst4|u[4][2]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[4][2]~47_combout\);

-- Location: LCCOMB_X5_Y11_N26
\inst4|u[4][2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~45_combout\ = (\inst4|sorteio|DECIMAL\(2) & ((\inst4|_~65_combout\) # ((\inst4|u[4][2]~q\ & \inst4|_~51_combout\)))) # (!\inst4|sorteio|DECIMAL\(2) & (\inst4|u[4][2]~q\ & (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(2),
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[4][2]~45_combout\);

-- Location: LCCOMB_X5_Y11_N28
\inst4|u[4][2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~44_combout\ = (\inst4|u[4][2]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~48_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~49_combout\,
	datab => \inst4|u[4][2]~q\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|u[4][2]~44_combout\);

-- Location: LCCOMB_X5_Y11_N24
\inst4|u[4][2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][2]~48_combout\ = (\inst4|u[4][2]~46_combout\) # ((\inst4|u[4][2]~47_combout\) # ((\inst4|u[4][2]~45_combout\) # (\inst4|u[4][2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~46_combout\,
	datab => \inst4|u[4][2]~47_combout\,
	datac => \inst4|u[4][2]~45_combout\,
	datad => \inst4|u[4][2]~44_combout\,
	combout => \inst4|u[4][2]~48_combout\);

-- Location: FF_X5_Y11_N25
\inst4|u[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][2]~q\);

-- Location: LCCOMB_X8_Y11_N10
\inst4|u[4][3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~42_combout\ = (\inst4|u[4][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[4][3]~42_combout\);

-- Location: LCCOMB_X8_Y11_N16
\inst4|u[4][3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~41_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~80_combout\) # ((\inst4|_~71_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~80_combout\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[4][3]~41_combout\);

-- Location: LCCOMB_X8_Y11_N22
\inst4|u[4][3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~40_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sorteio|DECIMAL\(3) & \inst4|_~65_combout\)))) # (!\inst4|u[4][3]~q\ & (((\inst4|sorteio|DECIMAL\(3) & \inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|sorteio|DECIMAL\(3),
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[4][3]~40_combout\);

-- Location: LCCOMB_X8_Y11_N2
\inst4|u[4][3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~39_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~49_combout\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|u[4][3]~39_combout\);

-- Location: LCCOMB_X8_Y11_N30
\inst4|u[4][3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][3]~43_combout\ = (\inst4|u[4][3]~42_combout\) # ((\inst4|u[4][3]~41_combout\) # ((\inst4|u[4][3]~40_combout\) # (\inst4|u[4][3]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~42_combout\,
	datab => \inst4|u[4][3]~41_combout\,
	datac => \inst4|u[4][3]~40_combout\,
	datad => \inst4|u[4][3]~39_combout\,
	combout => \inst4|u[4][3]~43_combout\);

-- Location: FF_X8_Y11_N31
\inst4|u[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][3]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][3]~q\);

-- Location: LCCOMB_X9_Y11_N18
\inst4|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~10_combout\ = (!\inst4|d[4][3]~q\ & (!\inst4|d[4][2]~q\ & (!\inst4|u[4][2]~q\ & !\inst4|u[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][3]~q\,
	datab => \inst4|d[4][2]~q\,
	datac => \inst4|u[4][2]~q\,
	datad => \inst4|u[4][3]~q\,
	combout => \inst4|_~10_combout\);

-- Location: LCCOMB_X9_Y11_N20
\inst4|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~11_combout\ = (!\inst4|u[4][1]~q\ & (!\inst4|u[4][4]~q\ & (!\inst4|d[4][1]~q\ & \inst4|_~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|d[4][1]~q\,
	datad => \inst4|_~10_combout\,
	combout => \inst4|_~11_combout\);

-- Location: LCCOMB_X7_Y10_N10
\inst4|_~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~65_combout\ = (\inst4|_~46_combout\ & (\inst4|_~64_combout\ & (\inst4|_~11_combout\ & \inst4|_~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|_~64_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~63_combout\,
	combout => \inst4|_~65_combout\);

-- Location: LCCOMB_X5_Y9_N24
\inst4|d[5][2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~21_combout\ = (\inst4|d[5][2]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~65_combout\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|d[5][2]~21_combout\);

-- Location: LCCOMB_X5_Y9_N4
\inst4|d[5][2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][2]~24_combout\ = (\inst4|d[5][2]~22_combout\) # ((\inst4|d[5][2]~23_combout\) # ((\inst4|d[5][2]~20_combout\) # (\inst4|d[5][2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~22_combout\,
	datab => \inst4|d[5][2]~23_combout\,
	datac => \inst4|d[5][2]~20_combout\,
	datad => \inst4|d[5][2]~21_combout\,
	combout => \inst4|d[5][2]~24_combout\);

-- Location: FF_X5_Y9_N5
\inst4|d[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[5][2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][2]~q\);

-- Location: LCCOMB_X11_Y10_N26
\inst4|d[5][3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~18_combout\ = (\inst4|d[5][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|d[5][3]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[5][3]~18_combout\);

-- Location: LCCOMB_X11_Y10_N0
\inst4|d[5][3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~17_combout\ = (\inst4|sorteio|DECIMAL\(7) & ((\inst4|_~80_combout\) # ((\inst4|d[5][3]~q\ & \inst4|_~71_combout\)))) # (!\inst4|sorteio|DECIMAL\(7) & (\inst4|d[5][3]~q\ & ((\inst4|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(7),
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|_~80_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|d[5][3]~17_combout\);

-- Location: LCCOMB_X11_Y10_N14
\inst4|d[5][3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~15_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[5][3]~15_combout\);

-- Location: LCCOMB_X11_Y10_N16
\inst4|d[5][3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~16_combout\ = (\inst4|d[5][3]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|_~66_combout\,
	datac => \inst4|d[5][3]~q\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[5][3]~16_combout\);

-- Location: LCCOMB_X11_Y10_N20
\inst4|d[5][3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][3]~19_combout\ = (\inst4|d[5][3]~18_combout\) # ((\inst4|d[5][3]~17_combout\) # ((\inst4|d[5][3]~15_combout\) # (\inst4|d[5][3]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~18_combout\,
	datab => \inst4|d[5][3]~17_combout\,
	datac => \inst4|d[5][3]~15_combout\,
	datad => \inst4|d[5][3]~16_combout\,
	combout => \inst4|d[5][3]~19_combout\);

-- Location: FF_X11_Y10_N21
\inst4|d[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[5][3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][3]~q\);

-- Location: LCCOMB_X9_Y10_N26
\inst4|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~8_combout\ = (!\inst4|u[5][3]~q\ & (!\inst4|d[5][2]~q\ & (!\inst4|d[5][3]~q\ & !\inst4|u[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~q\,
	datab => \inst4|d[5][2]~q\,
	datac => \inst4|d[5][3]~q\,
	datad => \inst4|u[5][2]~q\,
	combout => \inst4|_~8_combout\);

-- Location: LCCOMB_X5_Y9_N6
\inst4|u[5][4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~32_combout\ = (\inst4|u[5][4]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[5][4]~32_combout\);

-- Location: LCCOMB_X5_Y9_N28
\inst4|u[5][4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~31_combout\ = (\inst4|sorteio|DECIMAL\(4) & ((\inst4|_~80_combout\) # ((\inst4|u[5][4]~q\ & \inst4|_~71_combout\)))) # (!\inst4|sorteio|DECIMAL\(4) & (\inst4|u[5][4]~q\ & ((\inst4|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(4),
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~80_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[5][4]~31_combout\);

-- Location: LCCOMB_X5_Y9_N8
\inst4|u[5][4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~30_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[5][4]~30_combout\);

-- Location: LCCOMB_X5_Y9_N16
\inst4|u[5][4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~29_combout\ = (\inst4|u[5][4]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|u[5][4]~29_combout\);

-- Location: LCCOMB_X5_Y9_N0
\inst4|u[5][4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][4]~33_combout\ = (\inst4|u[5][4]~32_combout\) # ((\inst4|u[5][4]~31_combout\) # ((\inst4|u[5][4]~30_combout\) # (\inst4|u[5][4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~32_combout\,
	datab => \inst4|u[5][4]~31_combout\,
	datac => \inst4|u[5][4]~30_combout\,
	datad => \inst4|u[5][4]~29_combout\,
	combout => \inst4|u[5][4]~33_combout\);

-- Location: FF_X5_Y9_N1
\inst4|u[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][4]~q\);

-- Location: LCCOMB_X6_Y11_N12
\inst4|d[5][1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~28_combout\ = (\inst4|d[5][1]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~69_combout\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[5][1]~28_combout\);

-- Location: LCCOMB_X7_Y11_N16
\inst4|d[5][1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~26_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[5][1]~26_combout\);

-- Location: LCCOMB_X6_Y11_N14
\inst4|d[5][1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~25_combout\ = (\inst4|d[5][1]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|d[5][1]~25_combout\);

-- Location: LCCOMB_X7_Y11_N26
\inst4|d[5][1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~27_combout\ = (\inst4|sorteio|DECIMAL\(5) & ((\inst4|_~80_combout\) # ((\inst4|d[5][1]~q\ & \inst4|_~71_combout\)))) # (!\inst4|sorteio|DECIMAL\(5) & (\inst4|d[5][1]~q\ & (\inst4|_~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|d[5][1]~q\,
	datac => \inst4|_~71_combout\,
	datad => \inst4|_~80_combout\,
	combout => \inst4|d[5][1]~27_combout\);

-- Location: LCCOMB_X6_Y11_N30
\inst4|d[5][1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[5][1]~29_combout\ = (\inst4|d[5][1]~28_combout\) # ((\inst4|d[5][1]~26_combout\) # ((\inst4|d[5][1]~25_combout\) # (\inst4|d[5][1]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~28_combout\,
	datab => \inst4|d[5][1]~26_combout\,
	datac => \inst4|d[5][1]~25_combout\,
	datad => \inst4|d[5][1]~27_combout\,
	combout => \inst4|d[5][1]~29_combout\);

-- Location: FF_X6_Y11_N31
\inst4|d[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[5][1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[5][1]~q\);

-- Location: LCCOMB_X8_Y10_N2
\inst4|u[5][1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~37_combout\ = (\inst4|u[5][1]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|u[5][1]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[5][1]~37_combout\);

-- Location: LCCOMB_X8_Y10_N18
\inst4|u[5][1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~36_combout\ = (\inst4|sorteio|DECIMAL\(1) & ((\inst4|_~80_combout\) # ((\inst4|u[5][1]~q\ & \inst4|_~71_combout\)))) # (!\inst4|sorteio|DECIMAL\(1) & (\inst4|u[5][1]~q\ & ((\inst4|_~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(1),
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|_~80_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[5][1]~36_combout\);

-- Location: LCCOMB_X8_Y10_N26
\inst4|u[5][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~35_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|_~66_combout\,
	datac => \inst4|u[5][1]~q\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[5][1]~35_combout\);

-- Location: LCCOMB_X7_Y8_N14
\inst4|u[5][1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~34_combout\ = (\inst4|u[5][1]~q\ & ((\inst4|_~50_combout\) # ((\inst4|temp~q\ & \inst2|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[5][1]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst2|_~8_combout\,
	combout => \inst4|u[5][1]~34_combout\);

-- Location: LCCOMB_X8_Y10_N14
\inst4|u[5][1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][1]~38_combout\ = (\inst4|u[5][1]~37_combout\) # ((\inst4|u[5][1]~36_combout\) # ((\inst4|u[5][1]~35_combout\) # (\inst4|u[5][1]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][1]~37_combout\,
	datab => \inst4|u[5][1]~36_combout\,
	datac => \inst4|u[5][1]~35_combout\,
	datad => \inst4|u[5][1]~34_combout\,
	combout => \inst4|u[5][1]~38_combout\);

-- Location: FF_X8_Y10_N15
\inst4|u[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][1]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][1]~q\);

-- Location: LCCOMB_X9_Y10_N22
\inst4|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~9_combout\ = (\inst4|_~8_combout\ & (!\inst4|u[5][4]~q\ & (!\inst4|d[5][1]~q\ & !\inst4|u[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~8_combout\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|d[5][1]~q\,
	datad => \inst4|u[5][1]~q\,
	combout => \inst4|_~9_combout\);

-- Location: LCCOMB_X8_Y10_N24
\inst4|_~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~81_combout\ = (((!\inst4|_~41_combout\) # (!\inst4|_~36_combout\)) # (!\inst4|_~9_combout\)) # (!\inst4|_~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~30_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~36_combout\,
	datad => \inst4|_~41_combout\,
	combout => \inst4|_~81_combout\);

-- Location: LCCOMB_X8_Y10_N0
\inst4|_~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~71_combout\ = (\inst4|_~62_combout\ & (((\inst4|_~81_combout\) # (!\inst4|_~46_combout\)) # (!\inst4|_~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|_~46_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~81_combout\,
	combout => \inst4|_~71_combout\);

-- Location: LCCOMB_X5_Y11_N20
\inst4|u[4][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~56_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~71_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|_~71_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~80_combout\,
	combout => \inst4|u[4][1]~56_combout\);

-- Location: LCCOMB_X5_Y11_N4
\inst4|u[4][1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~55_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~51_combout\) # ((\inst4|sorteio|DECIMAL\(1) & \inst4|_~65_combout\)))) # (!\inst4|u[4][1]~q\ & (\inst4|sorteio|DECIMAL\(1) & ((\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|sorteio|DECIMAL\(1),
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[4][1]~55_combout\);

-- Location: LCCOMB_X5_Y11_N18
\inst4|u[4][1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~54_combout\ = (\inst4|u[4][1]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~48_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|u[4][1]~54_combout\);

-- Location: LCCOMB_X5_Y11_N10
\inst4|u[4][1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[4][1]~58_combout\ = (\inst4|u[4][1]~57_combout\) # ((\inst4|u[4][1]~56_combout\) # ((\inst4|u[4][1]~55_combout\) # (\inst4|u[4][1]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~57_combout\,
	datab => \inst4|u[4][1]~56_combout\,
	datac => \inst4|u[4][1]~55_combout\,
	datad => \inst4|u[4][1]~54_combout\,
	combout => \inst4|u[4][1]~58_combout\);

-- Location: FF_X5_Y11_N11
\inst4|u[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[4][1]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[4][1]~q\);

-- Location: LCCOMB_X6_Y10_N12
\inst4|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~39_combout\ = \inst4|u[4][1]~q\ $ (\inst4|sorteio|DECIMAL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[4][1]~q\,
	datac => \inst4|sorteio|DECIMAL\(1),
	combout => \inst4|_~39_combout\);

-- Location: LCCOMB_X6_Y10_N16
\inst4|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~38_combout\ = (\inst4|sorteio|DECIMAL\(5) & ((\inst4|u[4][4]~q\ $ (\inst4|sorteio|DECIMAL\(4))) # (!\inst4|d[4][1]~q\))) # (!\inst4|sorteio|DECIMAL\(5) & ((\inst4|d[4][1]~q\) # (\inst4|u[4][4]~q\ $ (\inst4|sorteio|DECIMAL\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|d[4][1]~q\,
	datad => \inst4|sorteio|DECIMAL\(4),
	combout => \inst4|_~38_combout\);

-- Location: LCCOMB_X6_Y10_N14
\inst4|_~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~40_combout\ = (\inst4|u[4][3]~q\ & ((\inst4|u[4][2]~q\ $ (\inst4|sorteio|DECIMAL\(2))) # (!\inst4|sorteio|DECIMAL\(3)))) # (!\inst4|u[4][3]~q\ & ((\inst4|sorteio|DECIMAL\(3)) # (\inst4|u[4][2]~q\ $ (\inst4|sorteio|DECIMAL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~q\,
	datab => \inst4|sorteio|DECIMAL\(3),
	datac => \inst4|u[4][2]~q\,
	datad => \inst4|sorteio|DECIMAL\(2),
	combout => \inst4|_~40_combout\);

-- Location: LCCOMB_X10_Y10_N6
\inst4|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~37_combout\ = (\inst4|d[4][2]~q\ & ((\inst4|d[4][3]~q\ $ (\inst4|sorteio|DECIMAL\(7))) # (!\inst4|sorteio|DECIMAL\(6)))) # (!\inst4|d[4][2]~q\ & ((\inst4|sorteio|DECIMAL\(6)) # (\inst4|d[4][3]~q\ $ (\inst4|sorteio|DECIMAL\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~q\,
	datab => \inst4|d[4][3]~q\,
	datac => \inst4|sorteio|DECIMAL\(6),
	datad => \inst4|sorteio|DECIMAL\(7),
	combout => \inst4|_~37_combout\);

-- Location: LCCOMB_X6_Y10_N28
\inst4|_~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~41_combout\ = (\inst4|_~39_combout\) # ((\inst4|_~38_combout\) # ((\inst4|_~40_combout\) # (\inst4|_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~39_combout\,
	datab => \inst4|_~38_combout\,
	datac => \inst4|_~40_combout\,
	datad => \inst4|_~37_combout\,
	combout => \inst4|_~41_combout\);

-- Location: LCCOMB_X4_Y10_N12
\inst4|u[1][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~12_combout\ = (\inst4|_~64_combout\) # ((\inst4|_~62_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|u[1][4]~12_combout\);

-- Location: LCCOMB_X4_Y10_N18
\inst4|u[1][4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~11_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~69_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[1][4]~11_combout\);

-- Location: LCCOMB_X4_Y10_N16
\inst4|u[1][4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~10_combout\ = (\inst4|u[1][4]~q\ & ((\inst4|_~49_combout\) # ((\inst4|sorteio|DECIMAL\(4) & \inst4|_~48_combout\)))) # (!\inst4|u[1][4]~q\ & (\inst4|sorteio|DECIMAL\(4) & ((\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|sorteio|DECIMAL\(4),
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|u[1][4]~10_combout\);

-- Location: LCCOMB_X4_Y10_N10
\inst4|u[1][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][4]~13_combout\ = (\inst4|u[1][4]~11_combout\) # ((\inst4|u[1][4]~10_combout\) # ((\inst4|u[1][4]~12_combout\ & \inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~12_combout\,
	datab => \inst4|u[1][4]~11_combout\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst4|u[1][4]~10_combout\,
	combout => \inst4|u[1][4]~13_combout\);

-- Location: FF_X4_Y10_N11
\inst4|u[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][4]~q\);

-- Location: LCCOMB_X6_Y9_N22
\inst4|u[1][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~2_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|_~66_combout\,
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[1][3]~2_combout\);

-- Location: LCCOMB_X6_Y9_N0
\inst4|u[1][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~3_combout\ = (\inst4|u[1][3]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[1][3]~3_combout\);

-- Location: LCCOMB_X6_Y9_N8
\inst4|u[1][3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~0_combout\ = (\inst4|_~48_combout\ & ((\inst4|sorteio|DECIMAL\(3)) # ((\inst4|_~49_combout\ & \inst4|u[1][3]~q\)))) # (!\inst4|_~48_combout\ & (\inst4|_~49_combout\ & (\inst4|u[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|sorteio|DECIMAL\(3),
	combout => \inst4|u[1][3]~0_combout\);

-- Location: LCCOMB_X6_Y9_N16
\inst4|u[1][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~1_combout\ = (\inst4|u[1][3]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[1][3]~1_combout\);

-- Location: LCCOMB_X6_Y9_N30
\inst4|u[1][3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][3]~4_combout\ = (\inst4|u[1][3]~2_combout\) # ((\inst4|u[1][3]~3_combout\) # ((\inst4|u[1][3]~0_combout\) # (\inst4|u[1][3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~2_combout\,
	datab => \inst4|u[1][3]~3_combout\,
	datac => \inst4|u[1][3]~0_combout\,
	datad => \inst4|u[1][3]~1_combout\,
	combout => \inst4|u[1][3]~4_combout\);

-- Location: FF_X6_Y9_N31
\inst4|u[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][3]~q\);

-- Location: LCCOMB_X6_Y8_N10
\inst4|d[1][2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~7_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[1][2]~7_combout\);

-- Location: LCCOMB_X6_Y8_N28
\inst4|d[1][2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~8_combout\ = (\inst4|d[1][2]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[1][2]~8_combout\);

-- Location: LCCOMB_X6_Y8_N8
\inst4|d[1][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~6_combout\ = (\inst4|d[1][2]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~58_combout\) # (\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~q\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[1][2]~6_combout\);

-- Location: LCCOMB_X6_Y10_N18
\inst4|d[1][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~5_combout\ = (\inst4|sorteio|DECIMAL\(6) & ((\inst4|_~48_combout\) # ((\inst4|d[1][2]~q\ & \inst4|_~49_combout\)))) # (!\inst4|sorteio|DECIMAL\(6) & (\inst4|d[1][2]~q\ & (\inst4|_~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(6),
	datab => \inst4|d[1][2]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|d[1][2]~5_combout\);

-- Location: LCCOMB_X6_Y8_N12
\inst4|d[1][2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][2]~9_combout\ = (\inst4|d[1][2]~7_combout\) # ((\inst4|d[1][2]~8_combout\) # ((\inst4|d[1][2]~6_combout\) # (\inst4|d[1][2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][2]~7_combout\,
	datab => \inst4|d[1][2]~8_combout\,
	datac => \inst4|d[1][2]~6_combout\,
	datad => \inst4|d[1][2]~5_combout\,
	combout => \inst4|d[1][2]~9_combout\);

-- Location: FF_X6_Y8_N13
\inst4|d[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[1][2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][2]~q\);

-- Location: LCCOMB_X8_Y9_N4
\inst4|d[1][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~2_combout\ = (\inst4|d[1][3]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|d[1][3]~2_combout\);

-- Location: LCCOMB_X8_Y9_N20
\inst4|d[1][3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~3_combout\ = (\inst4|d[1][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[1][3]~3_combout\);

-- Location: LCCOMB_X8_Y9_N22
\inst4|d[1][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~1_combout\ = (\inst4|d[1][3]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~58_combout\) # (\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[1][3]~1_combout\);

-- Location: LCCOMB_X8_Y9_N24
\inst4|d[1][3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~0_combout\ = (\inst4|sorteio|DECIMAL\(7) & ((\inst4|_~48_combout\) # ((\inst4|d[1][3]~q\ & \inst4|_~49_combout\)))) # (!\inst4|sorteio|DECIMAL\(7) & (\inst4|d[1][3]~q\ & ((\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(7),
	datab => \inst4|d[1][3]~q\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[1][3]~0_combout\);

-- Location: LCCOMB_X8_Y9_N0
\inst4|d[1][3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][3]~4_combout\ = (\inst4|d[1][3]~2_combout\) # ((\inst4|d[1][3]~3_combout\) # ((\inst4|d[1][3]~1_combout\) # (\inst4|d[1][3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~2_combout\,
	datab => \inst4|d[1][3]~3_combout\,
	datac => \inst4|d[1][3]~1_combout\,
	datad => \inst4|d[1][3]~0_combout\,
	combout => \inst4|d[1][3]~4_combout\);

-- Location: FF_X8_Y9_N1
\inst4|d[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[1][3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][3]~q\);

-- Location: LCCOMB_X6_Y8_N22
\inst4|u[1][2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~8_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~70_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[1][2]~8_combout\);

-- Location: LCCOMB_X6_Y8_N4
\inst4|u[1][2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~7_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[1][2]~7_combout\);

-- Location: LCCOMB_X6_Y8_N26
\inst4|u[1][2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~5_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~49_combout\) # ((\inst4|sorteio|DECIMAL\(2) & \inst4|_~48_combout\)))) # (!\inst4|u[1][2]~q\ & (\inst4|sorteio|DECIMAL\(2) & ((\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|sorteio|DECIMAL\(2),
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|u[1][2]~5_combout\);

-- Location: LCCOMB_X6_Y8_N6
\inst4|u[1][2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~6_combout\ = (\inst4|u[1][2]~q\ & ((\inst4|_~58_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~58_combout\,
	datab => \inst4|u[1][2]~q\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[1][2]~6_combout\);

-- Location: LCCOMB_X6_Y8_N16
\inst4|u[1][2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][2]~9_combout\ = (\inst4|u[1][2]~8_combout\) # ((\inst4|u[1][2]~7_combout\) # ((\inst4|u[1][2]~5_combout\) # (\inst4|u[1][2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~8_combout\,
	datab => \inst4|u[1][2]~7_combout\,
	datac => \inst4|u[1][2]~5_combout\,
	datad => \inst4|u[1][2]~6_combout\,
	combout => \inst4|u[1][2]~9_combout\);

-- Location: FF_X6_Y8_N17
\inst4|u[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][2]~q\);

-- Location: LCCOMB_X5_Y7_N20
\inst4|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~6_combout\ = (!\inst4|u[1][3]~q\ & (!\inst4|d[1][2]~q\ & (!\inst4|d[1][3]~q\ & !\inst4|u[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|d[1][2]~q\,
	datac => \inst4|d[1][3]~q\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst4|_~6_combout\);

-- Location: LCCOMB_X6_Y11_N10
\inst4|d[1][1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~12_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[1][1]~12_combout\);

-- Location: LCCOMB_X6_Y11_N18
\inst4|d[1][1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~13_combout\ = (\inst4|d[1][1]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[1][1]~13_combout\);

-- Location: LCCOMB_X6_Y11_N8
\inst4|d[1][1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~10_combout\ = (\inst4|_~48_combout\ & ((\inst4|sorteio|DECIMAL\(5)) # ((\inst4|d[1][1]~q\ & \inst4|_~49_combout\)))) # (!\inst4|_~48_combout\ & (\inst4|d[1][1]~q\ & ((\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|sorteio|DECIMAL\(5),
	datad => \inst4|_~49_combout\,
	combout => \inst4|d[1][1]~10_combout\);

-- Location: LCCOMB_X6_Y11_N28
\inst4|d[1][1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~11_combout\ = (\inst4|d[1][1]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~61_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[1][1]~11_combout\);

-- Location: LCCOMB_X6_Y11_N2
\inst4|d[1][1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[1][1]~14_combout\ = (\inst4|d[1][1]~12_combout\) # ((\inst4|d[1][1]~13_combout\) # ((\inst4|d[1][1]~10_combout\) # (\inst4|d[1][1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][1]~12_combout\,
	datab => \inst4|d[1][1]~13_combout\,
	datac => \inst4|d[1][1]~10_combout\,
	datad => \inst4|d[1][1]~11_combout\,
	combout => \inst4|d[1][1]~14_combout\);

-- Location: FF_X6_Y11_N3
\inst4|d[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[1][1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[1][1]~q\);

-- Location: LCCOMB_X5_Y7_N24
\inst4|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~7_combout\ = (!\inst4|u[1][4]~q\ & (\inst4|_~6_combout\ & (!\inst4|u[1][1]~q\ & !\inst4|d[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst4|_~6_combout\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|d[1][1]~q\,
	combout => \inst4|_~7_combout\);

-- Location: LCCOMB_X6_Y10_N20
\inst4|_~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~47_combout\ = (\inst4|_~46_combout\ & (\inst4|_~41_combout\ & (\inst4|_~7_combout\ & \inst4|_~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~7_combout\,
	datad => \inst4|_~36_combout\,
	combout => \inst4|_~47_combout\);

-- Location: LCCOMB_X6_Y10_N6
\inst4|_~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~48_combout\ = (\inst4|_~31_combout\ & (\inst4|temp~q\ & (\inst2|_~8_combout\ & \inst4|_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~31_combout\,
	datab => \inst4|temp~q\,
	datac => \inst2|_~8_combout\,
	datad => \inst4|_~47_combout\,
	combout => \inst4|_~48_combout\);

-- Location: LCCOMB_X5_Y8_N12
\inst4|u[2][4]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~72_combout\ = (\inst4|u[2][4]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[2][4]~72_combout\);

-- Location: LCCOMB_X5_Y8_N20
\inst4|u[2][4]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~71_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~65_combout\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[2][4]~71_combout\);

-- Location: LCCOMB_X5_Y8_N24
\inst4|_~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~78_combout\ = (\inst4|sorteio|DECIMAL\(4) & (\inst4|_~63_combout\ & (\inst4|_~50_combout\ & \inst4|_~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(4),
	datab => \inst4|_~63_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~72_combout\,
	combout => \inst4|_~78_combout\);

-- Location: LCCOMB_X5_Y8_N26
\inst4|u[2][4]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~69_combout\ = (\inst4|_~78_combout\) # ((\inst4|u[2][4]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~78_combout\,
	combout => \inst4|u[2][4]~69_combout\);

-- Location: LCCOMB_X6_Y8_N14
\inst4|_~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~82_combout\ = (\inst4|_~50_combout\ & (((!\inst4|_~63_combout\) # (!\inst4|_~13_combout\)) # (!\inst4|_~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~41_combout\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~13_combout\,
	datad => \inst4|_~63_combout\,
	combout => \inst4|_~82_combout\);

-- Location: LCCOMB_X5_Y8_N10
\inst4|u[2][4]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~70_combout\ = (\inst4|u[2][4]~q\ & ((\inst4|_~82_combout\) # ((\inst4|_~61_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~q\,
	datab => \inst4|_~82_combout\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[2][4]~70_combout\);

-- Location: LCCOMB_X5_Y8_N30
\inst4|u[2][4]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][4]~73_combout\ = (\inst4|u[2][4]~72_combout\) # ((\inst4|u[2][4]~71_combout\) # ((\inst4|u[2][4]~69_combout\) # (\inst4|u[2][4]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][4]~72_combout\,
	datab => \inst4|u[2][4]~71_combout\,
	datac => \inst4|u[2][4]~69_combout\,
	datad => \inst4|u[2][4]~70_combout\,
	combout => \inst4|u[2][4]~73_combout\);

-- Location: FF_X5_Y8_N31
\inst4|u[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][4]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][4]~q\);

-- Location: LCCOMB_X5_Y8_N6
\inst4|d[2][1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~58_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~64_combout\) # (\inst4|_~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~64_combout\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|_~62_combout\,
	combout => \inst4|d[2][1]~58_combout\);

-- Location: LCCOMB_X5_Y8_N28
\inst4|d[2][1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~59_combout\ = (\inst4|d[2][1]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[2][1]~59_combout\);

-- Location: LCCOMB_X5_Y8_N18
\inst4|_~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~77_combout\ = (\inst4|sorteio|DECIMAL\(5) & (\inst4|_~63_combout\ & (\inst4|_~50_combout\ & \inst4|_~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|_~63_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~72_combout\,
	combout => \inst4|_~77_combout\);

-- Location: LCCOMB_X5_Y8_N22
\inst4|d[2][1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~56_combout\ = (\inst4|_~77_combout\) # ((\inst4|d[2][1]~q\ & ((\inst4|_~48_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|_~77_combout\,
	combout => \inst4|d[2][1]~56_combout\);

-- Location: LCCOMB_X5_Y8_N2
\inst4|d[2][1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~57_combout\ = (\inst4|d[2][1]~q\ & ((\inst4|_~58_combout\) # ((\inst4|_~82_combout\) # (\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~58_combout\,
	datab => \inst4|d[2][1]~q\,
	datac => \inst4|_~82_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|d[2][1]~57_combout\);

-- Location: LCCOMB_X5_Y8_N8
\inst4|d[2][1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][1]~60_combout\ = (\inst4|d[2][1]~58_combout\) # ((\inst4|d[2][1]~59_combout\) # ((\inst4|d[2][1]~56_combout\) # (\inst4|d[2][1]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~58_combout\,
	datab => \inst4|d[2][1]~59_combout\,
	datac => \inst4|d[2][1]~56_combout\,
	datad => \inst4|d[2][1]~57_combout\,
	combout => \inst4|d[2][1]~60_combout\);

-- Location: FF_X5_Y8_N9
\inst4|d[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[2][1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][1]~q\);

-- Location: LCCOMB_X7_Y10_N26
\inst4|d[2][2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~54_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~70_combout\) # ((\inst4|_~69_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[2][2]~54_combout\);

-- Location: LCCOMB_X7_Y10_N0
\inst4|d[2][2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~53_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~66_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~66_combout\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|d[2][2]~q\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[2][2]~53_combout\);

-- Location: LCCOMB_X7_Y8_N12
\inst4|_~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~76_combout\ = (\inst4|sorteio|DECIMAL\(6) & (\inst4|_~72_combout\ & (\inst4|_~63_combout\ & \inst4|_~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(6),
	datab => \inst4|_~72_combout\,
	datac => \inst4|_~63_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|_~76_combout\);

-- Location: LCCOMB_X7_Y8_N8
\inst4|d[2][2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~51_combout\ = (\inst4|_~76_combout\) # ((\inst4|d[2][2]~q\ & ((\inst4|_~48_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|d[2][2]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~76_combout\,
	combout => \inst4|d[2][2]~51_combout\);

-- Location: LCCOMB_X7_Y8_N28
\inst4|d[2][2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~52_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|_~58_combout\) # ((\inst4|_~61_combout\) # (\inst4|_~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~58_combout\,
	datab => \inst4|d[2][2]~q\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|d[2][2]~52_combout\);

-- Location: LCCOMB_X7_Y10_N6
\inst4|d[2][2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][2]~55_combout\ = (\inst4|d[2][2]~54_combout\) # ((\inst4|d[2][2]~53_combout\) # ((\inst4|d[2][2]~51_combout\) # (\inst4|d[2][2]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~54_combout\,
	datab => \inst4|d[2][2]~53_combout\,
	datac => \inst4|d[2][2]~51_combout\,
	datad => \inst4|d[2][2]~52_combout\,
	combout => \inst4|d[2][2]~55_combout\);

-- Location: FF_X7_Y10_N7
\inst4|d[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[2][2]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][2]~q\);

-- Location: LCCOMB_X7_Y7_N26
\inst4|u[2][2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~65_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~82_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~61_combout\,
	datac => \inst4|_~82_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|u[2][2]~65_combout\);

-- Location: LCCOMB_X7_Y7_N24
\inst4|u[2][2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~66_combout\ = (\inst4|u[2][2]~q\ & ((\inst4|_~62_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[2][2]~66_combout\);

-- Location: LCCOMB_X7_Y7_N28
\inst4|_~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~74_combout\ = (\inst4|sorteio|DECIMAL\(2) & (\inst4|_~72_combout\ & (\inst4|_~50_combout\ & \inst4|_~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(2),
	datab => \inst4|_~72_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~63_combout\,
	combout => \inst4|_~74_combout\);

-- Location: LCCOMB_X7_Y7_N4
\inst4|u[2][2]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~64_combout\ = (\inst4|_~74_combout\) # ((\inst4|u[2][2]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~74_combout\,
	combout => \inst4|u[2][2]~64_combout\);

-- Location: LCCOMB_X8_Y7_N24
\inst4|u[2][2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~67_combout\ = (\inst4|u[2][2]~q\ & (((\inst4|_~69_combout\) # (\inst4|_~70_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[2][2]~67_combout\);

-- Location: LCCOMB_X7_Y7_N22
\inst4|u[2][2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][2]~68_combout\ = (\inst4|u[2][2]~65_combout\) # ((\inst4|u[2][2]~66_combout\) # ((\inst4|u[2][2]~64_combout\) # (\inst4|u[2][2]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~65_combout\,
	datab => \inst4|u[2][2]~66_combout\,
	datac => \inst4|u[2][2]~64_combout\,
	datad => \inst4|u[2][2]~67_combout\,
	combout => \inst4|u[2][2]~68_combout\);

-- Location: FF_X7_Y7_N23
\inst4|u[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][2]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][2]~q\);

-- Location: LCCOMB_X7_Y7_N10
\inst4|u[2][3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~62_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~70_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[2][3]~62_combout\);

-- Location: LCCOMB_X8_Y10_N12
\inst4|u[2][3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~61_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~62_combout\) # (\inst4|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[2][3]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[2][3]~61_combout\);

-- Location: LCCOMB_X7_Y7_N18
\inst4|_~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~73_combout\ = (\inst4|sorteio|DECIMAL\(3) & (\inst4|_~72_combout\ & (\inst4|_~50_combout\ & \inst4|_~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(3),
	datab => \inst4|_~72_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~63_combout\,
	combout => \inst4|_~73_combout\);

-- Location: LCCOMB_X7_Y7_N14
\inst4|u[2][3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~59_combout\ = (\inst4|_~73_combout\) # ((\inst4|u[2][3]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~73_combout\,
	combout => \inst4|u[2][3]~59_combout\);

-- Location: LCCOMB_X7_Y7_N12
\inst4|u[2][3]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~60_combout\ = (\inst4|u[2][3]~q\ & ((\inst4|_~58_combout\) # ((\inst4|_~61_combout\) # (\inst4|_~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|_~61_combout\,
	datad => \inst4|_~82_combout\,
	combout => \inst4|u[2][3]~60_combout\);

-- Location: LCCOMB_X7_Y7_N30
\inst4|u[2][3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][3]~63_combout\ = (\inst4|u[2][3]~62_combout\) # ((\inst4|u[2][3]~61_combout\) # ((\inst4|u[2][3]~59_combout\) # (\inst4|u[2][3]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~62_combout\,
	datab => \inst4|u[2][3]~61_combout\,
	datac => \inst4|u[2][3]~59_combout\,
	datad => \inst4|u[2][3]~60_combout\,
	combout => \inst4|u[2][3]~63_combout\);

-- Location: FF_X7_Y7_N31
\inst4|u[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][3]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][3]~q\);

-- Location: LCCOMB_X8_Y7_N2
\inst4|d[2][3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~48_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~62_combout\) # (\inst4|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|d[2][3]~48_combout\);

-- Location: LCCOMB_X7_Y7_N20
\inst4|d[2][3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~49_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~69_combout\) # ((\inst4|_~70_combout\) # (!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~69_combout\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|d[2][3]~49_combout\);

-- Location: LCCOMB_X7_Y7_N2
\inst4|_~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~75_combout\ = (\inst4|sorteio|DECIMAL\(7) & (\inst4|_~72_combout\ & (\inst4|_~50_combout\ & \inst4|_~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(7),
	datab => \inst4|_~72_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~63_combout\,
	combout => \inst4|_~75_combout\);

-- Location: LCCOMB_X7_Y7_N8
\inst4|d[2][3]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~46_combout\ = (\inst4|_~75_combout\) # ((\inst4|d[2][3]~q\ & ((\inst4|_~48_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~q\,
	datab => \inst4|_~48_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~75_combout\,
	combout => \inst4|d[2][3]~46_combout\);

-- Location: LCCOMB_X7_Y7_N6
\inst4|d[2][3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~47_combout\ = (\inst4|d[2][3]~q\ & ((\inst4|_~61_combout\) # ((\inst4|_~82_combout\) # (\inst4|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~61_combout\,
	datab => \inst4|d[2][3]~q\,
	datac => \inst4|_~82_combout\,
	datad => \inst4|_~58_combout\,
	combout => \inst4|d[2][3]~47_combout\);

-- Location: LCCOMB_X7_Y7_N16
\inst4|d[2][3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[2][3]~50_combout\ = (\inst4|d[2][3]~48_combout\) # ((\inst4|d[2][3]~49_combout\) # ((\inst4|d[2][3]~46_combout\) # (\inst4|d[2][3]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][3]~48_combout\,
	datab => \inst4|d[2][3]~49_combout\,
	datac => \inst4|d[2][3]~46_combout\,
	datad => \inst4|d[2][3]~47_combout\,
	combout => \inst4|d[2][3]~50_combout\);

-- Location: FF_X7_Y7_N17
\inst4|d[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[2][3]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[2][3]~q\);

-- Location: LCCOMB_X6_Y7_N2
\inst4|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~12_combout\ = (!\inst4|d[2][2]~q\ & (!\inst4|u[2][2]~q\ & (!\inst4|u[2][3]~q\ & !\inst4|d[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|d[2][3]~q\,
	combout => \inst4|_~12_combout\);

-- Location: LCCOMB_X6_Y7_N16
\inst4|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~13_combout\ = (!\inst4|u[2][1]~q\ & (!\inst4|u[2][4]~q\ & (!\inst4|d[2][1]~q\ & \inst4|_~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|_~12_combout\,
	combout => \inst4|_~13_combout\);

-- Location: LCCOMB_X7_Y7_N0
\inst4|_~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~72_combout\ = (\inst4|_~13_combout\ & \inst4|_~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~13_combout\,
	datad => \inst4|_~41_combout\,
	combout => \inst4|_~72_combout\);

-- Location: LCCOMB_X5_Y8_N0
\inst4|_~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~79_combout\ = (\inst4|sorteio|DECIMAL\(1) & (\inst4|_~63_combout\ & (\inst4|_~50_combout\ & \inst4|_~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(1),
	datab => \inst4|_~63_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~72_combout\,
	combout => \inst4|_~79_combout\);

-- Location: LCCOMB_X5_Y8_N16
\inst4|u[2][1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~74_combout\ = (\inst4|_~79_combout\) # ((\inst4|u[2][1]~q\ & ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~79_combout\,
	combout => \inst4|u[2][1]~74_combout\);

-- Location: LCCOMB_X6_Y8_N18
\inst4|u[2][1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~75_combout\ = (\inst4|u[2][1]~q\ & ((\inst4|_~82_combout\) # ((\inst4|_~58_combout\) # (\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|_~82_combout\,
	datac => \inst4|_~58_combout\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[2][1]~75_combout\);

-- Location: LCCOMB_X6_Y8_N30
\inst4|u[2][1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[2][1]~78_combout\ = (\inst4|u[2][1]~76_combout\) # ((\inst4|u[2][1]~77_combout\) # ((\inst4|u[2][1]~74_combout\) # (\inst4|u[2][1]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~76_combout\,
	datab => \inst4|u[2][1]~77_combout\,
	datac => \inst4|u[2][1]~74_combout\,
	datad => \inst4|u[2][1]~75_combout\,
	combout => \inst4|u[2][1]~78_combout\);

-- Location: FF_X6_Y8_N31
\inst4|u[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[2][1]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[2][1]~q\);

-- Location: LCCOMB_X6_Y10_N22
\inst4|_~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~44_combout\ = \inst4|sorteio|DECIMAL\(1) $ (\inst4|u[2][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sorteio|DECIMAL\(1),
	datad => \inst4|u[2][1]~q\,
	combout => \inst4|_~44_combout\);

-- Location: LCCOMB_X6_Y10_N2
\inst4|_~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~42_combout\ = (\inst4|d[2][2]~q\ & ((\inst4|sorteio|DECIMAL\(7) $ (\inst4|d[2][3]~q\)) # (!\inst4|sorteio|DECIMAL\(6)))) # (!\inst4|d[2][2]~q\ & ((\inst4|sorteio|DECIMAL\(6)) # (\inst4|sorteio|DECIMAL\(7) $ (\inst4|d[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst4|sorteio|DECIMAL\(7),
	datac => \inst4|sorteio|DECIMAL\(6),
	datad => \inst4|d[2][3]~q\,
	combout => \inst4|_~42_combout\);

-- Location: LCCOMB_X6_Y10_N8
\inst4|_~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~45_combout\ = (\inst4|sorteio|DECIMAL\(3) & ((\inst4|u[2][2]~q\ $ (\inst4|sorteio|DECIMAL\(2))) # (!\inst4|u[2][3]~q\))) # (!\inst4|sorteio|DECIMAL\(3) & ((\inst4|u[2][3]~q\) # (\inst4|u[2][2]~q\ $ (\inst4|sorteio|DECIMAL\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(3),
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|sorteio|DECIMAL\(2),
	combout => \inst4|_~45_combout\);

-- Location: LCCOMB_X6_Y10_N0
\inst4|_~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~43_combout\ = (\inst4|sorteio|DECIMAL\(5) & ((\inst4|sorteio|DECIMAL\(4) $ (\inst4|u[2][4]~q\)) # (!\inst4|d[2][1]~q\))) # (!\inst4|sorteio|DECIMAL\(5) & ((\inst4|d[2][1]~q\) # (\inst4|sorteio|DECIMAL\(4) $ (\inst4|u[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|sorteio|DECIMAL\(4),
	datac => \inst4|d[2][1]~q\,
	datad => \inst4|u[2][4]~q\,
	combout => \inst4|_~43_combout\);

-- Location: LCCOMB_X6_Y10_N10
\inst4|_~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~46_combout\ = (\inst4|_~44_combout\) # ((\inst4|_~42_combout\) # ((\inst4|_~45_combout\) # (\inst4|_~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~44_combout\,
	datab => \inst4|_~42_combout\,
	datac => \inst4|_~45_combout\,
	datad => \inst4|_~43_combout\,
	combout => \inst4|_~46_combout\);

-- Location: LCCOMB_X7_Y10_N22
\inst4|_~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~66_combout\ = (\inst4|_~64_combout\ & (((!\inst4|_~63_combout\) # (!\inst4|_~11_combout\)) # (!\inst4|_~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~46_combout\,
	datab => \inst4|_~11_combout\,
	datac => \inst4|_~64_combout\,
	datad => \inst4|_~63_combout\,
	combout => \inst4|_~66_combout\);

-- Location: LCCOMB_X6_Y11_N4
\inst4|u[6][3]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~82_combout\ = (\inst4|_~70_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~70_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[6][3]~82_combout\);

-- Location: LCCOMB_X6_Y11_N20
\inst4|u[6][3]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~79_combout\ = (\inst4|sorteio|DECIMAL\(3) & ((\inst4|_~69_combout\) # ((\inst4|u[6][3]~q\ & !\inst4|temp~q\)))) # (!\inst4|sorteio|DECIMAL\(3) & (\inst4|u[6][3]~q\ & ((!\inst4|temp~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(3),
	datab => \inst4|u[6][3]~q\,
	datac => \inst4|_~69_combout\,
	datad => \inst4|temp~q\,
	combout => \inst4|u[6][3]~79_combout\);

-- Location: LCCOMB_X7_Y11_N24
\inst4|u[6][3]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~80_combout\ = (\inst4|_~51_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|u[6][3]~80_combout\);

-- Location: LCCOMB_X7_Y11_N22
\inst4|u[6][3]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~81_combout\ = (\inst4|_~48_combout\) # ((\inst4|_~49_combout\) # (\inst4|u[6][3]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~48_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|u[6][3]~80_combout\,
	combout => \inst4|u[6][3]~81_combout\);

-- Location: LCCOMB_X6_Y11_N0
\inst4|u[6][3]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][3]~83_combout\ = (\inst4|u[6][3]~79_combout\) # ((\inst4|u[6][3]~q\ & ((\inst4|u[6][3]~82_combout\) # (\inst4|u[6][3]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~82_combout\,
	datab => \inst4|u[6][3]~79_combout\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|u[6][3]~81_combout\,
	combout => \inst4|u[6][3]~83_combout\);

-- Location: FF_X6_Y11_N1
\inst4|u[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][3]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][3]~q\);

-- Location: LCCOMB_X8_Y10_N4
\inst4|u[6][2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~85_combout\ = (!\inst2|_~8_combout\ & (\inst4|temp~q\ & (!\inst4|_~62_combout\ & !\inst4|_~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~8_combout\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~64_combout\,
	combout => \inst4|u[6][2]~85_combout\);

-- Location: LCCOMB_X8_Y10_N20
\inst4|u[6][2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~86_combout\ = (!\inst4|_~51_combout\ & (\inst4|u[6][2]~85_combout\ & (!\inst4|_~50_combout\ & !\inst4|_~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|u[6][2]~85_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[6][2]~86_combout\);

-- Location: LCCOMB_X9_Y10_N18
\inst4|u[6][2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~84_combout\ = (\inst4|_~15_combout\ & (\inst4|sorteio|DECIMAL\(2) & (\inst4|_~68_combout\ & \inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~15_combout\,
	datab => \inst4|sorteio|DECIMAL\(2),
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|u[6][2]~84_combout\);

-- Location: LCCOMB_X8_Y10_N28
\inst4|u[6][2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][2]~87_combout\ = (\inst4|_~67_combout\ & ((\inst4|u[6][2]~84_combout\) # ((!\inst4|u[6][2]~86_combout\ & \inst4|u[6][2]~q\)))) # (!\inst4|_~67_combout\ & (!\inst4|u[6][2]~86_combout\ & (\inst4|u[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~67_combout\,
	datab => \inst4|u[6][2]~86_combout\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|u[6][2]~84_combout\,
	combout => \inst4|u[6][2]~87_combout\);

-- Location: FF_X8_Y10_N29
\inst4|u[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][2]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][2]~q\);

-- Location: LCCOMB_X5_Y10_N6
\inst4|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~29_combout\ = (\inst4|sorteio|DECIMAL\(2) & ((\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[6][3]~q\)) # (!\inst4|u[6][2]~q\))) # (!\inst4|sorteio|DECIMAL\(2) & ((\inst4|u[6][2]~q\) # (\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(2),
	datab => \inst4|sorteio|DECIMAL\(3),
	datac => \inst4|u[6][3]~q\,
	datad => \inst4|u[6][2]~q\,
	combout => \inst4|_~29_combout\);

-- Location: LCCOMB_X11_Y10_N6
\inst4|d[6][1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~72_combout\ = (\inst4|sorteio|DECIMAL\(5) & ((\inst4|_~69_combout\) # ((\inst4|d[6][1]~q\ & !\inst4|temp~q\)))) # (!\inst4|sorteio|DECIMAL\(5) & (\inst4|d[6][1]~q\ & (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[6][1]~72_combout\);

-- Location: LCCOMB_X11_Y10_N24
\inst4|d[6][1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~75_combout\ = (\inst4|_~66_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|_~66_combout\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[6][1]~75_combout\);

-- Location: LCCOMB_X11_Y10_N12
\inst4|d[6][1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~73_combout\ = (\inst4|_~51_combout\) # ((\inst4|_~62_combout\) # (\inst4|_~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[6][1]~73_combout\);

-- Location: LCCOMB_X11_Y10_N2
\inst4|d[6][1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~74_combout\ = (\inst4|_~48_combout\) # ((\inst4|_~70_combout\) # (\inst4|d[6][1]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|d[6][1]~73_combout\,
	combout => \inst4|d[6][1]~74_combout\);

-- Location: LCCOMB_X11_Y10_N18
\inst4|d[6][1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][1]~76_combout\ = (\inst4|d[6][1]~72_combout\) # ((\inst4|d[6][1]~q\ & ((\inst4|d[6][1]~75_combout\) # (\inst4|d[6][1]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~72_combout\,
	datab => \inst4|d[6][1]~75_combout\,
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|d[6][1]~74_combout\,
	combout => \inst4|d[6][1]~76_combout\);

-- Location: FF_X11_Y10_N19
\inst4|d[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[6][1]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][1]~q\);

-- Location: LCCOMB_X5_Y10_N8
\inst4|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~27_combout\ = (\inst4|sorteio|DECIMAL\(5) & ((\inst4|u[6][4]~q\ $ (\inst4|sorteio|DECIMAL\(4))) # (!\inst4|d[6][1]~q\))) # (!\inst4|sorteio|DECIMAL\(5) & ((\inst4|d[6][1]~q\) # (\inst4|u[6][4]~q\ $ (\inst4|sorteio|DECIMAL\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|sorteio|DECIMAL\(4),
	datad => \inst4|d[6][1]~q\,
	combout => \inst4|_~27_combout\);

-- Location: LCCOMB_X11_Y10_N10
\inst4|d[6][2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~70_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~70_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[6][2]~70_combout\);

-- Location: LCCOMB_X11_Y10_N8
\inst4|d[6][2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~69_combout\ = (\inst4|sorteio|DECIMAL\(6) & ((\inst4|_~69_combout\) # ((\inst4|_~62_combout\ & \inst4|d[6][2]~q\)))) # (!\inst4|sorteio|DECIMAL\(6) & (\inst4|_~62_combout\ & (\inst4|d[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(6),
	datab => \inst4|_~62_combout\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|d[6][2]~69_combout\);

-- Location: LCCOMB_X11_Y10_N4
\inst4|d[6][2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~68_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~66_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|_~66_combout\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|d[6][2]~68_combout\);

-- Location: LCCOMB_X11_Y10_N28
\inst4|d[6][2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~67_combout\ = (\inst4|d[6][2]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[6][2]~67_combout\);

-- Location: LCCOMB_X11_Y10_N30
\inst4|d[6][2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][2]~71_combout\ = (\inst4|d[6][2]~70_combout\) # ((\inst4|d[6][2]~69_combout\) # ((\inst4|d[6][2]~68_combout\) # (\inst4|d[6][2]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~70_combout\,
	datab => \inst4|d[6][2]~69_combout\,
	datac => \inst4|d[6][2]~68_combout\,
	datad => \inst4|d[6][2]~67_combout\,
	combout => \inst4|d[6][2]~71_combout\);

-- Location: FF_X11_Y10_N31
\inst4|d[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[6][2]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][2]~q\);

-- Location: LCCOMB_X10_Y10_N30
\inst4|d[6][3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~65_combout\ = (\inst4|d[6][3]~q\ & ((\inst4|_~70_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|d[6][3]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|d[6][3]~65_combout\);

-- Location: LCCOMB_X9_Y10_N20
\inst4|d[6][3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~63_combout\ = (\inst4|sorteio|DECIMAL\(7) & (\inst4|_~15_combout\ & (\inst4|_~68_combout\ & \inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(7),
	datab => \inst4|_~15_combout\,
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|d[6][3]~63_combout\);

-- Location: LCCOMB_X10_Y10_N24
\inst4|d[6][3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~64_combout\ = (\inst4|_~62_combout\ & ((\inst4|d[6][3]~q\) # ((\inst4|_~67_combout\ & \inst4|d[6][3]~63_combout\)))) # (!\inst4|_~62_combout\ & (((\inst4|_~67_combout\ & \inst4|d[6][3]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~62_combout\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|_~67_combout\,
	datad => \inst4|d[6][3]~63_combout\,
	combout => \inst4|d[6][3]~64_combout\);

-- Location: LCCOMB_X10_Y10_N26
\inst4|d[6][3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~62_combout\ = (\inst4|d[6][3]~q\ & ((\inst4|_~66_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~66_combout\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~51_combout\,
	combout => \inst4|d[6][3]~62_combout\);

-- Location: LCCOMB_X10_Y10_N16
\inst4|d[6][3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~61_combout\ = (\inst4|d[6][3]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|d[6][3]~61_combout\);

-- Location: LCCOMB_X10_Y10_N2
\inst4|d[6][3]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|d[6][3]~66_combout\ = (\inst4|d[6][3]~65_combout\) # ((\inst4|d[6][3]~64_combout\) # ((\inst4|d[6][3]~62_combout\) # (\inst4|d[6][3]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~65_combout\,
	datab => \inst4|d[6][3]~64_combout\,
	datac => \inst4|d[6][3]~62_combout\,
	datad => \inst4|d[6][3]~61_combout\,
	combout => \inst4|d[6][3]~66_combout\);

-- Location: FF_X10_Y10_N3
\inst4|d[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|d[6][3]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|d[6][3]~q\);

-- Location: LCCOMB_X5_Y10_N26
\inst4|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~26_combout\ = (\inst4|sorteio|DECIMAL\(7) & ((\inst4|sorteio|DECIMAL\(6) $ (\inst4|d[6][2]~q\)) # (!\inst4|d[6][3]~q\))) # (!\inst4|sorteio|DECIMAL\(7) & ((\inst4|d[6][3]~q\) # (\inst4|sorteio|DECIMAL\(6) $ (\inst4|d[6][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(7),
	datab => \inst4|sorteio|DECIMAL\(6),
	datac => \inst4|d[6][2]~q\,
	datad => \inst4|d[6][3]~q\,
	combout => \inst4|_~26_combout\);

-- Location: LCCOMB_X2_Y10_N10
\inst4|u[6][1]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~98_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~70_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datac => \inst4|temp~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[6][1]~98_combout\);

-- Location: LCCOMB_X2_Y10_N14
\inst4|u[6][1]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~96_combout\ = (\inst4|_~15_combout\ & (\inst4|sorteio|DECIMAL\(1) & (\inst4|_~68_combout\ & \inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~15_combout\,
	datab => \inst4|sorteio|DECIMAL\(1),
	datac => \inst4|_~68_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|u[6][1]~96_combout\);

-- Location: LCCOMB_X2_Y10_N28
\inst4|u[6][1]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~97_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~62_combout\) # ((\inst4|u[6][1]~96_combout\ & \inst4|_~67_combout\)))) # (!\inst4|u[6][1]~q\ & (\inst4|u[6][1]~96_combout\ & ((\inst4|_~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|u[6][1]~96_combout\,
	datac => \inst4|_~62_combout\,
	datad => \inst4|_~67_combout\,
	combout => \inst4|u[6][1]~97_combout\);

-- Location: LCCOMB_X2_Y10_N22
\inst4|u[6][1]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~95_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[6][1]~95_combout\);

-- Location: LCCOMB_X2_Y10_N12
\inst4|u[6][1]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~94_combout\ = (\inst4|u[6][1]~q\ & ((\inst4|_~49_combout\) # ((\inst4|_~50_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|_~50_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|u[6][1]~94_combout\);

-- Location: LCCOMB_X2_Y10_N6
\inst4|u[6][1]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][1]~99_combout\ = (\inst4|u[6][1]~98_combout\) # ((\inst4|u[6][1]~97_combout\) # ((\inst4|u[6][1]~95_combout\) # (\inst4|u[6][1]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~98_combout\,
	datab => \inst4|u[6][1]~97_combout\,
	datac => \inst4|u[6][1]~95_combout\,
	datad => \inst4|u[6][1]~94_combout\,
	combout => \inst4|u[6][1]~99_combout\);

-- Location: FF_X2_Y10_N7
\inst4|u[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][1]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][1]~q\);

-- Location: LCCOMB_X2_Y10_N20
\inst4|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~28_combout\ = \inst4|u[6][1]~q\ $ (\inst4|sorteio|DECIMAL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datad => \inst4|sorteio|DECIMAL\(1),
	combout => \inst4|_~28_combout\);

-- Location: LCCOMB_X5_Y10_N16
\inst4|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~30_combout\ = (\inst4|_~29_combout\) # ((\inst4|_~27_combout\) # ((\inst4|_~26_combout\) # (\inst4|_~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~29_combout\,
	datab => \inst4|_~27_combout\,
	datac => \inst4|_~26_combout\,
	datad => \inst4|_~28_combout\,
	combout => \inst4|_~30_combout\);

-- Location: LCCOMB_X6_Y10_N26
\inst4|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~31_combout\ = (\inst4|_~30_combout\ & \inst4|_~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|_~30_combout\,
	datad => \inst4|_~25_combout\,
	combout => \inst4|_~31_combout\);

-- Location: LCCOMB_X6_Y10_N4
\inst4|_~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~49_combout\ = (\inst4|temp~q\ & (\inst2|_~8_combout\ & ((!\inst4|_~47_combout\) # (!\inst4|_~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~31_combout\,
	datab => \inst4|temp~q\,
	datac => \inst2|_~8_combout\,
	datad => \inst4|_~47_combout\,
	combout => \inst4|_~49_combout\);

-- Location: LCCOMB_X4_Y10_N4
\inst4|u[1][1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~14_combout\ = (\inst4|sorteio|DECIMAL\(1) & ((\inst4|_~48_combout\) # ((\inst4|_~49_combout\ & \inst4|u[1][1]~q\)))) # (!\inst4|sorteio|DECIMAL\(1) & (\inst4|_~49_combout\ & (\inst4|u[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(1),
	datab => \inst4|_~49_combout\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|u[1][1]~14_combout\);

-- Location: LCCOMB_X4_Y10_N28
\inst4|u[1][1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~15_combout\ = (\inst4|u[1][1]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~58_combout\) # (\inst4|_~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|_~58_combout\,
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|_~61_combout\,
	combout => \inst4|u[1][1]~15_combout\);

-- Location: LCCOMB_X4_Y10_N14
\inst4|u[1][1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[1][1]~18_combout\ = (\inst4|u[1][1]~16_combout\) # ((\inst4|u[1][1]~17_combout\) # ((\inst4|u[1][1]~14_combout\) # (\inst4|u[1][1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][1]~16_combout\,
	datab => \inst4|u[1][1]~17_combout\,
	datac => \inst4|u[1][1]~14_combout\,
	datad => \inst4|u[1][1]~15_combout\,
	combout => \inst4|u[1][1]~18_combout\);

-- Location: FF_X4_Y10_N15
\inst4|u[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[1][1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[1][1]~q\);

-- Location: LCCOMB_X4_Y10_N26
\inst4|_~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~54_combout\ = \inst4|u[1][1]~q\ $ (\inst4|sorteio|DECIMAL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|u[1][1]~q\,
	datad => \inst4|sorteio|DECIMAL\(1),
	combout => \inst4|_~54_combout\);

-- Location: LCCOMB_X4_Y10_N6
\inst4|_~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~53_combout\ = (\inst4|sorteio|DECIMAL\(5) & ((\inst4|u[1][4]~q\ $ (\inst4|sorteio|DECIMAL\(4))) # (!\inst4|d[1][1]~q\))) # (!\inst4|sorteio|DECIMAL\(5) & ((\inst4|d[1][1]~q\) # (\inst4|u[1][4]~q\ $ (\inst4|sorteio|DECIMAL\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|sorteio|DECIMAL\(4),
	datad => \inst4|d[1][1]~q\,
	combout => \inst4|_~53_combout\);

-- Location: LCCOMB_X5_Y10_N12
\inst4|_~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~52_combout\ = (\inst4|sorteio|DECIMAL\(7) & ((\inst4|sorteio|DECIMAL\(6) $ (\inst4|d[1][2]~q\)) # (!\inst4|d[1][3]~q\))) # (!\inst4|sorteio|DECIMAL\(7) & ((\inst4|d[1][3]~q\) # (\inst4|sorteio|DECIMAL\(6) $ (\inst4|d[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(7),
	datab => \inst4|sorteio|DECIMAL\(6),
	datac => \inst4|d[1][2]~q\,
	datad => \inst4|d[1][3]~q\,
	combout => \inst4|_~52_combout\);

-- Location: LCCOMB_X5_Y10_N14
\inst4|_~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~55_combout\ = (\inst4|sorteio|DECIMAL\(2) & ((\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[1][3]~q\)) # (!\inst4|u[1][2]~q\))) # (!\inst4|sorteio|DECIMAL\(2) & ((\inst4|u[1][2]~q\) # (\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(2),
	datab => \inst4|sorteio|DECIMAL\(3),
	datac => \inst4|u[1][3]~q\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst4|_~55_combout\);

-- Location: LCCOMB_X7_Y10_N2
\inst4|_~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~56_combout\ = (\inst4|_~54_combout\) # ((\inst4|_~53_combout\) # ((\inst4|_~52_combout\) # (\inst4|_~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~54_combout\,
	datab => \inst4|_~53_combout\,
	datac => \inst4|_~52_combout\,
	datad => \inst4|_~55_combout\,
	combout => \inst4|_~56_combout\);

-- Location: LCCOMB_X7_Y10_N18
\inst4|_~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~67_combout\ = (\inst4|_~56_combout\ & (\inst4|_~41_combout\ & (\inst4|_~36_combout\ & \inst4|_~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~56_combout\,
	datab => \inst4|_~41_combout\,
	datac => \inst4|_~36_combout\,
	datad => \inst4|_~46_combout\,
	combout => \inst4|_~67_combout\);

-- Location: LCCOMB_X2_Y10_N30
\inst4|u[6][4]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~91_combout\ = (\inst4|u[6][4]~90_combout\ & ((\inst4|_~67_combout\) # ((\inst4|_~62_combout\ & \inst4|u[6][4]~q\)))) # (!\inst4|u[6][4]~90_combout\ & (\inst4|_~62_combout\ & (\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~90_combout\,
	datab => \inst4|_~62_combout\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|_~67_combout\,
	combout => \inst4|u[6][4]~91_combout\);

-- Location: LCCOMB_X2_Y10_N24
\inst4|u[6][4]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~92_combout\ = (\inst4|u[6][4]~q\ & ((\inst4|_~70_combout\) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|_~70_combout\,
	combout => \inst4|u[6][4]~92_combout\);

-- Location: LCCOMB_X2_Y10_N26
\inst4|u[6][4]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~89_combout\ = (\inst4|u[6][4]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~65_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~51_combout\,
	datab => \inst4|u[6][4]~q\,
	datac => \inst4|_~65_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[6][4]~89_combout\);

-- Location: LCCOMB_X2_Y10_N18
\inst4|u[6][4]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~88_combout\ = (\inst4|u[6][4]~q\ & ((\inst4|_~48_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~48_combout\,
	datab => \inst4|_~49_combout\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|_~50_combout\,
	combout => \inst4|u[6][4]~88_combout\);

-- Location: LCCOMB_X2_Y10_N8
\inst4|u[6][4]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[6][4]~93_combout\ = (\inst4|u[6][4]~91_combout\) # ((\inst4|u[6][4]~92_combout\) # ((\inst4|u[6][4]~89_combout\) # (\inst4|u[6][4]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~91_combout\,
	datab => \inst4|u[6][4]~92_combout\,
	datac => \inst4|u[6][4]~89_combout\,
	datad => \inst4|u[6][4]~88_combout\,
	combout => \inst4|u[6][4]~93_combout\);

-- Location: FF_X2_Y10_N9
\inst4|u[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[6][4]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[6][4]~q\);

-- Location: LCCOMB_X3_Y10_N28
\inst4|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~14_combout\ = (!\inst4|d[6][2]~q\ & (!\inst4|d[6][3]~q\ & (!\inst4|u[6][2]~q\ & !\inst4|u[6][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][2]~q\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst4|_~14_combout\);

-- Location: LCCOMB_X3_Y10_N30
\inst4|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~15_combout\ = (!\inst4|u[6][4]~q\ & (!\inst4|d[6][1]~q\ & (!\inst4|u[6][1]~q\ & \inst4|_~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~q\,
	datab => \inst4|d[6][1]~q\,
	datac => \inst4|u[6][1]~q\,
	datad => \inst4|_~14_combout\,
	combout => \inst4|_~15_combout\);

-- Location: LCCOMB_X7_Y10_N20
\inst4|_~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~69_combout\ = (\inst4|_~25_combout\ & (\inst4|_~68_combout\ & (\inst4|_~15_combout\ & \inst4|_~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~25_combout\,
	datab => \inst4|_~68_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|_~67_combout\,
	combout => \inst4|_~69_combout\);

-- Location: LCCOMB_X8_Y11_N12
\inst4|u[5][3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~22_combout\ = (\inst4|u[5][3]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|temp~q\,
	datab => \inst4|_~70_combout\,
	datac => \inst4|u[5][3]~q\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[5][3]~22_combout\);

-- Location: LCCOMB_X8_Y11_N24
\inst4|u[5][3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~21_combout\ = (\inst4|sorteio|DECIMAL\(3) & ((\inst4|_~80_combout\) # ((\inst4|_~71_combout\ & \inst4|u[5][3]~q\)))) # (!\inst4|sorteio|DECIMAL\(3) & (\inst4|_~71_combout\ & (\inst4|u[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(3),
	datab => \inst4|_~71_combout\,
	datac => \inst4|u[5][3]~q\,
	datad => \inst4|_~80_combout\,
	combout => \inst4|u[5][3]~21_combout\);

-- Location: LCCOMB_X8_Y11_N8
\inst4|u[5][3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~20_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~65_combout\) # ((\inst4|_~51_combout\) # (\inst4|_~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~65_combout\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|_~51_combout\,
	datad => \inst4|_~66_combout\,
	combout => \inst4|u[5][3]~20_combout\);

-- Location: LCCOMB_X8_Y11_N18
\inst4|u[5][3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~19_combout\ = (\inst4|u[5][3]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~49_combout\) # (\inst4|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~50_combout\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|_~49_combout\,
	datad => \inst4|_~48_combout\,
	combout => \inst4|u[5][3]~19_combout\);

-- Location: LCCOMB_X8_Y11_N14
\inst4|u[5][3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][3]~23_combout\ = (\inst4|u[5][3]~22_combout\) # ((\inst4|u[5][3]~21_combout\) # ((\inst4|u[5][3]~20_combout\) # (\inst4|u[5][3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][3]~22_combout\,
	datab => \inst4|u[5][3]~21_combout\,
	datac => \inst4|u[5][3]~20_combout\,
	datad => \inst4|u[5][3]~19_combout\,
	combout => \inst4|u[5][3]~23_combout\);

-- Location: FF_X8_Y11_N15
\inst4|u[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][3]~q\);

-- Location: LCCOMB_X5_Y10_N0
\inst4|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~24_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[5][3]~q\)) # (!\inst4|sorteio|DECIMAL\(2)))) # (!\inst4|u[5][2]~q\ & ((\inst4|sorteio|DECIMAL\(2)) # (\inst4|sorteio|DECIMAL\(3) $ (\inst4|u[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|sorteio|DECIMAL\(3),
	datac => \inst4|sorteio|DECIMAL\(2),
	datad => \inst4|u[5][3]~q\,
	combout => \inst4|_~24_combout\);

-- Location: LCCOMB_X6_Y10_N30
\inst4|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~23_combout\ = \inst4|sorteio|DECIMAL\(1) $ (\inst4|u[5][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|sorteio|DECIMAL\(1),
	datad => \inst4|u[5][1]~q\,
	combout => \inst4|_~23_combout\);

-- Location: LCCOMB_X1_Y10_N14
\inst4|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~22_combout\ = (\inst4|sorteio|DECIMAL\(5) & ((\inst4|sorteio|DECIMAL\(4) $ (\inst4|u[5][4]~q\)) # (!\inst4|d[5][1]~q\))) # (!\inst4|sorteio|DECIMAL\(5) & ((\inst4|d[5][1]~q\) # (\inst4|sorteio|DECIMAL\(4) $ (\inst4|u[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(5),
	datab => \inst4|sorteio|DECIMAL\(4),
	datac => \inst4|u[5][4]~q\,
	datad => \inst4|d[5][1]~q\,
	combout => \inst4|_~22_combout\);

-- Location: LCCOMB_X9_Y10_N14
\inst4|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~21_combout\ = (\inst4|sorteio|DECIMAL\(6) & ((\inst4|d[5][3]~q\ $ (\inst4|sorteio|DECIMAL\(7))) # (!\inst4|d[5][2]~q\))) # (!\inst4|sorteio|DECIMAL\(6) & ((\inst4|d[5][2]~q\) # (\inst4|d[5][3]~q\ $ (\inst4|sorteio|DECIMAL\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sorteio|DECIMAL\(6),
	datab => \inst4|d[5][3]~q\,
	datac => \inst4|sorteio|DECIMAL\(7),
	datad => \inst4|d[5][2]~q\,
	combout => \inst4|_~21_combout\);

-- Location: LCCOMB_X6_Y10_N24
\inst4|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~25_combout\ = (\inst4|_~24_combout\) # ((\inst4|_~23_combout\) # ((\inst4|_~22_combout\) # (\inst4|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~24_combout\,
	datab => \inst4|_~23_combout\,
	datac => \inst4|_~22_combout\,
	datad => \inst4|_~21_combout\,
	combout => \inst4|_~25_combout\);

-- Location: LCCOMB_X7_Y10_N16
\inst4|_~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~70_combout\ = (\inst4|_~68_combout\ & (((!\inst4|_~67_combout\) # (!\inst4|_~15_combout\)) # (!\inst4|_~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~25_combout\,
	datab => \inst4|_~68_combout\,
	datac => \inst4|_~15_combout\,
	datad => \inst4|_~67_combout\,
	combout => \inst4|_~70_combout\);

-- Location: LCCOMB_X5_Y11_N6
\inst4|u[5][2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~27_combout\ = (\inst4|u[5][2]~q\ & (((\inst4|_~70_combout\) # (\inst4|_~69_combout\)) # (!\inst4|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|temp~q\,
	datac => \inst4|_~70_combout\,
	datad => \inst4|_~69_combout\,
	combout => \inst4|u[5][2]~27_combout\);

-- Location: LCCOMB_X5_Y11_N16
\inst4|u[5][2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~26_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~71_combout\) # ((\inst4|sorteio|DECIMAL\(2) & \inst4|_~80_combout\)))) # (!\inst4|u[5][2]~q\ & (\inst4|sorteio|DECIMAL\(2) & (\inst4|_~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|sorteio|DECIMAL\(2),
	datac => \inst4|_~80_combout\,
	datad => \inst4|_~71_combout\,
	combout => \inst4|u[5][2]~26_combout\);

-- Location: LCCOMB_X5_Y11_N8
\inst4|u[5][2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~25_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~51_combout\) # ((\inst4|_~66_combout\) # (\inst4|_~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|_~51_combout\,
	datac => \inst4|_~66_combout\,
	datad => \inst4|_~65_combout\,
	combout => \inst4|u[5][2]~25_combout\);

-- Location: LCCOMB_X5_Y11_N2
\inst4|u[5][2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~24_combout\ = (\inst4|u[5][2]~q\ & ((\inst4|_~50_combout\) # ((\inst4|_~48_combout\) # (\inst4|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|_~50_combout\,
	datac => \inst4|_~48_combout\,
	datad => \inst4|_~49_combout\,
	combout => \inst4|u[5][2]~24_combout\);

-- Location: LCCOMB_X5_Y11_N30
\inst4|u[5][2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|u[5][2]~28_combout\ = (\inst4|u[5][2]~27_combout\) # ((\inst4|u[5][2]~26_combout\) # ((\inst4|u[5][2]~25_combout\) # (\inst4|u[5][2]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~27_combout\,
	datab => \inst4|u[5][2]~26_combout\,
	datac => \inst4|u[5][2]~25_combout\,
	datad => \inst4|u[5][2]~24_combout\,
	combout => \inst4|u[5][2]~28_combout\);

-- Location: FF_X5_Y11_N31
\inst4|u[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \inst4|u[5][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|u[5][2]~q\);

-- Location: LCCOMB_X4_Y11_N6
\inst14|lcd_bus[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~25_combout\ = (\inst14|char_26~q\ & (((!\inst4|u[5][2]~q\ & !\inst4|u[5][3]~q\)) # (!\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][2]~q\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst14|char_26~q\,
	datad => \inst4|u[5][4]~q\,
	combout => \inst14|lcd_bus[4]~25_combout\);

-- Location: LCCOMB_X3_Y9_N2
\inst14|lcd_bus[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~26_combout\ = (\inst14|char_29~q\ & (((!\inst4|u[6][3]~q\ & !\inst4|u[6][2]~q\)) # (!\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~q\,
	datab => \inst4|u[6][3]~q\,
	datac => \inst14|char_29~q\,
	datad => \inst4|u[6][2]~q\,
	combout => \inst14|lcd_bus[4]~26_combout\);

-- Location: LCCOMB_X6_Y7_N24
\inst14|lcd_bus[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~21_combout\ = (\inst14|char_09~q\ & (((!\inst4|u[2][2]~q\ & !\inst4|u[2][3]~q\)) # (!\inst4|u[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][2]~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst14|char_09~q\,
	combout => \inst14|lcd_bus[4]~21_combout\);

-- Location: LCCOMB_X9_Y7_N24
\inst14|lcd_bus[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~20_combout\ = (\inst14|char_06~q\ & (((!\inst4|u[1][2]~q\ & !\inst4|u[1][3]~q\)) # (!\inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_06~q\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|u[1][2]~q\,
	datad => \inst4|u[1][3]~q\,
	combout => \inst14|lcd_bus[4]~20_combout\);

-- Location: LCCOMB_X9_Y7_N10
\inst14|lcd_bus[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~23_combout\ = (\inst14|char_23~q\ & (((!\inst4|u[4][3]~q\ & !\inst4|u[4][2]~q\)) # (!\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][3]~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst14|char_23~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst14|lcd_bus[4]~23_combout\);

-- Location: LCCOMB_X9_Y9_N20
\inst14|lcd_bus[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~22_combout\ = (\inst14|char_12~q\ & (((!\inst4|u[3][3]~q\ & !\inst4|u[3][2]~q\)) # (!\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst4|u[3][3]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst14|char_12~q\,
	combout => \inst14|lcd_bus[4]~22_combout\);

-- Location: LCCOMB_X8_Y7_N20
\inst14|lcd_bus[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~24_combout\ = (!\inst14|lcd_bus[4]~21_combout\ & (!\inst14|lcd_bus[4]~20_combout\ & (!\inst14|lcd_bus[4]~23_combout\ & !\inst14|lcd_bus[4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[4]~21_combout\,
	datab => \inst14|lcd_bus[4]~20_combout\,
	datac => \inst14|lcd_bus[4]~23_combout\,
	datad => \inst14|lcd_bus[4]~22_combout\,
	combout => \inst14|lcd_bus[5]~24_combout\);

-- Location: LCCOMB_X4_Y11_N18
\inst14|lcd_bus[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~27_combout\ = (!\inst14|lcd_bus[4]~25_combout\ & (!\inst14|lcd_bus[4]~26_combout\ & \inst14|lcd_bus[5]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|lcd_bus[4]~25_combout\,
	datac => \inst14|lcd_bus[4]~26_combout\,
	datad => \inst14|lcd_bus[5]~24_combout\,
	combout => \inst14|lcd_bus[5]~27_combout\);

-- Location: LCCOMB_X4_Y11_N16
\inst14|lcd_bus[5]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~71_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & ((!\inst14|lcd_bus[5]~27_combout\) # (!\inst14|lcd_bus[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|busy~q\,
	datab => \inst14|lcd_enable~q\,
	datac => \inst14|lcd_bus[9]~17_combout\,
	datad => \inst14|lcd_bus[5]~27_combout\,
	combout => \inst14|lcd_bus[5]~71_combout\);

-- Location: FF_X4_Y11_N17
\inst14|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[5]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(5));

-- Location: LCCOMB_X6_Y19_N26
\inst15|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~16_combout\ = (\inst14|lcd_enable~q\ & (\inst15|PRONTO~q\ & \inst14|lcd_bus\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datab => \inst15|PRONTO~q\,
	datad => \inst14|lcd_bus\(5),
	combout => \inst15|_~16_combout\);

-- Location: LCCOMB_X6_Y19_N28
\inst15|lcd_data[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[5]~3_combout\ = ((\inst15|_~16_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(5)))) # (!\inst15|lcd_data[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|lcd_data[5]~2_combout\,
	datac => \inst15|lcd_data\(5),
	datad => \inst15|_~16_combout\,
	combout => \inst15|lcd_data[5]~3_combout\);

-- Location: FF_X6_Y19_N29
\inst15|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(5));

-- Location: LCCOMB_X4_Y11_N24
\inst14|lcd_bus[4]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[4]~72_combout\ = (!\inst15|busy~q\ & (!\inst14|lcd_enable~q\ & ((!\inst14|lcd_bus[5]~27_combout\) # (!\inst14|lcd_bus[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|busy~q\,
	datab => \inst14|lcd_enable~q\,
	datac => \inst14|lcd_bus[9]~10_combout\,
	datad => \inst14|lcd_bus[5]~27_combout\,
	combout => \inst14|lcd_bus[4]~72_combout\);

-- Location: FF_X4_Y11_N25
\inst14|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[4]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(4));

-- Location: LCCOMB_X8_Y19_N22
\inst15|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~18_combout\ = (\inst14|lcd_bus\(4) & (\inst14|lcd_enable~q\ & \inst15|PRONTO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(4),
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|PRONTO~q\,
	combout => \inst15|_~18_combout\);

-- Location: LCCOMB_X6_Y19_N6
\inst15|lcd_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[4]~4_combout\ = (\inst15|_~18_combout\) # (((\inst15|ENVIAR~q\ & \inst15|lcd_data\(4))) # (!\inst15|lcd_data[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~18_combout\,
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(4),
	datad => \inst15|lcd_data[5]~2_combout\,
	combout => \inst15|lcd_data[4]~4_combout\);

-- Location: FF_X6_Y19_N7
\inst15|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(4));

-- Location: LCCOMB_X4_Y11_N20
\inst14|lcd_bus[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~33_combout\ = (\inst14|char_26~q\ & (\inst4|u[5][4]~q\ & (!\inst4|u[5][2]~q\ & !\inst4|u[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_26~q\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|u[5][3]~q\,
	combout => \inst14|lcd_bus[3]~33_combout\);

-- Location: LCCOMB_X9_Y7_N30
\inst14|lcd_bus[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~30_combout\ = (\inst4|u[3][4]~q\ & (\inst14|char_12~q\ & (!\inst4|u[3][3]~q\ & !\inst4|u[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][4]~q\,
	datab => \inst14|char_12~q\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][2]~q\,
	combout => \inst14|lcd_bus[3]~30_combout\);

-- Location: LCCOMB_X9_Y7_N0
\inst14|lcd_bus[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~29_combout\ = (!\inst4|u[2][3]~q\ & (!\inst4|u[2][2]~q\ & (\inst4|u[2][4]~q\ & \inst14|char_09~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst14|char_09~q\,
	combout => \inst14|lcd_bus[3]~29_combout\);

-- Location: LCCOMB_X9_Y7_N4
\inst14|lcd_bus[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~31_combout\ = (\inst14|char_23~q\ & (\inst4|u[4][4]~q\ & (!\inst4|u[4][3]~q\ & !\inst4|u[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_23~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|u[4][2]~q\,
	combout => \inst14|lcd_bus[3]~31_combout\);

-- Location: LCCOMB_X9_Y7_N18
\inst14|lcd_bus[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~28_combout\ = (\inst14|char_06~q\ & (\inst4|u[1][4]~q\ & (!\inst4|u[1][2]~q\ & !\inst4|u[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_06~q\,
	datab => \inst4|u[1][4]~q\,
	datac => \inst4|u[1][2]~q\,
	datad => \inst4|u[1][3]~q\,
	combout => \inst14|lcd_bus[3]~28_combout\);

-- Location: LCCOMB_X9_Y7_N6
\inst14|lcd_bus[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~32_combout\ = (\inst14|lcd_bus[3]~30_combout\) # ((\inst14|lcd_bus[3]~29_combout\) # ((\inst14|lcd_bus[3]~31_combout\) # (\inst14|lcd_bus[3]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[3]~30_combout\,
	datab => \inst14|lcd_bus[3]~29_combout\,
	datac => \inst14|lcd_bus[3]~31_combout\,
	datad => \inst14|lcd_bus[3]~28_combout\,
	combout => \inst14|lcd_bus[3]~32_combout\);

-- Location: LCCOMB_X3_Y10_N22
\inst14|lcd_bus[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[5]~34_combout\ = (!\inst4|u[6][2]~q\ & !\inst4|u[6][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|u[6][2]~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst14|lcd_bus[5]~34_combout\);

-- Location: LCCOMB_X3_Y10_N24
\inst14|lcd_bus[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~35_combout\ = ((\inst14|lcd_bus[5]~34_combout\ & (\inst14|char_29~q\ & \inst4|u[6][4]~q\))) # (!\inst14|lcd_bus[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[5]~34_combout\,
	datab => \inst14|char_29~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst14|lcd_bus[3]~11_combout\,
	combout => \inst14|lcd_bus[3]~35_combout\);

-- Location: LCCOMB_X3_Y10_N16
\inst14|lcd_bus[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[3]~36_combout\ = (\inst14|lcd_bus[2]~6_combout\ & ((\inst14|lcd_bus[3]~33_combout\) # ((\inst14|lcd_bus[3]~32_combout\) # (\inst14|lcd_bus[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~6_combout\,
	datab => \inst14|lcd_bus[3]~33_combout\,
	datac => \inst14|lcd_bus[3]~32_combout\,
	datad => \inst14|lcd_bus[3]~35_combout\,
	combout => \inst14|lcd_bus[3]~36_combout\);

-- Location: FF_X3_Y10_N17
\inst14|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(3));

-- Location: LCCOMB_X8_Y19_N24
\inst15|lcd_data[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[3]~5_combout\ = (\inst14|lcd_bus\(3) & ((\inst15|_~15_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(3))))) # (!\inst14|lcd_bus\(3) & (\inst15|ENVIAR~q\ & (\inst15|lcd_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(3),
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(3),
	datad => \inst15|_~15_combout\,
	combout => \inst15|lcd_data[3]~5_combout\);

-- Location: LCCOMB_X8_Y19_N26
\inst15|lcd_data[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[3]~6_combout\ = (\inst15|_~4_combout\) # ((\inst15|_~12_combout\) # (\inst15|lcd_data[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|_~4_combout\,
	datac => \inst15|_~12_combout\,
	datad => \inst15|lcd_data[3]~5_combout\,
	combout => \inst15|lcd_data[3]~6_combout\);

-- Location: FF_X8_Y19_N27
\inst15|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(3));

-- Location: LCCOMB_X3_Y10_N4
\inst14|lcd_bus[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~46_combout\ = (\inst4|d[5][3]~q\ & ((\inst14|char_25~q\) # ((\inst4|d[6][3]~q\ & \inst14|char_28~q\)))) # (!\inst4|d[5][3]~q\ & (\inst4|d[6][3]~q\ & ((\inst14|char_28~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][3]~q\,
	datab => \inst4|d[6][3]~q\,
	datac => \inst14|char_25~q\,
	datad => \inst14|char_28~q\,
	combout => \inst14|lcd_bus[2]~46_combout\);

-- Location: LCCOMB_X3_Y10_N18
\inst14|lcd_bus[2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~47_combout\ = (\inst14|lcd_bus[2]~46_combout\) # ((\inst4|u[6][3]~q\ & (!\inst4|u[6][4]~q\ & \inst14|char_29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][3]~q\,
	datab => \inst14|lcd_bus[2]~46_combout\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst14|char_29~q\,
	combout => \inst14|lcd_bus[2]~47_combout\);

-- Location: LCCOMB_X4_Y11_N0
\inst14|lcd_bus[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~44_combout\ = (!\inst4|u[5][4]~q\ & (\inst4|u[5][3]~q\ & \inst14|char_26~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|u[5][3]~q\,
	datad => \inst14|char_26~q\,
	combout => \inst14|lcd_bus[2]~44_combout\);

-- Location: LCCOMB_X9_Y7_N20
\inst14|lcd_bus[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~43_combout\ = (!\inst4|u[4][4]~q\ & (\inst4|u[4][3]~q\ & \inst14|char_23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst14|char_23~q\,
	combout => \inst14|lcd_bus[2]~43_combout\);

-- Location: LCCOMB_X9_Y7_N22
\inst14|lcd_bus[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~42_combout\ = (\inst14|char_12~q\ & (\inst4|u[3][3]~q\ & !\inst4|u[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|char_12~q\,
	datac => \inst4|u[3][3]~q\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst14|lcd_bus[2]~42_combout\);

-- Location: LCCOMB_X9_Y7_N28
\inst14|lcd_bus[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~41_combout\ = (\inst4|u[2][3]~q\ & (!\inst4|u[2][4]~q\ & \inst14|char_09~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][3]~q\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst14|char_09~q\,
	combout => \inst14|lcd_bus[2]~41_combout\);

-- Location: LCCOMB_X9_Y7_N2
\inst14|lcd_bus[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~45_combout\ = (\inst14|lcd_bus[2]~44_combout\) # ((\inst14|lcd_bus[2]~43_combout\) # ((\inst14|lcd_bus[2]~42_combout\) # (\inst14|lcd_bus[2]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~44_combout\,
	datab => \inst14|lcd_bus[2]~43_combout\,
	datac => \inst14|lcd_bus[2]~42_combout\,
	datad => \inst14|lcd_bus[2]~41_combout\,
	combout => \inst14|lcd_bus[2]~45_combout\);

-- Location: LCCOMB_X6_Y7_N6
\inst14|lcd_bus[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~37_combout\ = (\inst4|d[1][3]~q\ & ((\inst14|char_05~q\) # ((\inst14|char_08~q\ & \inst4|d[2][3]~q\)))) # (!\inst4|d[1][3]~q\ & (((\inst14|char_08~q\ & \inst4|d[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[1][3]~q\,
	datab => \inst14|char_05~q\,
	datac => \inst14|char_08~q\,
	datad => \inst4|d[2][3]~q\,
	combout => \inst14|lcd_bus[2]~37_combout\);

-- Location: LCCOMB_X5_Y7_N6
\inst14|lcd_bus[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~38_combout\ = (\inst4|u[1][3]~q\ & (!\inst4|u[1][4]~q\ & \inst14|char_06~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][3]~q\,
	datab => \inst4|u[1][4]~q\,
	datad => \inst14|char_06~q\,
	combout => \inst14|lcd_bus[2]~38_combout\);

-- Location: LCCOMB_X9_Y9_N0
\inst14|lcd_bus[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~39_combout\ = (\inst14|char_11~q\ & ((\inst4|d[3][3]~q\) # ((\inst4|d[4][3]~q\ & \inst14|char_22~q\)))) # (!\inst14|char_11~q\ & (((\inst4|d[4][3]~q\ & \inst14|char_22~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_11~q\,
	datab => \inst4|d[3][3]~q\,
	datac => \inst4|d[4][3]~q\,
	datad => \inst14|char_22~q\,
	combout => \inst14|lcd_bus[2]~39_combout\);

-- Location: LCCOMB_X3_Y10_N12
\inst14|lcd_bus[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~40_combout\ = (\inst14|lcd_bus[2]~37_combout\) # ((\inst14|lcd_bus[2]~38_combout\) # ((\inst14|lcd_bus[2]~39_combout\) # (!\inst14|lcd_bus[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~37_combout\,
	datab => \inst14|lcd_bus[2]~38_combout\,
	datac => \inst14|lcd_bus[2]~39_combout\,
	datad => \inst14|lcd_bus[3]~11_combout\,
	combout => \inst14|lcd_bus[2]~40_combout\);

-- Location: LCCOMB_X3_Y10_N10
\inst14|lcd_bus[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[2]~48_combout\ = (\inst14|lcd_bus[2]~6_combout\ & ((\inst14|lcd_bus[2]~47_combout\) # ((\inst14|lcd_bus[2]~45_combout\) # (\inst14|lcd_bus[2]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[2]~6_combout\,
	datab => \inst14|lcd_bus[2]~47_combout\,
	datac => \inst14|lcd_bus[2]~45_combout\,
	datad => \inst14|lcd_bus[2]~40_combout\,
	combout => \inst14|lcd_bus[2]~48_combout\);

-- Location: FF_X3_Y10_N11
\inst14|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[2]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(2));

-- Location: LCCOMB_X8_Y19_N14
\inst15|lcd_data[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[2]~7_combout\ = (\inst14|lcd_bus\(2) & ((\inst15|_~15_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(2))))) # (!\inst14|lcd_bus\(2) & (\inst15|ENVIAR~q\ & (\inst15|lcd_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(2),
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|lcd_data\(2),
	datad => \inst15|_~15_combout\,
	combout => \inst15|lcd_data[2]~7_combout\);

-- Location: LCCOMB_X8_Y19_N8
\inst15|lcd_data[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[2]~8_combout\ = (\inst15|lcd_data[2]~7_combout\) # ((\inst15|_~12_combout\) # (\inst15|_~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|lcd_data[2]~7_combout\,
	datac => \inst15|_~12_combout\,
	datad => \inst15|_~14_combout\,
	combout => \inst15|lcd_data[2]~8_combout\);

-- Location: FF_X8_Y19_N9
\inst15|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(2));

-- Location: LCCOMB_X4_Y11_N14
\inst14|lcd_bus[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~57_combout\ = (\inst14|char_26~q\ & (\inst4|u[5][2]~q\ & !\inst4|u[5][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_26~q\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|u[5][4]~q\,
	combout => \inst14|lcd_bus[1]~57_combout\);

-- Location: LCCOMB_X9_Y7_N26
\inst14|lcd_bus[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~56_combout\ = (\inst14|char_23~q\ & (!\inst4|u[4][4]~q\ & \inst4|u[4][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_23~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|u[4][2]~q\,
	combout => \inst14|lcd_bus[1]~56_combout\);

-- Location: LCCOMB_X3_Y9_N20
\inst14|lcd_bus[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~58_combout\ = (!\inst4|u[6][4]~q\ & (\inst4|u[6][2]~q\ & \inst14|char_29~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][4]~q\,
	datab => \inst4|u[6][2]~q\,
	datac => \inst14|char_29~q\,
	combout => \inst14|lcd_bus[1]~58_combout\);

-- Location: LCCOMB_X9_Y7_N8
\inst14|lcd_bus[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~55_combout\ = (!\inst4|u[3][4]~q\ & (\inst4|u[3][2]~q\ & \inst14|char_12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[3][4]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst14|char_12~q\,
	combout => \inst14|lcd_bus[1]~55_combout\);

-- Location: LCCOMB_X6_Y7_N26
\inst14|lcd_bus[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~59_combout\ = (\inst14|lcd_bus[1]~57_combout\) # ((\inst14|lcd_bus[1]~56_combout\) # ((\inst14|lcd_bus[1]~58_combout\) # (\inst14|lcd_bus[1]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[1]~57_combout\,
	datab => \inst14|lcd_bus[1]~56_combout\,
	datac => \inst14|lcd_bus[1]~58_combout\,
	datad => \inst14|lcd_bus[1]~55_combout\,
	combout => \inst14|lcd_bus[1]~59_combout\);

-- Location: LCCOMB_X4_Y7_N28
\inst14|lcd_bus[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~54_combout\ = (\inst4|d[5][2]~q\ & ((\inst14|char_25~q\) # ((\inst14|char_28~q\ & \inst4|d[6][2]~q\)))) # (!\inst4|d[5][2]~q\ & (((\inst14|char_28~q\ & \inst4|d[6][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][2]~q\,
	datab => \inst14|char_25~q\,
	datac => \inst14|char_28~q\,
	datad => \inst4|d[6][2]~q\,
	combout => \inst14|lcd_bus[1]~54_combout\);

-- Location: LCCOMB_X5_Y7_N16
\inst14|lcd_bus[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~51_combout\ = (!\inst4|u[1][4]~q\ & (\inst14|char_06~q\ & \inst4|u[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][4]~q\,
	datab => \inst14|char_06~q\,
	datad => \inst4|u[1][2]~q\,
	combout => \inst14|lcd_bus[1]~51_combout\);

-- Location: LCCOMB_X6_Y7_N28
\inst14|lcd_bus[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~49_combout\ = (\inst4|d[2][2]~q\ & ((\inst14|char_08~q\) # ((\inst14|char_05~q\ & \inst4|d[1][2]~q\)))) # (!\inst4|d[2][2]~q\ & (\inst14|char_05~q\ & ((\inst4|d[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst14|char_05~q\,
	datac => \inst14|char_08~q\,
	datad => \inst4|d[1][2]~q\,
	combout => \inst14|lcd_bus[1]~49_combout\);

-- Location: LCCOMB_X6_Y7_N4
\inst14|lcd_bus[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~52_combout\ = (\inst4|u[2][2]~q\ & (!\inst4|u[2][4]~q\ & \inst14|char_09~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[2][2]~q\,
	datac => \inst4|u[2][4]~q\,
	datad => \inst14|char_09~q\,
	combout => \inst14|lcd_bus[1]~52_combout\);

-- Location: LCCOMB_X9_Y9_N6
\inst14|lcd_bus[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~50_combout\ = (\inst4|d[4][2]~q\ & ((\inst14|char_22~q\) # ((\inst4|d[3][2]~q\ & \inst14|char_11~q\)))) # (!\inst4|d[4][2]~q\ & (\inst4|d[3][2]~q\ & (\inst14|char_11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[4][2]~q\,
	datab => \inst4|d[3][2]~q\,
	datac => \inst14|char_11~q\,
	datad => \inst14|char_22~q\,
	combout => \inst14|lcd_bus[1]~50_combout\);

-- Location: LCCOMB_X6_Y7_N0
\inst14|lcd_bus[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~53_combout\ = (\inst14|lcd_bus[1]~51_combout\) # ((\inst14|lcd_bus[1]~49_combout\) # ((\inst14|lcd_bus[1]~52_combout\) # (\inst14|lcd_bus[1]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[1]~51_combout\,
	datab => \inst14|lcd_bus[1]~49_combout\,
	datac => \inst14|lcd_bus[1]~52_combout\,
	datad => \inst14|lcd_bus[1]~50_combout\,
	combout => \inst14|lcd_bus[1]~53_combout\);

-- Location: LCCOMB_X6_Y7_N20
\inst14|lcd_bus[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[1]~60_combout\ = (\inst14|lcd_bus[2]~6_combout\ & ((\inst14|lcd_bus[1]~59_combout\) # ((\inst14|lcd_bus[1]~54_combout\) # (\inst14|lcd_bus[1]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[1]~59_combout\,
	datab => \inst14|lcd_bus[2]~6_combout\,
	datac => \inst14|lcd_bus[1]~54_combout\,
	datad => \inst14|lcd_bus[1]~53_combout\,
	combout => \inst14|lcd_bus[1]~60_combout\);

-- Location: FF_X6_Y7_N21
\inst14|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[1]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(1));

-- Location: LCCOMB_X8_Y19_N28
\inst15|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~19_combout\ = (\inst15|PRONTO~q\ & (\inst14|lcd_enable~q\ & \inst14|lcd_bus\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|PRONTO~q\,
	datac => \inst14|lcd_enable~q\,
	datad => \inst14|lcd_bus\(1),
	combout => \inst15|_~19_combout\);

-- Location: LCCOMB_X8_Y19_N10
\inst15|lcd_data[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[1]~9_combout\ = (\inst15|_~19_combout\) # ((\inst15|_~14_combout\) # ((\inst15|ENVIAR~q\ & \inst15|lcd_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|ENVIAR~q\,
	datab => \inst15|_~19_combout\,
	datac => \inst15|lcd_data\(1),
	datad => \inst15|_~14_combout\,
	combout => \inst15|lcd_data[1]~9_combout\);

-- Location: FF_X8_Y19_N11
\inst15|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(1));

-- Location: LCCOMB_X4_Y11_N22
\inst14|conv_u[5]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[5]|binario8[0]~10_combout\ = (\inst4|u[5][1]~q\ & (((!\inst4|u[5][3]~q\ & !\inst4|u[5][2]~q\)) # (!\inst4|u[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[5][4]~q\,
	datab => \inst4|u[5][3]~q\,
	datac => \inst4|u[5][2]~q\,
	datad => \inst4|u[5][1]~q\,
	combout => \inst14|conv_u[5]|binario8[0]~10_combout\);

-- Location: LCCOMB_X4_Y11_N30
\inst14|lcd_bus[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~69_combout\ = (\inst4|d[5][1]~q\ & ((\inst14|char_25~q\) # ((\inst14|conv_u[5]|binario8[0]~10_combout\ & \inst14|char_26~q\)))) # (!\inst4|d[5][1]~q\ & (((\inst14|conv_u[5]|binario8[0]~10_combout\ & \inst14|char_26~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst14|char_25~q\,
	datac => \inst14|conv_u[5]|binario8[0]~10_combout\,
	datad => \inst14|char_26~q\,
	combout => \inst14|lcd_bus[0]~69_combout\);

-- Location: LCCOMB_X3_Y10_N14
\inst14|conv_u[6]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[6]|binario8[0]~10_combout\ = (\inst4|u[6][1]~q\ & (((!\inst4|u[6][2]~q\ & !\inst4|u[6][3]~q\)) # (!\inst4|u[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][2]~q\,
	datab => \inst4|u[6][1]~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst4|u[6][3]~q\,
	combout => \inst14|conv_u[6]|binario8[0]~10_combout\);

-- Location: LCCOMB_X3_Y10_N20
\inst14|lcd_bus[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~68_combout\ = (\inst4|d[6][1]~q\ & ((\inst14|char_28~q\) # ((\inst14|conv_u[6]|binario8[0]~10_combout\ & \inst14|char_29~q\)))) # (!\inst4|d[6][1]~q\ & (((\inst14|conv_u[6]|binario8[0]~10_combout\ & \inst14|char_29~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][1]~q\,
	datab => \inst14|char_28~q\,
	datac => \inst14|conv_u[6]|binario8[0]~10_combout\,
	datad => \inst14|char_29~q\,
	combout => \inst14|lcd_bus[0]~68_combout\);

-- Location: LCCOMB_X12_Y10_N16
\inst14|lcd_bus[0]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~70_combout\ = (\inst14|lcd_bus[0]~69_combout\ & (((\inst14|lcd_bus[0]~68_combout\ & !\inst4|_~15_combout\)) # (!\inst4|_~9_combout\))) # (!\inst14|lcd_bus[0]~69_combout\ & (((\inst14|lcd_bus[0]~68_combout\ & !\inst4|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[0]~69_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst14|lcd_bus[0]~68_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|lcd_bus[0]~70_combout\);

-- Location: LCCOMB_X6_Y7_N10
\inst14|conv_u[2]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[2]|binario8[0]~10_combout\ = (\inst4|u[2][1]~q\ & (((!\inst4|u[2][3]~q\ & !\inst4|u[2][2]~q\)) # (!\inst4|u[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[2][1]~q\,
	datab => \inst4|u[2][4]~q\,
	datac => \inst4|u[2][3]~q\,
	datad => \inst4|u[2][2]~q\,
	combout => \inst14|conv_u[2]|binario8[0]~10_combout\);

-- Location: LCCOMB_X6_Y7_N12
\inst14|lcd_bus[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~66_combout\ = (\inst4|d[2][1]~q\ & ((\inst14|char_08~q\) # ((\inst14|conv_u[2]|binario8[0]~10_combout\ & \inst14|char_09~q\)))) # (!\inst4|d[2][1]~q\ & (\inst14|conv_u[2]|binario8[0]~10_combout\ & ((\inst14|char_09~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datab => \inst14|conv_u[2]|binario8[0]~10_combout\,
	datac => \inst14|char_08~q\,
	datad => \inst14|char_09~q\,
	combout => \inst14|lcd_bus[0]~66_combout\);

-- Location: LCCOMB_X5_Y7_N30
\inst14|conv_u[1]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[1]|binario8[0]~10_combout\ = (\inst4|u[1][1]~q\ & (((!\inst4|u[1][2]~q\ & !\inst4|u[1][3]~q\)) # (!\inst4|u[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[1][2]~q\,
	datab => \inst4|u[1][3]~q\,
	datac => \inst4|u[1][4]~q\,
	datad => \inst4|u[1][1]~q\,
	combout => \inst14|conv_u[1]|binario8[0]~10_combout\);

-- Location: LCCOMB_X5_Y7_N12
\inst14|lcd_bus[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~61_combout\ = (\inst14|char_05~q\ & ((\inst4|d[1][1]~q\) # ((\inst14|conv_u[1]|binario8[0]~10_combout\ & \inst14|char_06~q\)))) # (!\inst14|char_05~q\ & (((\inst14|conv_u[1]|binario8[0]~10_combout\ & \inst14|char_06~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_05~q\,
	datab => \inst4|d[1][1]~q\,
	datac => \inst14|conv_u[1]|binario8[0]~10_combout\,
	datad => \inst14|char_06~q\,
	combout => \inst14|lcd_bus[0]~61_combout\);

-- Location: LCCOMB_X5_Y7_N22
\inst14|lcd_bus[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~62_combout\ = ((\inst14|lcd_bus[0]~61_combout\ & !\inst4|_~7_combout\)) # (!\inst14|lcd_bus[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[0]~61_combout\,
	datab => \inst4|_~7_combout\,
	datad => \inst14|lcd_bus[3]~11_combout\,
	combout => \inst14|lcd_bus[0]~62_combout\);

-- Location: LCCOMB_X9_Y7_N16
\inst14|conv_u[4]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[4]|binario8[0]~10_combout\ = (\inst4|u[4][1]~q\ & (((!\inst4|u[4][2]~q\ & !\inst4|u[4][3]~q\)) # (!\inst4|u[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][2]~q\,
	datab => \inst4|u[4][4]~q\,
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|u[4][1]~q\,
	combout => \inst14|conv_u[4]|binario8[0]~10_combout\);

-- Location: LCCOMB_X9_Y7_N14
\inst14|lcd_bus[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~64_combout\ = (\inst14|char_23~q\ & ((\inst14|conv_u[4]|binario8[0]~10_combout\) # ((\inst4|d[4][1]~q\ & \inst14|char_22~q\)))) # (!\inst14|char_23~q\ & (\inst4|d[4][1]~q\ & (\inst14|char_22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|char_23~q\,
	datab => \inst4|d[4][1]~q\,
	datac => \inst14|char_22~q\,
	datad => \inst14|conv_u[4]|binario8[0]~10_combout\,
	combout => \inst14|lcd_bus[0]~64_combout\);

-- Location: LCCOMB_X9_Y9_N10
\inst14|conv_u[3]|binario8[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|conv_u[3]|binario8[0]~10_combout\ = (\inst4|u[3][1]~q\ & (((!\inst4|u[3][3]~q\ & !\inst4|u[3][2]~q\)) # (!\inst4|u[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][1]~q\,
	datab => \inst4|u[3][3]~q\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst14|conv_u[3]|binario8[0]~10_combout\);

-- Location: LCCOMB_X9_Y9_N16
\inst14|lcd_bus[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~63_combout\ = (\inst14|conv_u[3]|binario8[0]~10_combout\ & ((\inst14|char_12~q\) # ((\inst4|d[3][1]~q\ & \inst14|char_11~q\)))) # (!\inst14|conv_u[3]|binario8[0]~10_combout\ & (((\inst4|d[3][1]~q\ & \inst14|char_11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|conv_u[3]|binario8[0]~10_combout\,
	datab => \inst14|char_12~q\,
	datac => \inst4|d[3][1]~q\,
	datad => \inst14|char_11~q\,
	combout => \inst14|lcd_bus[0]~63_combout\);

-- Location: LCCOMB_X12_Y10_N0
\inst14|lcd_bus[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~65_combout\ = (\inst4|_~17_combout\ & (!\inst4|_~11_combout\ & (\inst14|lcd_bus[0]~64_combout\))) # (!\inst4|_~17_combout\ & ((\inst14|lcd_bus[0]~63_combout\) # ((!\inst4|_~11_combout\ & \inst14|lcd_bus[0]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~17_combout\,
	datab => \inst4|_~11_combout\,
	datac => \inst14|lcd_bus[0]~64_combout\,
	datad => \inst14|lcd_bus[0]~63_combout\,
	combout => \inst14|lcd_bus[0]~65_combout\);

-- Location: LCCOMB_X12_Y10_N2
\inst14|lcd_bus[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~67_combout\ = (\inst14|lcd_bus[0]~62_combout\) # ((\inst14|lcd_bus[0]~65_combout\) # ((\inst14|lcd_bus[0]~66_combout\ & !\inst4|_~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus[0]~66_combout\,
	datab => \inst4|_~13_combout\,
	datac => \inst14|lcd_bus[0]~62_combout\,
	datad => \inst14|lcd_bus[0]~65_combout\,
	combout => \inst14|lcd_bus[0]~67_combout\);

-- Location: LCCOMB_X12_Y10_N22
\inst14|lcd_bus[0]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|lcd_bus[0]~73_combout\ = (!\inst14|lcd_enable~q\ & (!\inst15|busy~q\ & ((\inst14|lcd_bus[0]~70_combout\) # (\inst14|lcd_bus[0]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_enable~q\,
	datab => \inst14|lcd_bus[0]~70_combout\,
	datac => \inst15|busy~q\,
	datad => \inst14|lcd_bus[0]~67_combout\,
	combout => \inst14|lcd_bus[0]~73_combout\);

-- Location: FF_X12_Y10_N23
\inst14|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst14|lcd_bus[0]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|lcd_bus\(0));

-- Location: LCCOMB_X8_Y19_N6
\inst15|lcd_data[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[0]~10_combout\ = (\inst15|lcd_data\(0) & ((\inst15|ENVIAR~q\) # ((\inst15|op_8~4_combout\ & \inst15|_~11_combout\)))) # (!\inst15|lcd_data\(0) & (((\inst15|op_8~4_combout\ & \inst15|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|lcd_data\(0),
	datab => \inst15|ENVIAR~q\,
	datac => \inst15|op_8~4_combout\,
	datad => \inst15|_~11_combout\,
	combout => \inst15|lcd_data[0]~10_combout\);

-- Location: LCCOMB_X8_Y19_N12
\inst15|lcd_data[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|lcd_data[0]~11_combout\ = (\inst15|lcd_data[0]~10_combout\) # ((\inst14|lcd_bus\(0) & (\inst14|lcd_enable~q\ & \inst15|PRONTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|lcd_bus\(0),
	datab => \inst14|lcd_enable~q\,
	datac => \inst15|PRONTO~q\,
	datad => \inst15|lcd_data[0]~10_combout\,
	combout => \inst15|lcd_data[0]~11_combout\);

-- Location: FF_X8_Y19_N13
\inst15|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|lcd_data[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|lcd_data\(0));

-- Location: LCCOMB_X12_Y10_N6
\inst14|qnt_sorteio[3]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[3]~64_combout\ = (\inst4|_~17_combout\ & ((\inst4|_~13_combout\) # ((\inst4|_~11_combout\) # (\inst4|_~15_combout\)))) # (!\inst4|_~17_combout\ & ((\inst4|_~13_combout\ & ((\inst4|_~11_combout\) # (\inst4|_~15_combout\))) # 
-- (!\inst4|_~13_combout\ & (\inst4|_~11_combout\ & \inst4|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~17_combout\,
	datab => \inst4|_~13_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|qnt_sorteio[3]~64_combout\);

-- Location: LCCOMB_X12_Y10_N20
\inst14|qnt_sorteio[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[3]~63_combout\ = (\inst4|_~11_combout\ & ((\inst4|_~17_combout\ & ((\inst4|_~13_combout\) # (\inst4|_~15_combout\))) # (!\inst4|_~17_combout\ & (\inst4|_~13_combout\ & \inst4|_~15_combout\)))) # (!\inst4|_~11_combout\ & 
-- (\inst4|_~17_combout\ $ (\inst4|_~13_combout\ $ (\inst4|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~17_combout\,
	datab => \inst4|_~13_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|qnt_sorteio[3]~63_combout\);

-- Location: LCCOMB_X12_Y10_N24
\inst14|qnt_sorteio[3]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[3]~65_combout\ = (\inst4|_~7_combout\ & (!\inst14|qnt_sorteio[3]~64_combout\ & ((!\inst14|qnt_sorteio[3]~63_combout\) # (!\inst4|_~9_combout\)))) # (!\inst4|_~7_combout\ & (((!\inst4|_~9_combout\ & !\inst14|qnt_sorteio[3]~63_combout\)) 
-- # (!\inst14|qnt_sorteio[3]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~7_combout\,
	datab => \inst14|qnt_sorteio[3]~64_combout\,
	datac => \inst4|_~9_combout\,
	datad => \inst14|qnt_sorteio[3]~63_combout\,
	combout => \inst14|qnt_sorteio[3]~65_combout\);

-- Location: LCCOMB_X12_Y10_N12
\inst14|qnt_sorteio[2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~67_combout\ = (\inst4|_~9_combout\ & (((!\inst4|_~7_combout\ & !\inst4|_~11_combout\)) # (!\inst4|_~15_combout\))) # (!\inst4|_~9_combout\ & ((\inst4|_~7_combout\ & ((!\inst4|_~15_combout\) # (!\inst4|_~11_combout\))) # 
-- (!\inst4|_~7_combout\ & ((\inst4|_~11_combout\) # (\inst4|_~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|_~7_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|qnt_sorteio[2]~67_combout\);

-- Location: LCCOMB_X12_Y10_N18
\inst14|qnt_sorteio[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~66_combout\ = (\inst4|_~7_combout\ & ((\inst4|_~9_combout\ & (!\inst4|_~11_combout\ & !\inst4|_~15_combout\)) # (!\inst4|_~9_combout\ & ((!\inst4|_~15_combout\) # (!\inst4|_~11_combout\))))) # (!\inst4|_~7_combout\ & 
-- ((\inst4|_~9_combout\ & ((!\inst4|_~15_combout\) # (!\inst4|_~11_combout\))) # (!\inst4|_~9_combout\ & ((\inst4|_~11_combout\) # (\inst4|_~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~7_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|qnt_sorteio[2]~66_combout\);

-- Location: LCCOMB_X12_Y10_N26
\inst14|qnt_sorteio[2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~68_combout\ = (\inst4|_~13_combout\ & (((\inst14|qnt_sorteio[2]~66_combout\ & \inst4|_~17_combout\)))) # (!\inst4|_~13_combout\ & (!\inst14|qnt_sorteio[2]~67_combout\ & ((!\inst4|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|qnt_sorteio[2]~67_combout\,
	datab => \inst14|qnt_sorteio[2]~66_combout\,
	datac => \inst4|_~13_combout\,
	datad => \inst4|_~17_combout\,
	combout => \inst14|qnt_sorteio[2]~68_combout\);

-- Location: LCCOMB_X12_Y10_N4
\inst14|qnt_sorteio[2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~69_combout\ = (\inst4|_~9_combout\ & ((\inst4|_~7_combout\ & ((!\inst4|_~15_combout\) # (!\inst4|_~11_combout\))) # (!\inst4|_~7_combout\ & ((\inst4|_~11_combout\) # (\inst4|_~15_combout\))))) # (!\inst4|_~9_combout\ & 
-- ((\inst4|_~7_combout\ & ((\inst4|_~11_combout\) # (\inst4|_~15_combout\))) # (!\inst4|_~7_combout\ & (\inst4|_~11_combout\ & \inst4|_~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~9_combout\,
	datab => \inst4|_~7_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|qnt_sorteio[2]~69_combout\);

-- Location: LCCOMB_X12_Y10_N30
\inst14|qnt_sorteio[2]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[2]~70_combout\ = (\inst14|qnt_sorteio[2]~68_combout\) # ((\inst14|qnt_sorteio[2]~69_combout\ & (\inst4|_~13_combout\ $ (\inst4|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|qnt_sorteio[2]~68_combout\,
	datab => \inst4|_~13_combout\,
	datac => \inst14|qnt_sorteio[2]~69_combout\,
	datad => \inst4|_~17_combout\,
	combout => \inst14|qnt_sorteio[2]~70_combout\);

-- Location: LCCOMB_X12_Y10_N10
\inst14|qnt_sorteio[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[1]~72_combout\ = (\inst4|_~17_combout\ & (\inst4|_~9_combout\ $ (\inst4|_~11_combout\ $ (!\inst4|_~15_combout\)))) # (!\inst4|_~17_combout\ & ((\inst4|_~9_combout\ & ((\inst4|_~11_combout\) # (!\inst4|_~15_combout\))) # 
-- (!\inst4|_~9_combout\ & (\inst4|_~11_combout\ $ (\inst4|_~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~17_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|qnt_sorteio[1]~72_combout\);

-- Location: LCCOMB_X12_Y10_N8
\inst14|qnt_sorteio[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[1]~71_combout\ = \inst4|_~17_combout\ $ (\inst4|_~9_combout\ $ (\inst4|_~11_combout\ $ (\inst4|_~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~17_combout\,
	datab => \inst4|_~9_combout\,
	datac => \inst4|_~11_combout\,
	datad => \inst4|_~15_combout\,
	combout => \inst14|qnt_sorteio[1]~71_combout\);

-- Location: LCCOMB_X12_Y10_N28
\inst14|qnt_sorteio[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|qnt_sorteio[1]~73_combout\ = (\inst4|_~13_combout\ & ((\inst14|qnt_sorteio[1]~71_combout\ $ (!\inst4|_~7_combout\)))) # (!\inst4|_~13_combout\ & ((\inst4|_~7_combout\ & (!\inst14|qnt_sorteio[1]~72_combout\)) # (!\inst4|_~7_combout\ & 
-- ((\inst14|qnt_sorteio[1]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|qnt_sorteio[1]~72_combout\,
	datab => \inst4|_~13_combout\,
	datac => \inst14|qnt_sorteio[1]~71_combout\,
	datad => \inst4|_~7_combout\,
	combout => \inst14|qnt_sorteio[1]~73_combout\);

-- Location: LCCOMB_X7_Y9_N30
\inst2|varia[6]|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|_~4_combout\ = (\inst4|count|cnt\(3) & ((!\inst4|count|cnt\(1)) # (!\inst4|count|cnt\(2)))) # (!\inst4|count|cnt\(3) & ((\inst4|count|cnt\(2)) # (\inst4|count|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(1),
	combout => \inst2|varia[6]|_~4_combout\);

-- Location: LCCOMB_X9_Y9_N12
\inst2|varia[3]|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|_~0_combout\ = LCELL((\inst2|varia[3]|count|count\(1) & (((\inst2|varia[3]|contador6|alt~q\)))) # (!\inst2|varia[3]|count|count\(1) & (!\inst4|_~17_combout\ & ((\inst2|varia[6]|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~17_combout\,
	datab => \inst2|varia[3]|count|count\(1),
	datac => \inst2|varia[3]|contador6|alt~q\,
	datad => \inst2|varia[6]|_~4_combout\,
	combout => \inst2|varia[3]|_~0_combout\);

-- Location: LCCOMB_X12_Y11_N26
\inst2|varia[3]|count|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|count|count[1]~0_combout\ = !\inst2|varia[3]|count|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[3]|count|count\(1),
	combout => \inst2|varia[3]|count|count[1]~0_combout\);

-- Location: FF_X12_Y11_N5
\inst2|varia[3]|count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~0_combout\,
	asdata => \inst2|varia[3]|count|count[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|count|count\(1));

-- Location: LCCOMB_X12_Y11_N14
\inst2|varia[3]|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|_~2_combout\ = LCELL((\inst2|varia[3]|count|count\(1) & \clock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[3]|count|count\(1),
	datad => \clock~input_o\,
	combout => \inst2|varia[3]|_~2_combout\);

-- Location: CLKCTRL_G9
\inst2|varia[3]|_~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[3]|_~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[3]|_~2clkctrl_outclk\);

-- Location: LCCOMB_X14_Y10_N26
\inst2|varia[3]|freq2hz|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|op_1~4_combout\ = (((!\inst2|varia[3]|freq2hz|count\(21)) # (!\inst2|varia[3]|freq2hz|count\(20))) # (!\inst2|varia[3]|freq2hz|count\(18))) # (!\inst2|varia[3]|freq2hz|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(19),
	datab => \inst2|varia[3]|freq2hz|count\(18),
	datac => \inst2|varia[3]|freq2hz|count\(20),
	datad => \inst2|varia[3]|freq2hz|count\(21),
	combout => \inst2|varia[3]|freq2hz|op_1~4_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst2|varia[3]|freq2hz|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|op_1~1_combout\ = (!\inst2|varia[3]|freq2hz|count\(8) & (!\inst2|varia[3]|freq2hz|count\(7) & (!\inst2|varia[3]|freq2hz|count\(6) & !\inst2|varia[3]|freq2hz|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(8),
	datab => \inst2|varia[3]|freq2hz|count\(7),
	datac => \inst2|varia[3]|freq2hz|count\(6),
	datad => \inst2|varia[3]|freq2hz|count\(9),
	combout => \inst2|varia[3]|freq2hz|op_1~1_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst2|varia[3]|freq2hz|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|op_1~0_combout\ = (((!\inst2|varia[3]|freq2hz|count\(11)) # (!\inst2|varia[3]|freq2hz|count\(14))) # (!\inst2|varia[3]|freq2hz|count\(13))) # (!\inst2|varia[3]|freq2hz|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(12),
	datab => \inst2|varia[3]|freq2hz|count\(13),
	datac => \inst2|varia[3]|freq2hz|count\(14),
	datad => \inst2|varia[3]|freq2hz|count\(11),
	combout => \inst2|varia[3]|freq2hz|op_1~0_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst2|varia[3]|freq2hz|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|op_1~2_combout\ = (!\inst2|varia[3]|freq2hz|count\(15) & ((\inst2|varia[3]|freq2hz|op_1~0_combout\) # ((!\inst2|varia[3]|freq2hz|count\(10) & \inst2|varia[3]|freq2hz|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(10),
	datab => \inst2|varia[3]|freq2hz|count\(15),
	datac => \inst2|varia[3]|freq2hz|op_1~1_combout\,
	datad => \inst2|varia[3]|freq2hz|op_1~0_combout\,
	combout => \inst2|varia[3]|freq2hz|op_1~2_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst2|varia[3]|freq2hz|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|op_1~3_combout\ = (!\inst2|varia[3]|freq2hz|count\(17) & ((\inst2|varia[3]|freq2hz|op_1~2_combout\) # (!\inst2|varia[3]|freq2hz|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(17),
	datac => \inst2|varia[3]|freq2hz|op_1~2_combout\,
	datad => \inst2|varia[3]|freq2hz|count\(16),
	combout => \inst2|varia[3]|freq2hz|op_1~3_combout\);

-- Location: LCCOMB_X14_Y11_N2
\inst2|varia[3]|freq2hz|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|op_1~5_combout\ = (!\inst2|varia[3]|freq2hz|count\(23) & (((\inst2|varia[3]|freq2hz|op_1~4_combout\) # (\inst2|varia[3]|freq2hz|op_1~3_combout\)) # (!\inst2|varia[3]|freq2hz|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(23),
	datab => \inst2|varia[3]|freq2hz|count\(22),
	datac => \inst2|varia[3]|freq2hz|op_1~4_combout\,
	datad => \inst2|varia[3]|freq2hz|op_1~3_combout\,
	combout => \inst2|varia[3]|freq2hz|op_1~5_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst2|varia[3]|freq2hz|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|_~0_combout\ = (!\inst2|varia[3]|freq2hz|count\(1) & ((\inst2|varia[3]|freq2hz|op_1~5_combout\) # (!\inst2|varia[3]|freq2hz|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(24),
	datac => \inst2|varia[3]|freq2hz|count\(1),
	datad => \inst2|varia[3]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[3]|freq2hz|_~0_combout\);

-- Location: FF_X14_Y11_N9
\inst2|varia[3]|freq2hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(1));

-- Location: LCCOMB_X14_Y11_N10
\inst2|varia[3]|freq2hz|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[2]~23_combout\ = (\inst2|varia[3]|freq2hz|count\(2) & (\inst2|varia[3]|freq2hz|count\(1) $ (VCC))) # (!\inst2|varia[3]|freq2hz|count\(2) & (\inst2|varia[3]|freq2hz|count\(1) & VCC))
-- \inst2|varia[3]|freq2hz|count[2]~24\ = CARRY((\inst2|varia[3]|freq2hz|count\(2) & \inst2|varia[3]|freq2hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(2),
	datab => \inst2|varia[3]|freq2hz|count\(1),
	datad => VCC,
	combout => \inst2|varia[3]|freq2hz|count[2]~23_combout\,
	cout => \inst2|varia[3]|freq2hz|count[2]~24\);

-- Location: LCCOMB_X14_Y11_N6
\inst2|varia[3]|freq2hz|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|op_1~6_combout\ = (\inst2|varia[3]|freq2hz|count\(24) & !\inst2|varia[3]|freq2hz|op_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(24),
	datad => \inst2|varia[3]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[3]|freq2hz|op_1~6_combout\);

-- Location: FF_X14_Y11_N11
\inst2|varia[3]|freq2hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[2]~23_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(2));

-- Location: LCCOMB_X14_Y11_N12
\inst2|varia[3]|freq2hz|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[3]~25_combout\ = (\inst2|varia[3]|freq2hz|count\(3) & (!\inst2|varia[3]|freq2hz|count[2]~24\)) # (!\inst2|varia[3]|freq2hz|count\(3) & ((\inst2|varia[3]|freq2hz|count[2]~24\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[3]~26\ = CARRY((!\inst2|varia[3]|freq2hz|count[2]~24\) # (!\inst2|varia[3]|freq2hz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(3),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[2]~24\,
	combout => \inst2|varia[3]|freq2hz|count[3]~25_combout\,
	cout => \inst2|varia[3]|freq2hz|count[3]~26\);

-- Location: FF_X14_Y11_N13
\inst2|varia[3]|freq2hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[3]~25_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(3));

-- Location: LCCOMB_X14_Y11_N14
\inst2|varia[3]|freq2hz|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[4]~27_combout\ = (\inst2|varia[3]|freq2hz|count\(4) & (\inst2|varia[3]|freq2hz|count[3]~26\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(4) & (!\inst2|varia[3]|freq2hz|count[3]~26\ & VCC))
-- \inst2|varia[3]|freq2hz|count[4]~28\ = CARRY((\inst2|varia[3]|freq2hz|count\(4) & !\inst2|varia[3]|freq2hz|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(4),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[3]~26\,
	combout => \inst2|varia[3]|freq2hz|count[4]~27_combout\,
	cout => \inst2|varia[3]|freq2hz|count[4]~28\);

-- Location: FF_X14_Y11_N15
\inst2|varia[3]|freq2hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[4]~27_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(4));

-- Location: LCCOMB_X14_Y11_N16
\inst2|varia[3]|freq2hz|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[5]~29_combout\ = (\inst2|varia[3]|freq2hz|count\(5) & (!\inst2|varia[3]|freq2hz|count[4]~28\)) # (!\inst2|varia[3]|freq2hz|count\(5) & ((\inst2|varia[3]|freq2hz|count[4]~28\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[5]~30\ = CARRY((!\inst2|varia[3]|freq2hz|count[4]~28\) # (!\inst2|varia[3]|freq2hz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(5),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[4]~28\,
	combout => \inst2|varia[3]|freq2hz|count[5]~29_combout\,
	cout => \inst2|varia[3]|freq2hz|count[5]~30\);

-- Location: FF_X14_Y11_N17
\inst2|varia[3]|freq2hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[5]~29_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(5));

-- Location: LCCOMB_X14_Y11_N18
\inst2|varia[3]|freq2hz|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[6]~31_combout\ = (\inst2|varia[3]|freq2hz|count\(6) & (\inst2|varia[3]|freq2hz|count[5]~30\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(6) & (!\inst2|varia[3]|freq2hz|count[5]~30\ & VCC))
-- \inst2|varia[3]|freq2hz|count[6]~32\ = CARRY((\inst2|varia[3]|freq2hz|count\(6) & !\inst2|varia[3]|freq2hz|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(6),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[5]~30\,
	combout => \inst2|varia[3]|freq2hz|count[6]~31_combout\,
	cout => \inst2|varia[3]|freq2hz|count[6]~32\);

-- Location: FF_X14_Y11_N19
\inst2|varia[3]|freq2hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[6]~31_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(6));

-- Location: LCCOMB_X14_Y11_N20
\inst2|varia[3]|freq2hz|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[7]~33_combout\ = (\inst2|varia[3]|freq2hz|count\(7) & (!\inst2|varia[3]|freq2hz|count[6]~32\)) # (!\inst2|varia[3]|freq2hz|count\(7) & ((\inst2|varia[3]|freq2hz|count[6]~32\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[7]~34\ = CARRY((!\inst2|varia[3]|freq2hz|count[6]~32\) # (!\inst2|varia[3]|freq2hz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(7),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[6]~32\,
	combout => \inst2|varia[3]|freq2hz|count[7]~33_combout\,
	cout => \inst2|varia[3]|freq2hz|count[7]~34\);

-- Location: FF_X14_Y11_N21
\inst2|varia[3]|freq2hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[7]~33_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(7));

-- Location: LCCOMB_X14_Y11_N22
\inst2|varia[3]|freq2hz|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[8]~35_combout\ = (\inst2|varia[3]|freq2hz|count\(8) & (\inst2|varia[3]|freq2hz|count[7]~34\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(8) & (!\inst2|varia[3]|freq2hz|count[7]~34\ & VCC))
-- \inst2|varia[3]|freq2hz|count[8]~36\ = CARRY((\inst2|varia[3]|freq2hz|count\(8) & !\inst2|varia[3]|freq2hz|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(8),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[7]~34\,
	combout => \inst2|varia[3]|freq2hz|count[8]~35_combout\,
	cout => \inst2|varia[3]|freq2hz|count[8]~36\);

-- Location: FF_X14_Y11_N23
\inst2|varia[3]|freq2hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[8]~35_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(8));

-- Location: LCCOMB_X14_Y11_N24
\inst2|varia[3]|freq2hz|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[9]~37_combout\ = (\inst2|varia[3]|freq2hz|count\(9) & (!\inst2|varia[3]|freq2hz|count[8]~36\)) # (!\inst2|varia[3]|freq2hz|count\(9) & ((\inst2|varia[3]|freq2hz|count[8]~36\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[9]~38\ = CARRY((!\inst2|varia[3]|freq2hz|count[8]~36\) # (!\inst2|varia[3]|freq2hz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(9),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[8]~36\,
	combout => \inst2|varia[3]|freq2hz|count[9]~37_combout\,
	cout => \inst2|varia[3]|freq2hz|count[9]~38\);

-- Location: FF_X14_Y11_N25
\inst2|varia[3]|freq2hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[9]~37_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(9));

-- Location: LCCOMB_X14_Y11_N26
\inst2|varia[3]|freq2hz|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[10]~39_combout\ = (\inst2|varia[3]|freq2hz|count\(10) & (\inst2|varia[3]|freq2hz|count[9]~38\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(10) & (!\inst2|varia[3]|freq2hz|count[9]~38\ & VCC))
-- \inst2|varia[3]|freq2hz|count[10]~40\ = CARRY((\inst2|varia[3]|freq2hz|count\(10) & !\inst2|varia[3]|freq2hz|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(10),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[9]~38\,
	combout => \inst2|varia[3]|freq2hz|count[10]~39_combout\,
	cout => \inst2|varia[3]|freq2hz|count[10]~40\);

-- Location: FF_X14_Y11_N27
\inst2|varia[3]|freq2hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[10]~39_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(10));

-- Location: LCCOMB_X14_Y11_N28
\inst2|varia[3]|freq2hz|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[11]~41_combout\ = (\inst2|varia[3]|freq2hz|count\(11) & (!\inst2|varia[3]|freq2hz|count[10]~40\)) # (!\inst2|varia[3]|freq2hz|count\(11) & ((\inst2|varia[3]|freq2hz|count[10]~40\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[11]~42\ = CARRY((!\inst2|varia[3]|freq2hz|count[10]~40\) # (!\inst2|varia[3]|freq2hz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(11),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[10]~40\,
	combout => \inst2|varia[3]|freq2hz|count[11]~41_combout\,
	cout => \inst2|varia[3]|freq2hz|count[11]~42\);

-- Location: FF_X14_Y11_N29
\inst2|varia[3]|freq2hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[11]~41_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(11));

-- Location: LCCOMB_X14_Y11_N30
\inst2|varia[3]|freq2hz|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[12]~43_combout\ = (\inst2|varia[3]|freq2hz|count\(12) & (\inst2|varia[3]|freq2hz|count[11]~42\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(12) & (!\inst2|varia[3]|freq2hz|count[11]~42\ & VCC))
-- \inst2|varia[3]|freq2hz|count[12]~44\ = CARRY((\inst2|varia[3]|freq2hz|count\(12) & !\inst2|varia[3]|freq2hz|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(12),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[11]~42\,
	combout => \inst2|varia[3]|freq2hz|count[12]~43_combout\,
	cout => \inst2|varia[3]|freq2hz|count[12]~44\);

-- Location: FF_X14_Y11_N31
\inst2|varia[3]|freq2hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[12]~43_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(12));

-- Location: LCCOMB_X14_Y10_N0
\inst2|varia[3]|freq2hz|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[13]~45_combout\ = (\inst2|varia[3]|freq2hz|count\(13) & (!\inst2|varia[3]|freq2hz|count[12]~44\)) # (!\inst2|varia[3]|freq2hz|count\(13) & ((\inst2|varia[3]|freq2hz|count[12]~44\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[13]~46\ = CARRY((!\inst2|varia[3]|freq2hz|count[12]~44\) # (!\inst2|varia[3]|freq2hz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(13),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[12]~44\,
	combout => \inst2|varia[3]|freq2hz|count[13]~45_combout\,
	cout => \inst2|varia[3]|freq2hz|count[13]~46\);

-- Location: FF_X14_Y10_N1
\inst2|varia[3]|freq2hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[13]~45_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(13));

-- Location: LCCOMB_X14_Y10_N2
\inst2|varia[3]|freq2hz|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[14]~47_combout\ = (\inst2|varia[3]|freq2hz|count\(14) & (\inst2|varia[3]|freq2hz|count[13]~46\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(14) & (!\inst2|varia[3]|freq2hz|count[13]~46\ & VCC))
-- \inst2|varia[3]|freq2hz|count[14]~48\ = CARRY((\inst2|varia[3]|freq2hz|count\(14) & !\inst2|varia[3]|freq2hz|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(14),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[13]~46\,
	combout => \inst2|varia[3]|freq2hz|count[14]~47_combout\,
	cout => \inst2|varia[3]|freq2hz|count[14]~48\);

-- Location: FF_X14_Y10_N3
\inst2|varia[3]|freq2hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[14]~47_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(14));

-- Location: LCCOMB_X14_Y10_N4
\inst2|varia[3]|freq2hz|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[15]~49_combout\ = (\inst2|varia[3]|freq2hz|count\(15) & (!\inst2|varia[3]|freq2hz|count[14]~48\)) # (!\inst2|varia[3]|freq2hz|count\(15) & ((\inst2|varia[3]|freq2hz|count[14]~48\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[15]~50\ = CARRY((!\inst2|varia[3]|freq2hz|count[14]~48\) # (!\inst2|varia[3]|freq2hz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(15),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[14]~48\,
	combout => \inst2|varia[3]|freq2hz|count[15]~49_combout\,
	cout => \inst2|varia[3]|freq2hz|count[15]~50\);

-- Location: FF_X14_Y10_N5
\inst2|varia[3]|freq2hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[15]~49_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(15));

-- Location: LCCOMB_X14_Y10_N6
\inst2|varia[3]|freq2hz|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[16]~51_combout\ = (\inst2|varia[3]|freq2hz|count\(16) & (\inst2|varia[3]|freq2hz|count[15]~50\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(16) & (!\inst2|varia[3]|freq2hz|count[15]~50\ & VCC))
-- \inst2|varia[3]|freq2hz|count[16]~52\ = CARRY((\inst2|varia[3]|freq2hz|count\(16) & !\inst2|varia[3]|freq2hz|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(16),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[15]~50\,
	combout => \inst2|varia[3]|freq2hz|count[16]~51_combout\,
	cout => \inst2|varia[3]|freq2hz|count[16]~52\);

-- Location: FF_X14_Y10_N7
\inst2|varia[3]|freq2hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[16]~51_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(16));

-- Location: LCCOMB_X14_Y10_N8
\inst2|varia[3]|freq2hz|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[17]~53_combout\ = (\inst2|varia[3]|freq2hz|count\(17) & (!\inst2|varia[3]|freq2hz|count[16]~52\)) # (!\inst2|varia[3]|freq2hz|count\(17) & ((\inst2|varia[3]|freq2hz|count[16]~52\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[17]~54\ = CARRY((!\inst2|varia[3]|freq2hz|count[16]~52\) # (!\inst2|varia[3]|freq2hz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(17),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[16]~52\,
	combout => \inst2|varia[3]|freq2hz|count[17]~53_combout\,
	cout => \inst2|varia[3]|freq2hz|count[17]~54\);

-- Location: FF_X14_Y10_N9
\inst2|varia[3]|freq2hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[17]~53_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(17));

-- Location: LCCOMB_X14_Y10_N10
\inst2|varia[3]|freq2hz|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[18]~55_combout\ = (\inst2|varia[3]|freq2hz|count\(18) & (\inst2|varia[3]|freq2hz|count[17]~54\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(18) & (!\inst2|varia[3]|freq2hz|count[17]~54\ & VCC))
-- \inst2|varia[3]|freq2hz|count[18]~56\ = CARRY((\inst2|varia[3]|freq2hz|count\(18) & !\inst2|varia[3]|freq2hz|count[17]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(18),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[17]~54\,
	combout => \inst2|varia[3]|freq2hz|count[18]~55_combout\,
	cout => \inst2|varia[3]|freq2hz|count[18]~56\);

-- Location: FF_X14_Y10_N11
\inst2|varia[3]|freq2hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[18]~55_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(18));

-- Location: LCCOMB_X14_Y10_N12
\inst2|varia[3]|freq2hz|count[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[19]~57_combout\ = (\inst2|varia[3]|freq2hz|count\(19) & (!\inst2|varia[3]|freq2hz|count[18]~56\)) # (!\inst2|varia[3]|freq2hz|count\(19) & ((\inst2|varia[3]|freq2hz|count[18]~56\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[19]~58\ = CARRY((!\inst2|varia[3]|freq2hz|count[18]~56\) # (!\inst2|varia[3]|freq2hz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(19),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[18]~56\,
	combout => \inst2|varia[3]|freq2hz|count[19]~57_combout\,
	cout => \inst2|varia[3]|freq2hz|count[19]~58\);

-- Location: FF_X14_Y10_N13
\inst2|varia[3]|freq2hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[19]~57_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(19));

-- Location: LCCOMB_X14_Y10_N14
\inst2|varia[3]|freq2hz|count[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[20]~59_combout\ = (\inst2|varia[3]|freq2hz|count\(20) & (\inst2|varia[3]|freq2hz|count[19]~58\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(20) & (!\inst2|varia[3]|freq2hz|count[19]~58\ & VCC))
-- \inst2|varia[3]|freq2hz|count[20]~60\ = CARRY((\inst2|varia[3]|freq2hz|count\(20) & !\inst2|varia[3]|freq2hz|count[19]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(20),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[19]~58\,
	combout => \inst2|varia[3]|freq2hz|count[20]~59_combout\,
	cout => \inst2|varia[3]|freq2hz|count[20]~60\);

-- Location: FF_X14_Y10_N15
\inst2|varia[3]|freq2hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[20]~59_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(20));

-- Location: LCCOMB_X14_Y10_N16
\inst2|varia[3]|freq2hz|count[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[21]~61_combout\ = (\inst2|varia[3]|freq2hz|count\(21) & (!\inst2|varia[3]|freq2hz|count[20]~60\)) # (!\inst2|varia[3]|freq2hz|count\(21) & ((\inst2|varia[3]|freq2hz|count[20]~60\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[21]~62\ = CARRY((!\inst2|varia[3]|freq2hz|count[20]~60\) # (!\inst2|varia[3]|freq2hz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(21),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[20]~60\,
	combout => \inst2|varia[3]|freq2hz|count[21]~61_combout\,
	cout => \inst2|varia[3]|freq2hz|count[21]~62\);

-- Location: FF_X14_Y10_N17
\inst2|varia[3]|freq2hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[21]~61_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(21));

-- Location: LCCOMB_X14_Y10_N18
\inst2|varia[3]|freq2hz|count[22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[22]~63_combout\ = (\inst2|varia[3]|freq2hz|count\(22) & (\inst2|varia[3]|freq2hz|count[21]~62\ $ (GND))) # (!\inst2|varia[3]|freq2hz|count\(22) & (!\inst2|varia[3]|freq2hz|count[21]~62\ & VCC))
-- \inst2|varia[3]|freq2hz|count[22]~64\ = CARRY((\inst2|varia[3]|freq2hz|count\(22) & !\inst2|varia[3]|freq2hz|count[21]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(22),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[21]~62\,
	combout => \inst2|varia[3]|freq2hz|count[22]~63_combout\,
	cout => \inst2|varia[3]|freq2hz|count[22]~64\);

-- Location: FF_X14_Y10_N19
\inst2|varia[3]|freq2hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[22]~63_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(22));

-- Location: LCCOMB_X14_Y10_N20
\inst2|varia[3]|freq2hz|count[23]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[23]~65_combout\ = (\inst2|varia[3]|freq2hz|count\(23) & (!\inst2|varia[3]|freq2hz|count[22]~64\)) # (!\inst2|varia[3]|freq2hz|count\(23) & ((\inst2|varia[3]|freq2hz|count[22]~64\) # (GND)))
-- \inst2|varia[3]|freq2hz|count[23]~66\ = CARRY((!\inst2|varia[3]|freq2hz|count[22]~64\) # (!\inst2|varia[3]|freq2hz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(23),
	datad => VCC,
	cin => \inst2|varia[3]|freq2hz|count[22]~64\,
	combout => \inst2|varia[3]|freq2hz|count[23]~65_combout\,
	cout => \inst2|varia[3]|freq2hz|count[23]~66\);

-- Location: FF_X14_Y10_N21
\inst2|varia[3]|freq2hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[23]~65_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(23));

-- Location: LCCOMB_X14_Y10_N22
\inst2|varia[3]|freq2hz|count[24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|count[24]~67_combout\ = \inst2|varia[3]|freq2hz|count\(24) $ (!\inst2|varia[3]|freq2hz|count[23]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|freq2hz|count\(24),
	cin => \inst2|varia[3]|freq2hz|count[23]~66\,
	combout => \inst2|varia[3]|freq2hz|count[24]~67_combout\);

-- Location: FF_X14_Y10_N23
\inst2|varia[3]|freq2hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|count[24]~67_combout\,
	sclr => \inst2|varia[3]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|count\(24));

-- Location: LCCOMB_X13_Y11_N18
\inst2|varia[3]|freq2hz|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|alt~1_combout\ = \inst2|varia[3]|freq2hz|alt~q\ $ (((\inst2|varia[3]|freq2hz|count\(24) & !\inst2|varia[3]|freq2hz|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|freq2hz|count\(24),
	datac => \inst2|varia[3]|freq2hz|alt~q\,
	datad => \inst2|varia[3]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[3]|freq2hz|alt~1_combout\);

-- Location: LCCOMB_X13_Y11_N22
\inst2|varia[3]|freq2hz|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|freq2hz|alt~feeder_combout\ = \inst2|varia[3]|freq2hz|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[3]|freq2hz|alt~1_combout\,
	combout => \inst2|varia[3]|freq2hz|alt~feeder_combout\);

-- Location: FF_X13_Y11_N23
\inst2|varia[3]|freq2hz|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~2clkctrl_outclk\,
	d => \inst2|varia[3]|freq2hz|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|freq2hz|alt~q\);

-- Location: LCCOMB_X9_Y9_N4
\inst2|varia[3]|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|_~1_combout\ = LCELL((\inst2|varia[3]|count|count\(1) & \inst2|varia[3]|freq2hz|alt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[3]|count|count\(1),
	datad => \inst2|varia[3]|freq2hz|alt~q\,
	combout => \inst2|varia[3]|_~1_combout\);

-- Location: LCCOMB_X9_Y9_N18
\inst2|varia[3]|contador6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|contador6|_~2_combout\ = (!\inst2|varia[3]|contador6|count\(1) & ((!\inst2|varia[3]|contador6|count\(3)) # (!\inst2|varia[3]|contador6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|contador6|count\(2),
	datac => \inst2|varia[3]|contador6|count\(1),
	datad => \inst2|varia[3]|contador6|count\(3),
	combout => \inst2|varia[3]|contador6|_~2_combout\);

-- Location: FF_X9_Y9_N19
\inst2|varia[3]|contador6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~1_combout\,
	d => \inst2|varia[3]|contador6|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|contador6|count\(1));

-- Location: LCCOMB_X9_Y9_N30
\inst2|varia[3]|contador6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|contador6|_~0_combout\ = (\inst2|varia[3]|contador6|count\(2) & (!\inst2|varia[3]|contador6|count\(3) & \inst2|varia[3]|contador6|count\(1))) # (!\inst2|varia[3]|contador6|count\(2) & (\inst2|varia[3]|contador6|count\(3) & 
-- !\inst2|varia[3]|contador6|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|contador6|count\(2),
	datac => \inst2|varia[3]|contador6|count\(3),
	datad => \inst2|varia[3]|contador6|count\(1),
	combout => \inst2|varia[3]|contador6|_~0_combout\);

-- Location: FF_X9_Y9_N31
\inst2|varia[3]|contador6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~1_combout\,
	d => \inst2|varia[3]|contador6|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|contador6|count\(3));

-- Location: LCCOMB_X9_Y9_N8
\inst2|varia[3]|contador6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|contador6|_~1_combout\ = (!\inst2|varia[3]|contador6|count\(3) & (\inst2|varia[3]|contador6|count\(2) $ (\inst2|varia[3]|contador6|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|contador6|count\(3),
	datac => \inst2|varia[3]|contador6|count\(2),
	datad => \inst2|varia[3]|contador6|count\(1),
	combout => \inst2|varia[3]|contador6|_~1_combout\);

-- Location: FF_X9_Y9_N9
\inst2|varia[3]|contador6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~1_combout\,
	d => \inst2|varia[3]|contador6|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|contador6|count\(2));

-- Location: LCCOMB_X9_Y9_N2
\inst2|varia[3]|contador6|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|contador6|alt~1_combout\ = \inst2|varia[3]|contador6|alt~q\ $ (((\inst2|varia[3]|contador6|count\(3) & ((\inst2|varia[3]|contador6|count\(2)) # (\inst2|varia[3]|contador6|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|contador6|alt~q\,
	datab => \inst2|varia[3]|contador6|count\(2),
	datac => \inst2|varia[3]|contador6|count\(3),
	datad => \inst2|varia[3]|contador6|count\(1),
	combout => \inst2|varia[3]|contador6|alt~1_combout\);

-- Location: LCCOMB_X9_Y9_N14
\inst2|varia[3]|contador6|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|contador6|alt~feeder_combout\ = \inst2|varia[3]|contador6|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[3]|contador6|alt~1_combout\,
	combout => \inst2|varia[3]|contador6|alt~feeder_combout\);

-- Location: FF_X9_Y9_N15
\inst2|varia[3]|contador6|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|_~1_combout\,
	d => \inst2|varia[3]|contador6|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|contador6|alt~q\);

-- Location: LCCOMB_X10_Y8_N12
\inst2|varia[4]|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|_~0_combout\ = LCELL((\inst2|varia[4]|count|count\(1) & (((\inst2|varia[4]|contador6|alt~q\)))) # (!\inst2|varia[4]|count|count\(1) & (!\inst4|_~11_combout\ & (\inst2|varia[6]|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~11_combout\,
	datab => \inst2|varia[6]|_~4_combout\,
	datac => \inst2|varia[4]|count|count\(1),
	datad => \inst2|varia[4]|contador6|alt~q\,
	combout => \inst2|varia[4]|_~0_combout\);

-- Location: LCCOMB_X9_Y11_N16
\inst2|varia[4]|count|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|count|count[1]~0_combout\ = !\inst2|varia[4]|count|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[4]|count|count\(1),
	combout => \inst2|varia[4]|count|count[1]~0_combout\);

-- Location: LCCOMB_X9_Y11_N30
\inst2|varia[4]|count|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|count|count[1]~feeder_combout\ = \inst2|varia[4]|count|count[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[4]|count|count[1]~0_combout\,
	combout => \inst2|varia[4]|count|count[1]~feeder_combout\);

-- Location: FF_X9_Y11_N31
\inst2|varia[4]|count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~0_combout\,
	d => \inst2|varia[4]|count|count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|count|count\(1));

-- Location: LCCOMB_X9_Y11_N14
\inst2|varia[4]|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|_~2_combout\ = LCELL((\clock~input_o\ & \inst2|varia[4]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~input_o\,
	datac => \inst2|varia[4]|count|count\(1),
	combout => \inst2|varia[4]|_~2_combout\);

-- Location: CLKCTRL_G6
\inst2|varia[4]|_~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[4]|_~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[4]|_~2clkctrl_outclk\);

-- Location: LCCOMB_X22_Y5_N28
\inst2|varia[4]|freq2hz|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|op_1~4_combout\ = (((!\inst2|varia[4]|freq2hz|count\(18)) # (!\inst2|varia[4]|freq2hz|count\(20))) # (!\inst2|varia[4]|freq2hz|count\(21))) # (!\inst2|varia[4]|freq2hz|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(19),
	datab => \inst2|varia[4]|freq2hz|count\(21),
	datac => \inst2|varia[4]|freq2hz|count\(20),
	datad => \inst2|varia[4]|freq2hz|count\(18),
	combout => \inst2|varia[4]|freq2hz|op_1~4_combout\);

-- Location: LCCOMB_X22_Y6_N4
\inst2|varia[4]|freq2hz|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|op_1~0_combout\ = (((!\inst2|varia[4]|freq2hz|count\(13)) # (!\inst2|varia[4]|freq2hz|count\(12))) # (!\inst2|varia[4]|freq2hz|count\(14))) # (!\inst2|varia[4]|freq2hz|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(11),
	datab => \inst2|varia[4]|freq2hz|count\(14),
	datac => \inst2|varia[4]|freq2hz|count\(12),
	datad => \inst2|varia[4]|freq2hz|count\(13),
	combout => \inst2|varia[4]|freq2hz|op_1~0_combout\);

-- Location: LCCOMB_X21_Y6_N24
\inst2|varia[4]|freq2hz|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|op_1~1_combout\ = (!\inst2|varia[4]|freq2hz|count\(7) & (!\inst2|varia[4]|freq2hz|count\(6) & (!\inst2|varia[4]|freq2hz|count\(8) & !\inst2|varia[4]|freq2hz|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(7),
	datab => \inst2|varia[4]|freq2hz|count\(6),
	datac => \inst2|varia[4]|freq2hz|count\(8),
	datad => \inst2|varia[4]|freq2hz|count\(9),
	combout => \inst2|varia[4]|freq2hz|op_1~1_combout\);

-- Location: LCCOMB_X22_Y6_N6
\inst2|varia[4]|freq2hz|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|op_1~2_combout\ = (!\inst2|varia[4]|freq2hz|count\(15) & ((\inst2|varia[4]|freq2hz|op_1~0_combout\) # ((!\inst2|varia[4]|freq2hz|count\(10) & \inst2|varia[4]|freq2hz|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(10),
	datab => \inst2|varia[4]|freq2hz|count\(15),
	datac => \inst2|varia[4]|freq2hz|op_1~0_combout\,
	datad => \inst2|varia[4]|freq2hz|op_1~1_combout\,
	combout => \inst2|varia[4]|freq2hz|op_1~2_combout\);

-- Location: LCCOMB_X22_Y6_N0
\inst2|varia[4]|freq2hz|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|op_1~3_combout\ = (!\inst2|varia[4]|freq2hz|count\(17) & ((\inst2|varia[4]|freq2hz|op_1~2_combout\) # (!\inst2|varia[4]|freq2hz|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(16),
	datac => \inst2|varia[4]|freq2hz|count\(17),
	datad => \inst2|varia[4]|freq2hz|op_1~2_combout\,
	combout => \inst2|varia[4]|freq2hz|op_1~3_combout\);

-- Location: LCCOMB_X22_Y6_N2
\inst2|varia[4]|freq2hz|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|op_1~5_combout\ = (!\inst2|varia[4]|freq2hz|count\(23) & (((\inst2|varia[4]|freq2hz|op_1~4_combout\) # (\inst2|varia[4]|freq2hz|op_1~3_combout\)) # (!\inst2|varia[4]|freq2hz|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(22),
	datab => \inst2|varia[4]|freq2hz|count\(23),
	datac => \inst2|varia[4]|freq2hz|op_1~4_combout\,
	datad => \inst2|varia[4]|freq2hz|op_1~3_combout\,
	combout => \inst2|varia[4]|freq2hz|op_1~5_combout\);

-- Location: LCCOMB_X23_Y6_N0
\inst2|varia[4]|freq2hz|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|_~0_combout\ = (!\inst2|varia[4]|freq2hz|count\(1) & ((\inst2|varia[4]|freq2hz|op_1~5_combout\) # (!\inst2|varia[4]|freq2hz|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(24),
	datac => \inst2|varia[4]|freq2hz|count\(1),
	datad => \inst2|varia[4]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[4]|freq2hz|_~0_combout\);

-- Location: FF_X23_Y6_N1
\inst2|varia[4]|freq2hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(1));

-- Location: LCCOMB_X22_Y6_N10
\inst2|varia[4]|freq2hz|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[2]~23_combout\ = (\inst2|varia[4]|freq2hz|count\(2) & (\inst2|varia[4]|freq2hz|count\(1) $ (VCC))) # (!\inst2|varia[4]|freq2hz|count\(2) & (\inst2|varia[4]|freq2hz|count\(1) & VCC))
-- \inst2|varia[4]|freq2hz|count[2]~24\ = CARRY((\inst2|varia[4]|freq2hz|count\(2) & \inst2|varia[4]|freq2hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(2),
	datab => \inst2|varia[4]|freq2hz|count\(1),
	datad => VCC,
	combout => \inst2|varia[4]|freq2hz|count[2]~23_combout\,
	cout => \inst2|varia[4]|freq2hz|count[2]~24\);

-- Location: LCCOMB_X22_Y6_N8
\inst2|varia[4]|freq2hz|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|op_1~6_combout\ = (\inst2|varia[4]|freq2hz|count\(24) & !\inst2|varia[4]|freq2hz|op_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[4]|freq2hz|count\(24),
	datad => \inst2|varia[4]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[4]|freq2hz|op_1~6_combout\);

-- Location: FF_X22_Y6_N11
\inst2|varia[4]|freq2hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[2]~23_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(2));

-- Location: LCCOMB_X22_Y6_N12
\inst2|varia[4]|freq2hz|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[3]~25_combout\ = (\inst2|varia[4]|freq2hz|count\(3) & (!\inst2|varia[4]|freq2hz|count[2]~24\)) # (!\inst2|varia[4]|freq2hz|count\(3) & ((\inst2|varia[4]|freq2hz|count[2]~24\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[3]~26\ = CARRY((!\inst2|varia[4]|freq2hz|count[2]~24\) # (!\inst2|varia[4]|freq2hz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(3),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[2]~24\,
	combout => \inst2|varia[4]|freq2hz|count[3]~25_combout\,
	cout => \inst2|varia[4]|freq2hz|count[3]~26\);

-- Location: FF_X22_Y6_N13
\inst2|varia[4]|freq2hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[3]~25_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(3));

-- Location: LCCOMB_X22_Y6_N14
\inst2|varia[4]|freq2hz|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[4]~27_combout\ = (\inst2|varia[4]|freq2hz|count\(4) & (\inst2|varia[4]|freq2hz|count[3]~26\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(4) & (!\inst2|varia[4]|freq2hz|count[3]~26\ & VCC))
-- \inst2|varia[4]|freq2hz|count[4]~28\ = CARRY((\inst2|varia[4]|freq2hz|count\(4) & !\inst2|varia[4]|freq2hz|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(4),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[3]~26\,
	combout => \inst2|varia[4]|freq2hz|count[4]~27_combout\,
	cout => \inst2|varia[4]|freq2hz|count[4]~28\);

-- Location: FF_X22_Y6_N15
\inst2|varia[4]|freq2hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[4]~27_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(4));

-- Location: LCCOMB_X22_Y6_N16
\inst2|varia[4]|freq2hz|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[5]~29_combout\ = (\inst2|varia[4]|freq2hz|count\(5) & (!\inst2|varia[4]|freq2hz|count[4]~28\)) # (!\inst2|varia[4]|freq2hz|count\(5) & ((\inst2|varia[4]|freq2hz|count[4]~28\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[5]~30\ = CARRY((!\inst2|varia[4]|freq2hz|count[4]~28\) # (!\inst2|varia[4]|freq2hz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(5),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[4]~28\,
	combout => \inst2|varia[4]|freq2hz|count[5]~29_combout\,
	cout => \inst2|varia[4]|freq2hz|count[5]~30\);

-- Location: FF_X22_Y6_N17
\inst2|varia[4]|freq2hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[5]~29_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(5));

-- Location: LCCOMB_X22_Y6_N18
\inst2|varia[4]|freq2hz|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[6]~31_combout\ = (\inst2|varia[4]|freq2hz|count\(6) & (\inst2|varia[4]|freq2hz|count[5]~30\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(6) & (!\inst2|varia[4]|freq2hz|count[5]~30\ & VCC))
-- \inst2|varia[4]|freq2hz|count[6]~32\ = CARRY((\inst2|varia[4]|freq2hz|count\(6) & !\inst2|varia[4]|freq2hz|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(6),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[5]~30\,
	combout => \inst2|varia[4]|freq2hz|count[6]~31_combout\,
	cout => \inst2|varia[4]|freq2hz|count[6]~32\);

-- Location: FF_X22_Y6_N19
\inst2|varia[4]|freq2hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[6]~31_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(6));

-- Location: LCCOMB_X22_Y6_N20
\inst2|varia[4]|freq2hz|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[7]~33_combout\ = (\inst2|varia[4]|freq2hz|count\(7) & (!\inst2|varia[4]|freq2hz|count[6]~32\)) # (!\inst2|varia[4]|freq2hz|count\(7) & ((\inst2|varia[4]|freq2hz|count[6]~32\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[7]~34\ = CARRY((!\inst2|varia[4]|freq2hz|count[6]~32\) # (!\inst2|varia[4]|freq2hz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(7),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[6]~32\,
	combout => \inst2|varia[4]|freq2hz|count[7]~33_combout\,
	cout => \inst2|varia[4]|freq2hz|count[7]~34\);

-- Location: FF_X22_Y6_N21
\inst2|varia[4]|freq2hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[7]~33_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(7));

-- Location: LCCOMB_X22_Y6_N22
\inst2|varia[4]|freq2hz|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[8]~35_combout\ = (\inst2|varia[4]|freq2hz|count\(8) & (\inst2|varia[4]|freq2hz|count[7]~34\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(8) & (!\inst2|varia[4]|freq2hz|count[7]~34\ & VCC))
-- \inst2|varia[4]|freq2hz|count[8]~36\ = CARRY((\inst2|varia[4]|freq2hz|count\(8) & !\inst2|varia[4]|freq2hz|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(8),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[7]~34\,
	combout => \inst2|varia[4]|freq2hz|count[8]~35_combout\,
	cout => \inst2|varia[4]|freq2hz|count[8]~36\);

-- Location: FF_X22_Y6_N23
\inst2|varia[4]|freq2hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[8]~35_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(8));

-- Location: LCCOMB_X22_Y6_N24
\inst2|varia[4]|freq2hz|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[9]~37_combout\ = (\inst2|varia[4]|freq2hz|count\(9) & (!\inst2|varia[4]|freq2hz|count[8]~36\)) # (!\inst2|varia[4]|freq2hz|count\(9) & ((\inst2|varia[4]|freq2hz|count[8]~36\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[9]~38\ = CARRY((!\inst2|varia[4]|freq2hz|count[8]~36\) # (!\inst2|varia[4]|freq2hz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(9),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[8]~36\,
	combout => \inst2|varia[4]|freq2hz|count[9]~37_combout\,
	cout => \inst2|varia[4]|freq2hz|count[9]~38\);

-- Location: FF_X22_Y6_N25
\inst2|varia[4]|freq2hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[9]~37_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(9));

-- Location: LCCOMB_X22_Y6_N26
\inst2|varia[4]|freq2hz|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[10]~39_combout\ = (\inst2|varia[4]|freq2hz|count\(10) & (\inst2|varia[4]|freq2hz|count[9]~38\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(10) & (!\inst2|varia[4]|freq2hz|count[9]~38\ & VCC))
-- \inst2|varia[4]|freq2hz|count[10]~40\ = CARRY((\inst2|varia[4]|freq2hz|count\(10) & !\inst2|varia[4]|freq2hz|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(10),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[9]~38\,
	combout => \inst2|varia[4]|freq2hz|count[10]~39_combout\,
	cout => \inst2|varia[4]|freq2hz|count[10]~40\);

-- Location: FF_X22_Y6_N27
\inst2|varia[4]|freq2hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[10]~39_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(10));

-- Location: LCCOMB_X22_Y6_N28
\inst2|varia[4]|freq2hz|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[11]~41_combout\ = (\inst2|varia[4]|freq2hz|count\(11) & (!\inst2|varia[4]|freq2hz|count[10]~40\)) # (!\inst2|varia[4]|freq2hz|count\(11) & ((\inst2|varia[4]|freq2hz|count[10]~40\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[11]~42\ = CARRY((!\inst2|varia[4]|freq2hz|count[10]~40\) # (!\inst2|varia[4]|freq2hz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(11),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[10]~40\,
	combout => \inst2|varia[4]|freq2hz|count[11]~41_combout\,
	cout => \inst2|varia[4]|freq2hz|count[11]~42\);

-- Location: FF_X22_Y6_N29
\inst2|varia[4]|freq2hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[11]~41_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(11));

-- Location: LCCOMB_X22_Y6_N30
\inst2|varia[4]|freq2hz|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[12]~43_combout\ = (\inst2|varia[4]|freq2hz|count\(12) & (\inst2|varia[4]|freq2hz|count[11]~42\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(12) & (!\inst2|varia[4]|freq2hz|count[11]~42\ & VCC))
-- \inst2|varia[4]|freq2hz|count[12]~44\ = CARRY((\inst2|varia[4]|freq2hz|count\(12) & !\inst2|varia[4]|freq2hz|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(12),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[11]~42\,
	combout => \inst2|varia[4]|freq2hz|count[12]~43_combout\,
	cout => \inst2|varia[4]|freq2hz|count[12]~44\);

-- Location: FF_X22_Y6_N31
\inst2|varia[4]|freq2hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[12]~43_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(12));

-- Location: LCCOMB_X22_Y5_N0
\inst2|varia[4]|freq2hz|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[13]~45_combout\ = (\inst2|varia[4]|freq2hz|count\(13) & (!\inst2|varia[4]|freq2hz|count[12]~44\)) # (!\inst2|varia[4]|freq2hz|count\(13) & ((\inst2|varia[4]|freq2hz|count[12]~44\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[13]~46\ = CARRY((!\inst2|varia[4]|freq2hz|count[12]~44\) # (!\inst2|varia[4]|freq2hz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(13),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[12]~44\,
	combout => \inst2|varia[4]|freq2hz|count[13]~45_combout\,
	cout => \inst2|varia[4]|freq2hz|count[13]~46\);

-- Location: FF_X22_Y5_N1
\inst2|varia[4]|freq2hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[13]~45_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(13));

-- Location: LCCOMB_X22_Y5_N2
\inst2|varia[4]|freq2hz|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[14]~47_combout\ = (\inst2|varia[4]|freq2hz|count\(14) & (\inst2|varia[4]|freq2hz|count[13]~46\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(14) & (!\inst2|varia[4]|freq2hz|count[13]~46\ & VCC))
-- \inst2|varia[4]|freq2hz|count[14]~48\ = CARRY((\inst2|varia[4]|freq2hz|count\(14) & !\inst2|varia[4]|freq2hz|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(14),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[13]~46\,
	combout => \inst2|varia[4]|freq2hz|count[14]~47_combout\,
	cout => \inst2|varia[4]|freq2hz|count[14]~48\);

-- Location: FF_X23_Y6_N29
\inst2|varia[4]|freq2hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	asdata => \inst2|varia[4]|freq2hz|count[14]~47_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(14));

-- Location: LCCOMB_X22_Y5_N4
\inst2|varia[4]|freq2hz|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[15]~49_combout\ = (\inst2|varia[4]|freq2hz|count\(15) & (!\inst2|varia[4]|freq2hz|count[14]~48\)) # (!\inst2|varia[4]|freq2hz|count\(15) & ((\inst2|varia[4]|freq2hz|count[14]~48\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[15]~50\ = CARRY((!\inst2|varia[4]|freq2hz|count[14]~48\) # (!\inst2|varia[4]|freq2hz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(15),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[14]~48\,
	combout => \inst2|varia[4]|freq2hz|count[15]~49_combout\,
	cout => \inst2|varia[4]|freq2hz|count[15]~50\);

-- Location: FF_X23_Y6_N23
\inst2|varia[4]|freq2hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	asdata => \inst2|varia[4]|freq2hz|count[15]~49_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(15));

-- Location: LCCOMB_X22_Y5_N6
\inst2|varia[4]|freq2hz|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[16]~51_combout\ = (\inst2|varia[4]|freq2hz|count\(16) & (\inst2|varia[4]|freq2hz|count[15]~50\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(16) & (!\inst2|varia[4]|freq2hz|count[15]~50\ & VCC))
-- \inst2|varia[4]|freq2hz|count[16]~52\ = CARRY((\inst2|varia[4]|freq2hz|count\(16) & !\inst2|varia[4]|freq2hz|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(16),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[15]~50\,
	combout => \inst2|varia[4]|freq2hz|count[16]~51_combout\,
	cout => \inst2|varia[4]|freq2hz|count[16]~52\);

-- Location: FF_X22_Y5_N7
\inst2|varia[4]|freq2hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[16]~51_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(16));

-- Location: LCCOMB_X22_Y5_N8
\inst2|varia[4]|freq2hz|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[17]~53_combout\ = (\inst2|varia[4]|freq2hz|count\(17) & (!\inst2|varia[4]|freq2hz|count[16]~52\)) # (!\inst2|varia[4]|freq2hz|count\(17) & ((\inst2|varia[4]|freq2hz|count[16]~52\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[17]~54\ = CARRY((!\inst2|varia[4]|freq2hz|count[16]~52\) # (!\inst2|varia[4]|freq2hz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(17),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[16]~52\,
	combout => \inst2|varia[4]|freq2hz|count[17]~53_combout\,
	cout => \inst2|varia[4]|freq2hz|count[17]~54\);

-- Location: FF_X22_Y5_N9
\inst2|varia[4]|freq2hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[17]~53_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(17));

-- Location: LCCOMB_X22_Y5_N10
\inst2|varia[4]|freq2hz|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[18]~55_combout\ = (\inst2|varia[4]|freq2hz|count\(18) & (\inst2|varia[4]|freq2hz|count[17]~54\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(18) & (!\inst2|varia[4]|freq2hz|count[17]~54\ & VCC))
-- \inst2|varia[4]|freq2hz|count[18]~56\ = CARRY((\inst2|varia[4]|freq2hz|count\(18) & !\inst2|varia[4]|freq2hz|count[17]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(18),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[17]~54\,
	combout => \inst2|varia[4]|freq2hz|count[18]~55_combout\,
	cout => \inst2|varia[4]|freq2hz|count[18]~56\);

-- Location: FF_X22_Y5_N11
\inst2|varia[4]|freq2hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[18]~55_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(18));

-- Location: LCCOMB_X22_Y5_N12
\inst2|varia[4]|freq2hz|count[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[19]~57_combout\ = (\inst2|varia[4]|freq2hz|count\(19) & (!\inst2|varia[4]|freq2hz|count[18]~56\)) # (!\inst2|varia[4]|freq2hz|count\(19) & ((\inst2|varia[4]|freq2hz|count[18]~56\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[19]~58\ = CARRY((!\inst2|varia[4]|freq2hz|count[18]~56\) # (!\inst2|varia[4]|freq2hz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(19),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[18]~56\,
	combout => \inst2|varia[4]|freq2hz|count[19]~57_combout\,
	cout => \inst2|varia[4]|freq2hz|count[19]~58\);

-- Location: FF_X22_Y5_N13
\inst2|varia[4]|freq2hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[19]~57_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(19));

-- Location: LCCOMB_X22_Y5_N14
\inst2|varia[4]|freq2hz|count[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[20]~59_combout\ = (\inst2|varia[4]|freq2hz|count\(20) & (\inst2|varia[4]|freq2hz|count[19]~58\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(20) & (!\inst2|varia[4]|freq2hz|count[19]~58\ & VCC))
-- \inst2|varia[4]|freq2hz|count[20]~60\ = CARRY((\inst2|varia[4]|freq2hz|count\(20) & !\inst2|varia[4]|freq2hz|count[19]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(20),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[19]~58\,
	combout => \inst2|varia[4]|freq2hz|count[20]~59_combout\,
	cout => \inst2|varia[4]|freq2hz|count[20]~60\);

-- Location: FF_X22_Y5_N15
\inst2|varia[4]|freq2hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[20]~59_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(20));

-- Location: LCCOMB_X22_Y5_N16
\inst2|varia[4]|freq2hz|count[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[21]~61_combout\ = (\inst2|varia[4]|freq2hz|count\(21) & (!\inst2|varia[4]|freq2hz|count[20]~60\)) # (!\inst2|varia[4]|freq2hz|count\(21) & ((\inst2|varia[4]|freq2hz|count[20]~60\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[21]~62\ = CARRY((!\inst2|varia[4]|freq2hz|count[20]~60\) # (!\inst2|varia[4]|freq2hz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(21),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[20]~60\,
	combout => \inst2|varia[4]|freq2hz|count[21]~61_combout\,
	cout => \inst2|varia[4]|freq2hz|count[21]~62\);

-- Location: FF_X22_Y5_N17
\inst2|varia[4]|freq2hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[21]~61_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(21));

-- Location: LCCOMB_X22_Y5_N18
\inst2|varia[4]|freq2hz|count[22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[22]~63_combout\ = (\inst2|varia[4]|freq2hz|count\(22) & (\inst2|varia[4]|freq2hz|count[21]~62\ $ (GND))) # (!\inst2|varia[4]|freq2hz|count\(22) & (!\inst2|varia[4]|freq2hz|count[21]~62\ & VCC))
-- \inst2|varia[4]|freq2hz|count[22]~64\ = CARRY((\inst2|varia[4]|freq2hz|count\(22) & !\inst2|varia[4]|freq2hz|count[21]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(22),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[21]~62\,
	combout => \inst2|varia[4]|freq2hz|count[22]~63_combout\,
	cout => \inst2|varia[4]|freq2hz|count[22]~64\);

-- Location: FF_X22_Y5_N19
\inst2|varia[4]|freq2hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[22]~63_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(22));

-- Location: LCCOMB_X22_Y5_N20
\inst2|varia[4]|freq2hz|count[23]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[23]~65_combout\ = (\inst2|varia[4]|freq2hz|count\(23) & (!\inst2|varia[4]|freq2hz|count[22]~64\)) # (!\inst2|varia[4]|freq2hz|count\(23) & ((\inst2|varia[4]|freq2hz|count[22]~64\) # (GND)))
-- \inst2|varia[4]|freq2hz|count[23]~66\ = CARRY((!\inst2|varia[4]|freq2hz|count[22]~64\) # (!\inst2|varia[4]|freq2hz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(23),
	datad => VCC,
	cin => \inst2|varia[4]|freq2hz|count[22]~64\,
	combout => \inst2|varia[4]|freq2hz|count[23]~65_combout\,
	cout => \inst2|varia[4]|freq2hz|count[23]~66\);

-- Location: FF_X22_Y5_N21
\inst2|varia[4]|freq2hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[23]~65_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(23));

-- Location: LCCOMB_X22_Y5_N22
\inst2|varia[4]|freq2hz|count[24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|count[24]~67_combout\ = \inst2|varia[4]|freq2hz|count\(24) $ (!\inst2|varia[4]|freq2hz|count[23]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|freq2hz|count\(24),
	cin => \inst2|varia[4]|freq2hz|count[23]~66\,
	combout => \inst2|varia[4]|freq2hz|count[24]~67_combout\);

-- Location: FF_X22_Y5_N23
\inst2|varia[4]|freq2hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|count[24]~67_combout\,
	sclr => \inst2|varia[4]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|count\(24));

-- Location: LCCOMB_X22_Y8_N16
\inst2|varia[4]|freq2hz|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|alt~1_combout\ = \inst2|varia[4]|freq2hz|alt~q\ $ (((\inst2|varia[4]|freq2hz|count\(24) & !\inst2|varia[4]|freq2hz|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|freq2hz|count\(24),
	datac => \inst2|varia[4]|freq2hz|alt~q\,
	datad => \inst2|varia[4]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[4]|freq2hz|alt~1_combout\);

-- Location: LCCOMB_X22_Y8_N14
\inst2|varia[4]|freq2hz|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|freq2hz|alt~feeder_combout\ = \inst2|varia[4]|freq2hz|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[4]|freq2hz|alt~1_combout\,
	combout => \inst2|varia[4]|freq2hz|alt~feeder_combout\);

-- Location: FF_X22_Y8_N15
\inst2|varia[4]|freq2hz|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~2clkctrl_outclk\,
	d => \inst2|varia[4]|freq2hz|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|freq2hz|alt~q\);

-- Location: LCCOMB_X10_Y8_N2
\inst2|varia[4]|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|_~1_combout\ = LCELL((\inst2|varia[4]|freq2hz|alt~q\ & \inst2|varia[4]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[4]|freq2hz|alt~q\,
	datad => \inst2|varia[4]|count|count\(1),
	combout => \inst2|varia[4]|_~1_combout\);

-- Location: LCCOMB_X10_Y8_N24
\inst2|varia[4]|contador6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|contador6|_~1_combout\ = (!\inst2|varia[4]|contador6|count\(3) & (\inst2|varia[4]|contador6|count\(1) $ (\inst2|varia[4]|contador6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|contador6|count\(1),
	datac => \inst2|varia[4]|contador6|count\(2),
	datad => \inst2|varia[4]|contador6|count\(3),
	combout => \inst2|varia[4]|contador6|_~1_combout\);

-- Location: FF_X10_Y8_N25
\inst2|varia[4]|contador6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~1_combout\,
	d => \inst2|varia[4]|contador6|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|contador6|count\(2));

-- Location: LCCOMB_X10_Y8_N30
\inst2|varia[4]|contador6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|contador6|_~2_combout\ = (!\inst2|varia[4]|contador6|count\(1) & ((!\inst2|varia[4]|contador6|count\(2)) # (!\inst2|varia[4]|contador6|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[4]|contador6|count\(3),
	datac => \inst2|varia[4]|contador6|count\(1),
	datad => \inst2|varia[4]|contador6|count\(2),
	combout => \inst2|varia[4]|contador6|_~2_combout\);

-- Location: FF_X10_Y8_N31
\inst2|varia[4]|contador6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~1_combout\,
	d => \inst2|varia[4]|contador6|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|contador6|count\(1));

-- Location: LCCOMB_X10_Y8_N14
\inst2|varia[4]|contador6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|contador6|_~0_combout\ = (\inst2|varia[4]|contador6|count\(1) & (!\inst2|varia[4]|contador6|count\(3) & \inst2|varia[4]|contador6|count\(2))) # (!\inst2|varia[4]|contador6|count\(1) & (\inst2|varia[4]|contador6|count\(3) & 
-- !\inst2|varia[4]|contador6|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|contador6|count\(1),
	datac => \inst2|varia[4]|contador6|count\(3),
	datad => \inst2|varia[4]|contador6|count\(2),
	combout => \inst2|varia[4]|contador6|_~0_combout\);

-- Location: FF_X10_Y8_N15
\inst2|varia[4]|contador6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~1_combout\,
	d => \inst2|varia[4]|contador6|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|contador6|count\(3));

-- Location: LCCOMB_X10_Y8_N22
\inst2|varia[4]|contador6|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|contador6|alt~1_combout\ = \inst2|varia[4]|contador6|alt~q\ $ (((\inst2|varia[4]|contador6|count\(3) & ((\inst2|varia[4]|contador6|count\(1)) # (\inst2|varia[4]|contador6|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|contador6|alt~q\,
	datab => \inst2|varia[4]|contador6|count\(3),
	datac => \inst2|varia[4]|contador6|count\(1),
	datad => \inst2|varia[4]|contador6|count\(2),
	combout => \inst2|varia[4]|contador6|alt~1_combout\);

-- Location: LCCOMB_X10_Y8_N28
\inst2|varia[4]|contador6|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|contador6|alt~feeder_combout\ = \inst2|varia[4]|contador6|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[4]|contador6|alt~1_combout\,
	combout => \inst2|varia[4]|contador6|alt~feeder_combout\);

-- Location: FF_X10_Y8_N29
\inst2|varia[4]|contador6|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|_~1_combout\,
	d => \inst2|varia[4]|contador6|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|contador6|alt~q\);

-- Location: LCCOMB_X10_Y9_N26
\inst2|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~5_combout\ = (\inst2|varia[3]|contador6|alt~q\ & ((\inst2|varia[3]|count|count\(1)) # ((\inst2|varia[4]|contador6|alt~q\ & \inst2|varia[4]|count|count\(1))))) # (!\inst2|varia[3]|contador6|alt~q\ & (\inst2|varia[4]|contador6|alt~q\ & 
-- ((\inst2|varia[4]|count|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|contador6|alt~q\,
	datab => \inst2|varia[4]|contador6|alt~q\,
	datac => \inst2|varia[3]|count|count\(1),
	datad => \inst2|varia[4]|count|count\(1),
	combout => \inst2|_~5_combout\);

-- Location: LCCOMB_X11_Y11_N26
\inst2|varia[5]|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|_~2_combout\ = LCELL((\inst2|varia[5]|count|count\(1) & \clock~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|count|count\(1),
	datad => \clock~input_o\,
	combout => \inst2|varia[5]|_~2_combout\);

-- Location: CLKCTRL_G8
\inst2|varia[5]|_~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[5]|_~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[5]|_~2clkctrl_outclk\);

-- Location: LCCOMB_X21_Y15_N28
\inst2|varia[5]|freq2hz|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|op_1~4_combout\ = (((!\inst2|varia[5]|freq2hz|count\(19)) # (!\inst2|varia[5]|freq2hz|count\(20))) # (!\inst2|varia[5]|freq2hz|count\(21))) # (!\inst2|varia[5]|freq2hz|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(18),
	datab => \inst2|varia[5]|freq2hz|count\(21),
	datac => \inst2|varia[5]|freq2hz|count\(20),
	datad => \inst2|varia[5]|freq2hz|count\(19),
	combout => \inst2|varia[5]|freq2hz|op_1~4_combout\);

-- Location: LCCOMB_X21_Y16_N8
\inst2|varia[5]|freq2hz|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|op_1~0_combout\ = (((!\inst2|varia[5]|freq2hz|count\(14)) # (!\inst2|varia[5]|freq2hz|count\(13))) # (!\inst2|varia[5]|freq2hz|count\(11))) # (!\inst2|varia[5]|freq2hz|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(12),
	datab => \inst2|varia[5]|freq2hz|count\(11),
	datac => \inst2|varia[5]|freq2hz|count\(13),
	datad => \inst2|varia[5]|freq2hz|count\(14),
	combout => \inst2|varia[5]|freq2hz|op_1~0_combout\);

-- Location: LCCOMB_X22_Y16_N18
\inst2|varia[5]|freq2hz|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|op_1~1_combout\ = (!\inst2|varia[5]|freq2hz|count\(9) & (!\inst2|varia[5]|freq2hz|count\(6) & (!\inst2|varia[5]|freq2hz|count\(8) & !\inst2|varia[5]|freq2hz|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(9),
	datab => \inst2|varia[5]|freq2hz|count\(6),
	datac => \inst2|varia[5]|freq2hz|count\(8),
	datad => \inst2|varia[5]|freq2hz|count\(7),
	combout => \inst2|varia[5]|freq2hz|op_1~1_combout\);

-- Location: LCCOMB_X21_Y16_N2
\inst2|varia[5]|freq2hz|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|op_1~2_combout\ = (!\inst2|varia[5]|freq2hz|count\(15) & ((\inst2|varia[5]|freq2hz|op_1~0_combout\) # ((!\inst2|varia[5]|freq2hz|count\(10) & \inst2|varia[5]|freq2hz|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(10),
	datab => \inst2|varia[5]|freq2hz|count\(15),
	datac => \inst2|varia[5]|freq2hz|op_1~0_combout\,
	datad => \inst2|varia[5]|freq2hz|op_1~1_combout\,
	combout => \inst2|varia[5]|freq2hz|op_1~2_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst2|varia[5]|freq2hz|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|op_1~3_combout\ = (!\inst2|varia[5]|freq2hz|count\(17) & ((\inst2|varia[5]|freq2hz|op_1~2_combout\) # (!\inst2|varia[5]|freq2hz|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(16),
	datab => \inst2|varia[5]|freq2hz|count\(17),
	datad => \inst2|varia[5]|freq2hz|op_1~2_combout\,
	combout => \inst2|varia[5]|freq2hz|op_1~3_combout\);

-- Location: LCCOMB_X21_Y16_N6
\inst2|varia[5]|freq2hz|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|op_1~5_combout\ = (!\inst2|varia[5]|freq2hz|count\(23) & (((\inst2|varia[5]|freq2hz|op_1~4_combout\) # (\inst2|varia[5]|freq2hz|op_1~3_combout\)) # (!\inst2|varia[5]|freq2hz|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(22),
	datab => \inst2|varia[5]|freq2hz|op_1~4_combout\,
	datac => \inst2|varia[5]|freq2hz|count\(23),
	datad => \inst2|varia[5]|freq2hz|op_1~3_combout\,
	combout => \inst2|varia[5]|freq2hz|op_1~5_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst2|varia[5]|freq2hz|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|_~0_combout\ = (!\inst2|varia[5]|freq2hz|count\(1) & ((\inst2|varia[5]|freq2hz|op_1~5_combout\) # (!\inst2|varia[5]|freq2hz|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|op_1~5_combout\,
	datac => \inst2|varia[5]|freq2hz|count\(1),
	datad => \inst2|varia[5]|freq2hz|count\(24),
	combout => \inst2|varia[5]|freq2hz|_~0_combout\);

-- Location: FF_X22_Y16_N23
\inst2|varia[5]|freq2hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(1));

-- Location: LCCOMB_X21_Y16_N10
\inst2|varia[5]|freq2hz|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[2]~23_combout\ = (\inst2|varia[5]|freq2hz|count\(2) & (\inst2|varia[5]|freq2hz|count\(1) $ (VCC))) # (!\inst2|varia[5]|freq2hz|count\(2) & (\inst2|varia[5]|freq2hz|count\(1) & VCC))
-- \inst2|varia[5]|freq2hz|count[2]~24\ = CARRY((\inst2|varia[5]|freq2hz|count\(2) & \inst2|varia[5]|freq2hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(2),
	datab => \inst2|varia[5]|freq2hz|count\(1),
	datad => VCC,
	combout => \inst2|varia[5]|freq2hz|count[2]~23_combout\,
	cout => \inst2|varia[5]|freq2hz|count[2]~24\);

-- Location: LCCOMB_X21_Y16_N4
\inst2|varia[5]|freq2hz|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|op_1~6_combout\ = (\inst2|varia[5]|freq2hz|count\(24) & !\inst2|varia[5]|freq2hz|op_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(24),
	datad => \inst2|varia[5]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[5]|freq2hz|op_1~6_combout\);

-- Location: FF_X21_Y16_N11
\inst2|varia[5]|freq2hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[2]~23_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(2));

-- Location: LCCOMB_X21_Y16_N12
\inst2|varia[5]|freq2hz|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[3]~25_combout\ = (\inst2|varia[5]|freq2hz|count\(3) & (!\inst2|varia[5]|freq2hz|count[2]~24\)) # (!\inst2|varia[5]|freq2hz|count\(3) & ((\inst2|varia[5]|freq2hz|count[2]~24\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[3]~26\ = CARRY((!\inst2|varia[5]|freq2hz|count[2]~24\) # (!\inst2|varia[5]|freq2hz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(3),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[2]~24\,
	combout => \inst2|varia[5]|freq2hz|count[3]~25_combout\,
	cout => \inst2|varia[5]|freq2hz|count[3]~26\);

-- Location: FF_X21_Y16_N13
\inst2|varia[5]|freq2hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[3]~25_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(3));

-- Location: LCCOMB_X21_Y16_N14
\inst2|varia[5]|freq2hz|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[4]~27_combout\ = (\inst2|varia[5]|freq2hz|count\(4) & (\inst2|varia[5]|freq2hz|count[3]~26\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(4) & (!\inst2|varia[5]|freq2hz|count[3]~26\ & VCC))
-- \inst2|varia[5]|freq2hz|count[4]~28\ = CARRY((\inst2|varia[5]|freq2hz|count\(4) & !\inst2|varia[5]|freq2hz|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(4),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[3]~26\,
	combout => \inst2|varia[5]|freq2hz|count[4]~27_combout\,
	cout => \inst2|varia[5]|freq2hz|count[4]~28\);

-- Location: FF_X21_Y16_N15
\inst2|varia[5]|freq2hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[4]~27_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(4));

-- Location: LCCOMB_X21_Y16_N16
\inst2|varia[5]|freq2hz|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[5]~29_combout\ = (\inst2|varia[5]|freq2hz|count\(5) & (!\inst2|varia[5]|freq2hz|count[4]~28\)) # (!\inst2|varia[5]|freq2hz|count\(5) & ((\inst2|varia[5]|freq2hz|count[4]~28\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[5]~30\ = CARRY((!\inst2|varia[5]|freq2hz|count[4]~28\) # (!\inst2|varia[5]|freq2hz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(5),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[4]~28\,
	combout => \inst2|varia[5]|freq2hz|count[5]~29_combout\,
	cout => \inst2|varia[5]|freq2hz|count[5]~30\);

-- Location: FF_X21_Y16_N17
\inst2|varia[5]|freq2hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[5]~29_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(5));

-- Location: LCCOMB_X21_Y16_N18
\inst2|varia[5]|freq2hz|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[6]~31_combout\ = (\inst2|varia[5]|freq2hz|count\(6) & (\inst2|varia[5]|freq2hz|count[5]~30\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(6) & (!\inst2|varia[5]|freq2hz|count[5]~30\ & VCC))
-- \inst2|varia[5]|freq2hz|count[6]~32\ = CARRY((\inst2|varia[5]|freq2hz|count\(6) & !\inst2|varia[5]|freq2hz|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(6),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[5]~30\,
	combout => \inst2|varia[5]|freq2hz|count[6]~31_combout\,
	cout => \inst2|varia[5]|freq2hz|count[6]~32\);

-- Location: FF_X21_Y16_N19
\inst2|varia[5]|freq2hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[6]~31_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(6));

-- Location: LCCOMB_X21_Y16_N20
\inst2|varia[5]|freq2hz|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[7]~33_combout\ = (\inst2|varia[5]|freq2hz|count\(7) & (!\inst2|varia[5]|freq2hz|count[6]~32\)) # (!\inst2|varia[5]|freq2hz|count\(7) & ((\inst2|varia[5]|freq2hz|count[6]~32\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[7]~34\ = CARRY((!\inst2|varia[5]|freq2hz|count[6]~32\) # (!\inst2|varia[5]|freq2hz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(7),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[6]~32\,
	combout => \inst2|varia[5]|freq2hz|count[7]~33_combout\,
	cout => \inst2|varia[5]|freq2hz|count[7]~34\);

-- Location: FF_X21_Y16_N21
\inst2|varia[5]|freq2hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[7]~33_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(7));

-- Location: LCCOMB_X21_Y16_N22
\inst2|varia[5]|freq2hz|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[8]~35_combout\ = (\inst2|varia[5]|freq2hz|count\(8) & (\inst2|varia[5]|freq2hz|count[7]~34\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(8) & (!\inst2|varia[5]|freq2hz|count[7]~34\ & VCC))
-- \inst2|varia[5]|freq2hz|count[8]~36\ = CARRY((\inst2|varia[5]|freq2hz|count\(8) & !\inst2|varia[5]|freq2hz|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(8),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[7]~34\,
	combout => \inst2|varia[5]|freq2hz|count[8]~35_combout\,
	cout => \inst2|varia[5]|freq2hz|count[8]~36\);

-- Location: FF_X21_Y16_N23
\inst2|varia[5]|freq2hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[8]~35_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(8));

-- Location: LCCOMB_X21_Y16_N24
\inst2|varia[5]|freq2hz|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[9]~37_combout\ = (\inst2|varia[5]|freq2hz|count\(9) & (!\inst2|varia[5]|freq2hz|count[8]~36\)) # (!\inst2|varia[5]|freq2hz|count\(9) & ((\inst2|varia[5]|freq2hz|count[8]~36\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[9]~38\ = CARRY((!\inst2|varia[5]|freq2hz|count[8]~36\) # (!\inst2|varia[5]|freq2hz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(9),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[8]~36\,
	combout => \inst2|varia[5]|freq2hz|count[9]~37_combout\,
	cout => \inst2|varia[5]|freq2hz|count[9]~38\);

-- Location: FF_X21_Y16_N25
\inst2|varia[5]|freq2hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[9]~37_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(9));

-- Location: LCCOMB_X21_Y16_N26
\inst2|varia[5]|freq2hz|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[10]~39_combout\ = (\inst2|varia[5]|freq2hz|count\(10) & (\inst2|varia[5]|freq2hz|count[9]~38\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(10) & (!\inst2|varia[5]|freq2hz|count[9]~38\ & VCC))
-- \inst2|varia[5]|freq2hz|count[10]~40\ = CARRY((\inst2|varia[5]|freq2hz|count\(10) & !\inst2|varia[5]|freq2hz|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(10),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[9]~38\,
	combout => \inst2|varia[5]|freq2hz|count[10]~39_combout\,
	cout => \inst2|varia[5]|freq2hz|count[10]~40\);

-- Location: FF_X21_Y16_N27
\inst2|varia[5]|freq2hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[10]~39_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(10));

-- Location: LCCOMB_X21_Y16_N28
\inst2|varia[5]|freq2hz|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[11]~41_combout\ = (\inst2|varia[5]|freq2hz|count\(11) & (!\inst2|varia[5]|freq2hz|count[10]~40\)) # (!\inst2|varia[5]|freq2hz|count\(11) & ((\inst2|varia[5]|freq2hz|count[10]~40\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[11]~42\ = CARRY((!\inst2|varia[5]|freq2hz|count[10]~40\) # (!\inst2|varia[5]|freq2hz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(11),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[10]~40\,
	combout => \inst2|varia[5]|freq2hz|count[11]~41_combout\,
	cout => \inst2|varia[5]|freq2hz|count[11]~42\);

-- Location: FF_X21_Y16_N29
\inst2|varia[5]|freq2hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[11]~41_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(11));

-- Location: LCCOMB_X21_Y16_N30
\inst2|varia[5]|freq2hz|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[12]~43_combout\ = (\inst2|varia[5]|freq2hz|count\(12) & (\inst2|varia[5]|freq2hz|count[11]~42\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(12) & (!\inst2|varia[5]|freq2hz|count[11]~42\ & VCC))
-- \inst2|varia[5]|freq2hz|count[12]~44\ = CARRY((\inst2|varia[5]|freq2hz|count\(12) & !\inst2|varia[5]|freq2hz|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(12),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[11]~42\,
	combout => \inst2|varia[5]|freq2hz|count[12]~43_combout\,
	cout => \inst2|varia[5]|freq2hz|count[12]~44\);

-- Location: FF_X21_Y16_N31
\inst2|varia[5]|freq2hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[12]~43_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(12));

-- Location: LCCOMB_X21_Y15_N0
\inst2|varia[5]|freq2hz|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[13]~45_combout\ = (\inst2|varia[5]|freq2hz|count\(13) & (!\inst2|varia[5]|freq2hz|count[12]~44\)) # (!\inst2|varia[5]|freq2hz|count\(13) & ((\inst2|varia[5]|freq2hz|count[12]~44\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[13]~46\ = CARRY((!\inst2|varia[5]|freq2hz|count[12]~44\) # (!\inst2|varia[5]|freq2hz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(13),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[12]~44\,
	combout => \inst2|varia[5]|freq2hz|count[13]~45_combout\,
	cout => \inst2|varia[5]|freq2hz|count[13]~46\);

-- Location: FF_X21_Y15_N1
\inst2|varia[5]|freq2hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[13]~45_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(13));

-- Location: LCCOMB_X21_Y15_N2
\inst2|varia[5]|freq2hz|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[14]~47_combout\ = (\inst2|varia[5]|freq2hz|count\(14) & (\inst2|varia[5]|freq2hz|count[13]~46\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(14) & (!\inst2|varia[5]|freq2hz|count[13]~46\ & VCC))
-- \inst2|varia[5]|freq2hz|count[14]~48\ = CARRY((\inst2|varia[5]|freq2hz|count\(14) & !\inst2|varia[5]|freq2hz|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(14),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[13]~46\,
	combout => \inst2|varia[5]|freq2hz|count[14]~47_combout\,
	cout => \inst2|varia[5]|freq2hz|count[14]~48\);

-- Location: FF_X22_Y16_N29
\inst2|varia[5]|freq2hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	asdata => \inst2|varia[5]|freq2hz|count[14]~47_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(14));

-- Location: LCCOMB_X21_Y15_N4
\inst2|varia[5]|freq2hz|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[15]~49_combout\ = (\inst2|varia[5]|freq2hz|count\(15) & (!\inst2|varia[5]|freq2hz|count[14]~48\)) # (!\inst2|varia[5]|freq2hz|count\(15) & ((\inst2|varia[5]|freq2hz|count[14]~48\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[15]~50\ = CARRY((!\inst2|varia[5]|freq2hz|count[14]~48\) # (!\inst2|varia[5]|freq2hz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(15),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[14]~48\,
	combout => \inst2|varia[5]|freq2hz|count[15]~49_combout\,
	cout => \inst2|varia[5]|freq2hz|count[15]~50\);

-- Location: FF_X21_Y15_N5
\inst2|varia[5]|freq2hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[15]~49_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(15));

-- Location: LCCOMB_X21_Y15_N6
\inst2|varia[5]|freq2hz|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[16]~51_combout\ = (\inst2|varia[5]|freq2hz|count\(16) & (\inst2|varia[5]|freq2hz|count[15]~50\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(16) & (!\inst2|varia[5]|freq2hz|count[15]~50\ & VCC))
-- \inst2|varia[5]|freq2hz|count[16]~52\ = CARRY((\inst2|varia[5]|freq2hz|count\(16) & !\inst2|varia[5]|freq2hz|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(16),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[15]~50\,
	combout => \inst2|varia[5]|freq2hz|count[16]~51_combout\,
	cout => \inst2|varia[5]|freq2hz|count[16]~52\);

-- Location: FF_X21_Y15_N7
\inst2|varia[5]|freq2hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[16]~51_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(16));

-- Location: LCCOMB_X21_Y15_N8
\inst2|varia[5]|freq2hz|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[17]~53_combout\ = (\inst2|varia[5]|freq2hz|count\(17) & (!\inst2|varia[5]|freq2hz|count[16]~52\)) # (!\inst2|varia[5]|freq2hz|count\(17) & ((\inst2|varia[5]|freq2hz|count[16]~52\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[17]~54\ = CARRY((!\inst2|varia[5]|freq2hz|count[16]~52\) # (!\inst2|varia[5]|freq2hz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(17),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[16]~52\,
	combout => \inst2|varia[5]|freq2hz|count[17]~53_combout\,
	cout => \inst2|varia[5]|freq2hz|count[17]~54\);

-- Location: FF_X22_Y16_N27
\inst2|varia[5]|freq2hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	asdata => \inst2|varia[5]|freq2hz|count[17]~53_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(17));

-- Location: LCCOMB_X21_Y15_N10
\inst2|varia[5]|freq2hz|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[18]~55_combout\ = (\inst2|varia[5]|freq2hz|count\(18) & (\inst2|varia[5]|freq2hz|count[17]~54\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(18) & (!\inst2|varia[5]|freq2hz|count[17]~54\ & VCC))
-- \inst2|varia[5]|freq2hz|count[18]~56\ = CARRY((\inst2|varia[5]|freq2hz|count\(18) & !\inst2|varia[5]|freq2hz|count[17]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(18),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[17]~54\,
	combout => \inst2|varia[5]|freq2hz|count[18]~55_combout\,
	cout => \inst2|varia[5]|freq2hz|count[18]~56\);

-- Location: FF_X21_Y15_N11
\inst2|varia[5]|freq2hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[18]~55_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(18));

-- Location: LCCOMB_X21_Y15_N12
\inst2|varia[5]|freq2hz|count[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[19]~57_combout\ = (\inst2|varia[5]|freq2hz|count\(19) & (!\inst2|varia[5]|freq2hz|count[18]~56\)) # (!\inst2|varia[5]|freq2hz|count\(19) & ((\inst2|varia[5]|freq2hz|count[18]~56\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[19]~58\ = CARRY((!\inst2|varia[5]|freq2hz|count[18]~56\) # (!\inst2|varia[5]|freq2hz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(19),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[18]~56\,
	combout => \inst2|varia[5]|freq2hz|count[19]~57_combout\,
	cout => \inst2|varia[5]|freq2hz|count[19]~58\);

-- Location: FF_X21_Y15_N13
\inst2|varia[5]|freq2hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[19]~57_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(19));

-- Location: LCCOMB_X21_Y15_N14
\inst2|varia[5]|freq2hz|count[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[20]~59_combout\ = (\inst2|varia[5]|freq2hz|count\(20) & (\inst2|varia[5]|freq2hz|count[19]~58\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(20) & (!\inst2|varia[5]|freq2hz|count[19]~58\ & VCC))
-- \inst2|varia[5]|freq2hz|count[20]~60\ = CARRY((\inst2|varia[5]|freq2hz|count\(20) & !\inst2|varia[5]|freq2hz|count[19]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(20),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[19]~58\,
	combout => \inst2|varia[5]|freq2hz|count[20]~59_combout\,
	cout => \inst2|varia[5]|freq2hz|count[20]~60\);

-- Location: FF_X21_Y15_N15
\inst2|varia[5]|freq2hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[20]~59_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(20));

-- Location: LCCOMB_X21_Y15_N16
\inst2|varia[5]|freq2hz|count[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[21]~61_combout\ = (\inst2|varia[5]|freq2hz|count\(21) & (!\inst2|varia[5]|freq2hz|count[20]~60\)) # (!\inst2|varia[5]|freq2hz|count\(21) & ((\inst2|varia[5]|freq2hz|count[20]~60\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[21]~62\ = CARRY((!\inst2|varia[5]|freq2hz|count[20]~60\) # (!\inst2|varia[5]|freq2hz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(21),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[20]~60\,
	combout => \inst2|varia[5]|freq2hz|count[21]~61_combout\,
	cout => \inst2|varia[5]|freq2hz|count[21]~62\);

-- Location: FF_X21_Y15_N17
\inst2|varia[5]|freq2hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[21]~61_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(21));

-- Location: LCCOMB_X21_Y15_N18
\inst2|varia[5]|freq2hz|count[22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[22]~63_combout\ = (\inst2|varia[5]|freq2hz|count\(22) & (\inst2|varia[5]|freq2hz|count[21]~62\ $ (GND))) # (!\inst2|varia[5]|freq2hz|count\(22) & (!\inst2|varia[5]|freq2hz|count[21]~62\ & VCC))
-- \inst2|varia[5]|freq2hz|count[22]~64\ = CARRY((\inst2|varia[5]|freq2hz|count\(22) & !\inst2|varia[5]|freq2hz|count[21]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(22),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[21]~62\,
	combout => \inst2|varia[5]|freq2hz|count[22]~63_combout\,
	cout => \inst2|varia[5]|freq2hz|count[22]~64\);

-- Location: FF_X21_Y15_N19
\inst2|varia[5]|freq2hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[22]~63_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(22));

-- Location: LCCOMB_X21_Y15_N20
\inst2|varia[5]|freq2hz|count[23]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[23]~65_combout\ = (\inst2|varia[5]|freq2hz|count\(23) & (!\inst2|varia[5]|freq2hz|count[22]~64\)) # (!\inst2|varia[5]|freq2hz|count\(23) & ((\inst2|varia[5]|freq2hz|count[22]~64\) # (GND)))
-- \inst2|varia[5]|freq2hz|count[23]~66\ = CARRY((!\inst2|varia[5]|freq2hz|count[22]~64\) # (!\inst2|varia[5]|freq2hz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(23),
	datad => VCC,
	cin => \inst2|varia[5]|freq2hz|count[22]~64\,
	combout => \inst2|varia[5]|freq2hz|count[23]~65_combout\,
	cout => \inst2|varia[5]|freq2hz|count[23]~66\);

-- Location: FF_X21_Y15_N21
\inst2|varia[5]|freq2hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[23]~65_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(23));

-- Location: LCCOMB_X21_Y15_N22
\inst2|varia[5]|freq2hz|count[24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|count[24]~67_combout\ = \inst2|varia[5]|freq2hz|count\(24) $ (!\inst2|varia[5]|freq2hz|count[23]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|freq2hz|count\(24),
	cin => \inst2|varia[5]|freq2hz|count[23]~66\,
	combout => \inst2|varia[5]|freq2hz|count[24]~67_combout\);

-- Location: FF_X21_Y15_N23
\inst2|varia[5]|freq2hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|count[24]~67_combout\,
	sclr => \inst2|varia[5]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|count\(24));

-- Location: LCCOMB_X22_Y16_N16
\inst2|varia[5]|freq2hz|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|alt~1_combout\ = \inst2|varia[5]|freq2hz|alt~q\ $ (((\inst2|varia[5]|freq2hz|count\(24) & !\inst2|varia[5]|freq2hz|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|freq2hz|count\(24),
	datac => \inst2|varia[5]|freq2hz|op_1~5_combout\,
	datad => \inst2|varia[5]|freq2hz|alt~q\,
	combout => \inst2|varia[5]|freq2hz|alt~1_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst2|varia[5]|freq2hz|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|freq2hz|alt~feeder_combout\ = \inst2|varia[5]|freq2hz|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[5]|freq2hz|alt~1_combout\,
	combout => \inst2|varia[5]|freq2hz|alt~feeder_combout\);

-- Location: FF_X22_Y16_N31
\inst2|varia[5]|freq2hz|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~2clkctrl_outclk\,
	d => \inst2|varia[5]|freq2hz|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|freq2hz|alt~q\);

-- Location: LCCOMB_X9_Y10_N16
\inst2|varia[5]|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|_~1_combout\ = LCELL((\inst2|varia[5]|count|count\(1) & \inst2|varia[5]|freq2hz|alt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst2|varia[5]|freq2hz|alt~q\,
	combout => \inst2|varia[5]|_~1_combout\);

-- Location: LCCOMB_X9_Y10_N28
\inst2|varia[5]|contador6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|contador6|_~2_combout\ = (!\inst2|varia[5]|contador6|count\(1) & ((!\inst2|varia[5]|contador6|count\(2)) # (!\inst2|varia[5]|contador6|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|contador6|count\(3),
	datab => \inst2|varia[5]|contador6|count\(2),
	datac => \inst2|varia[5]|contador6|count\(1),
	combout => \inst2|varia[5]|contador6|_~2_combout\);

-- Location: FF_X9_Y10_N29
\inst2|varia[5]|contador6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~1_combout\,
	d => \inst2|varia[5]|contador6|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|contador6|count\(1));

-- Location: LCCOMB_X9_Y10_N30
\inst2|varia[5]|contador6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|contador6|_~0_combout\ = (\inst2|varia[5]|contador6|count\(2) & (!\inst2|varia[5]|contador6|count\(3) & \inst2|varia[5]|contador6|count\(1))) # (!\inst2|varia[5]|contador6|count\(2) & (\inst2|varia[5]|contador6|count\(3) & 
-- !\inst2|varia[5]|contador6|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|contador6|count\(2),
	datac => \inst2|varia[5]|contador6|count\(3),
	datad => \inst2|varia[5]|contador6|count\(1),
	combout => \inst2|varia[5]|contador6|_~0_combout\);

-- Location: FF_X9_Y10_N31
\inst2|varia[5]|contador6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~1_combout\,
	d => \inst2|varia[5]|contador6|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|contador6|count\(3));

-- Location: LCCOMB_X9_Y10_N8
\inst2|varia[5]|contador6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|contador6|_~1_combout\ = (!\inst2|varia[5]|contador6|count\(3) & (\inst2|varia[5]|contador6|count\(2) $ (\inst2|varia[5]|contador6|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|contador6|count\(3),
	datac => \inst2|varia[5]|contador6|count\(2),
	datad => \inst2|varia[5]|contador6|count\(1),
	combout => \inst2|varia[5]|contador6|_~1_combout\);

-- Location: FF_X9_Y10_N9
\inst2|varia[5]|contador6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~1_combout\,
	d => \inst2|varia[5]|contador6|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|contador6|count\(2));

-- Location: LCCOMB_X9_Y10_N10
\inst2|varia[5]|contador6|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|contador6|alt~1_combout\ = \inst2|varia[5]|contador6|alt~q\ $ (((\inst2|varia[5]|contador6|count\(3) & ((\inst2|varia[5]|contador6|count\(2)) # (\inst2|varia[5]|contador6|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|contador6|alt~q\,
	datab => \inst2|varia[5]|contador6|count\(2),
	datac => \inst2|varia[5]|contador6|count\(3),
	datad => \inst2|varia[5]|contador6|count\(1),
	combout => \inst2|varia[5]|contador6|alt~1_combout\);

-- Location: LCCOMB_X9_Y10_N24
\inst2|varia[5]|contador6|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|contador6|alt~feeder_combout\ = \inst2|varia[5]|contador6|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[5]|contador6|alt~1_combout\,
	combout => \inst2|varia[5]|contador6|alt~feeder_combout\);

-- Location: FF_X9_Y10_N25
\inst2|varia[5]|contador6|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~1_combout\,
	d => \inst2|varia[5]|contador6|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|contador6|alt~q\);

-- Location: LCCOMB_X9_Y10_N0
\inst2|varia[5]|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|_~0_combout\ = LCELL((\inst2|varia[5]|count|count\(1) & (\inst2|varia[5]|contador6|alt~q\)) # (!\inst2|varia[5]|count|count\(1) & (((!\inst4|_~9_combout\ & \inst2|varia[6]|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|count|count\(1),
	datab => \inst2|varia[5]|contador6|alt~q\,
	datac => \inst4|_~9_combout\,
	datad => \inst2|varia[6]|_~4_combout\,
	combout => \inst2|varia[5]|_~0_combout\);

-- Location: LCCOMB_X11_Y11_N20
\inst2|varia[5]|count|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|count|count[1]~0_combout\ = !\inst2|varia[5]|count|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[5]|count|count\(1),
	combout => \inst2|varia[5]|count|count[1]~0_combout\);

-- Location: LCCOMB_X11_Y11_N30
\inst2|varia[5]|count|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|count|count[1]~feeder_combout\ = \inst2|varia[5]|count|count[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[5]|count|count[1]~0_combout\,
	combout => \inst2|varia[5]|count|count[1]~feeder_combout\);

-- Location: FF_X11_Y11_N31
\inst2|varia[5]|count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|_~0_combout\,
	d => \inst2|varia[5]|count|count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|count|count\(1));

-- Location: LCCOMB_X11_Y9_N20
\inst2|varia[6]|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|_~2_combout\ = LCELL((\clock~input_o\ & \inst2|varia[6]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock~input_o\,
	datad => \inst2|varia[6]|count|count\(1),
	combout => \inst2|varia[6]|_~2_combout\);

-- Location: CLKCTRL_G5
\inst2|varia[6]|_~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[6]|_~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[6]|_~2clkctrl_outclk\);

-- Location: LCCOMB_X10_Y16_N26
\inst2|varia[6]|freq2hz|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|op_1~4_combout\ = (((!\inst2|varia[6]|freq2hz|count\(21)) # (!\inst2|varia[6]|freq2hz|count\(20))) # (!\inst2|varia[6]|freq2hz|count\(18))) # (!\inst2|varia[6]|freq2hz|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(19),
	datab => \inst2|varia[6]|freq2hz|count\(18),
	datac => \inst2|varia[6]|freq2hz|count\(20),
	datad => \inst2|varia[6]|freq2hz|count\(21),
	combout => \inst2|varia[6]|freq2hz|op_1~4_combout\);

-- Location: LCCOMB_X10_Y17_N8
\inst2|varia[6]|freq2hz|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|op_1~1_combout\ = (!\inst2|varia[6]|freq2hz|count\(8) & (!\inst2|varia[6]|freq2hz|count\(6) & (!\inst2|varia[6]|freq2hz|count\(7) & !\inst2|varia[6]|freq2hz|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(8),
	datab => \inst2|varia[6]|freq2hz|count\(6),
	datac => \inst2|varia[6]|freq2hz|count\(7),
	datad => \inst2|varia[6]|freq2hz|count\(9),
	combout => \inst2|varia[6]|freq2hz|op_1~1_combout\);

-- Location: LCCOMB_X10_Y16_N28
\inst2|varia[6]|freq2hz|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|op_1~0_combout\ = (((!\inst2|varia[6]|freq2hz|count\(11)) # (!\inst2|varia[6]|freq2hz|count\(14))) # (!\inst2|varia[6]|freq2hz|count\(13))) # (!\inst2|varia[6]|freq2hz|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(12),
	datab => \inst2|varia[6]|freq2hz|count\(13),
	datac => \inst2|varia[6]|freq2hz|count\(14),
	datad => \inst2|varia[6]|freq2hz|count\(11),
	combout => \inst2|varia[6]|freq2hz|op_1~0_combout\);

-- Location: LCCOMB_X10_Y16_N30
\inst2|varia[6]|freq2hz|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|op_1~2_combout\ = (!\inst2|varia[6]|freq2hz|count\(15) & ((\inst2|varia[6]|freq2hz|op_1~0_combout\) # ((!\inst2|varia[6]|freq2hz|count\(10) & \inst2|varia[6]|freq2hz|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(10),
	datab => \inst2|varia[6]|freq2hz|count\(15),
	datac => \inst2|varia[6]|freq2hz|op_1~1_combout\,
	datad => \inst2|varia[6]|freq2hz|op_1~0_combout\,
	combout => \inst2|varia[6]|freq2hz|op_1~2_combout\);

-- Location: LCCOMB_X10_Y16_N24
\inst2|varia[6]|freq2hz|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|op_1~3_combout\ = (!\inst2|varia[6]|freq2hz|count\(17) & ((\inst2|varia[6]|freq2hz|op_1~2_combout\) # (!\inst2|varia[6]|freq2hz|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(16),
	datac => \inst2|varia[6]|freq2hz|op_1~2_combout\,
	datad => \inst2|varia[6]|freq2hz|count\(17),
	combout => \inst2|varia[6]|freq2hz|op_1~3_combout\);

-- Location: LCCOMB_X10_Y17_N6
\inst2|varia[6]|freq2hz|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|op_1~5_combout\ = (!\inst2|varia[6]|freq2hz|count\(23) & (((\inst2|varia[6]|freq2hz|op_1~4_combout\) # (\inst2|varia[6]|freq2hz|op_1~3_combout\)) # (!\inst2|varia[6]|freq2hz|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(23),
	datab => \inst2|varia[6]|freq2hz|count\(22),
	datac => \inst2|varia[6]|freq2hz|op_1~4_combout\,
	datad => \inst2|varia[6]|freq2hz|op_1~3_combout\,
	combout => \inst2|varia[6]|freq2hz|op_1~5_combout\);

-- Location: LCCOMB_X9_Y17_N4
\inst2|varia[6]|freq2hz|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|_~0_combout\ = (!\inst2|varia[6]|freq2hz|count\(1) & ((\inst2|varia[6]|freq2hz|op_1~5_combout\) # (!\inst2|varia[6]|freq2hz|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(24),
	datac => \inst2|varia[6]|freq2hz|count\(1),
	datad => \inst2|varia[6]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[6]|freq2hz|_~0_combout\);

-- Location: FF_X9_Y17_N5
\inst2|varia[6]|freq2hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(1));

-- Location: LCCOMB_X10_Y17_N10
\inst2|varia[6]|freq2hz|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[2]~23_combout\ = (\inst2|varia[6]|freq2hz|count\(2) & (\inst2|varia[6]|freq2hz|count\(1) $ (VCC))) # (!\inst2|varia[6]|freq2hz|count\(2) & (\inst2|varia[6]|freq2hz|count\(1) & VCC))
-- \inst2|varia[6]|freq2hz|count[2]~24\ = CARRY((\inst2|varia[6]|freq2hz|count\(2) & \inst2|varia[6]|freq2hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(2),
	datab => \inst2|varia[6]|freq2hz|count\(1),
	datad => VCC,
	combout => \inst2|varia[6]|freq2hz|count[2]~23_combout\,
	cout => \inst2|varia[6]|freq2hz|count[2]~24\);

-- Location: LCCOMB_X10_Y17_N0
\inst2|varia[6]|freq2hz|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|op_1~6_combout\ = (\inst2|varia[6]|freq2hz|count\(24) & !\inst2|varia[6]|freq2hz|op_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(24),
	datad => \inst2|varia[6]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[6]|freq2hz|op_1~6_combout\);

-- Location: FF_X10_Y17_N11
\inst2|varia[6]|freq2hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[2]~23_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(2));

-- Location: LCCOMB_X10_Y17_N12
\inst2|varia[6]|freq2hz|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[3]~25_combout\ = (\inst2|varia[6]|freq2hz|count\(3) & (!\inst2|varia[6]|freq2hz|count[2]~24\)) # (!\inst2|varia[6]|freq2hz|count\(3) & ((\inst2|varia[6]|freq2hz|count[2]~24\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[3]~26\ = CARRY((!\inst2|varia[6]|freq2hz|count[2]~24\) # (!\inst2|varia[6]|freq2hz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(3),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[2]~24\,
	combout => \inst2|varia[6]|freq2hz|count[3]~25_combout\,
	cout => \inst2|varia[6]|freq2hz|count[3]~26\);

-- Location: FF_X10_Y17_N13
\inst2|varia[6]|freq2hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[3]~25_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(3));

-- Location: LCCOMB_X10_Y17_N14
\inst2|varia[6]|freq2hz|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[4]~27_combout\ = (\inst2|varia[6]|freq2hz|count\(4) & (\inst2|varia[6]|freq2hz|count[3]~26\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(4) & (!\inst2|varia[6]|freq2hz|count[3]~26\ & VCC))
-- \inst2|varia[6]|freq2hz|count[4]~28\ = CARRY((\inst2|varia[6]|freq2hz|count\(4) & !\inst2|varia[6]|freq2hz|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(4),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[3]~26\,
	combout => \inst2|varia[6]|freq2hz|count[4]~27_combout\,
	cout => \inst2|varia[6]|freq2hz|count[4]~28\);

-- Location: FF_X10_Y17_N15
\inst2|varia[6]|freq2hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[4]~27_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(4));

-- Location: LCCOMB_X10_Y17_N16
\inst2|varia[6]|freq2hz|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[5]~29_combout\ = (\inst2|varia[6]|freq2hz|count\(5) & (!\inst2|varia[6]|freq2hz|count[4]~28\)) # (!\inst2|varia[6]|freq2hz|count\(5) & ((\inst2|varia[6]|freq2hz|count[4]~28\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[5]~30\ = CARRY((!\inst2|varia[6]|freq2hz|count[4]~28\) # (!\inst2|varia[6]|freq2hz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(5),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[4]~28\,
	combout => \inst2|varia[6]|freq2hz|count[5]~29_combout\,
	cout => \inst2|varia[6]|freq2hz|count[5]~30\);

-- Location: FF_X10_Y17_N17
\inst2|varia[6]|freq2hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[5]~29_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(5));

-- Location: LCCOMB_X10_Y17_N18
\inst2|varia[6]|freq2hz|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[6]~31_combout\ = (\inst2|varia[6]|freq2hz|count\(6) & (\inst2|varia[6]|freq2hz|count[5]~30\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(6) & (!\inst2|varia[6]|freq2hz|count[5]~30\ & VCC))
-- \inst2|varia[6]|freq2hz|count[6]~32\ = CARRY((\inst2|varia[6]|freq2hz|count\(6) & !\inst2|varia[6]|freq2hz|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(6),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[5]~30\,
	combout => \inst2|varia[6]|freq2hz|count[6]~31_combout\,
	cout => \inst2|varia[6]|freq2hz|count[6]~32\);

-- Location: FF_X10_Y17_N19
\inst2|varia[6]|freq2hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[6]~31_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(6));

-- Location: LCCOMB_X10_Y17_N20
\inst2|varia[6]|freq2hz|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[7]~33_combout\ = (\inst2|varia[6]|freq2hz|count\(7) & (!\inst2|varia[6]|freq2hz|count[6]~32\)) # (!\inst2|varia[6]|freq2hz|count\(7) & ((\inst2|varia[6]|freq2hz|count[6]~32\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[7]~34\ = CARRY((!\inst2|varia[6]|freq2hz|count[6]~32\) # (!\inst2|varia[6]|freq2hz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(7),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[6]~32\,
	combout => \inst2|varia[6]|freq2hz|count[7]~33_combout\,
	cout => \inst2|varia[6]|freq2hz|count[7]~34\);

-- Location: FF_X10_Y17_N21
\inst2|varia[6]|freq2hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[7]~33_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(7));

-- Location: LCCOMB_X10_Y17_N22
\inst2|varia[6]|freq2hz|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[8]~35_combout\ = (\inst2|varia[6]|freq2hz|count\(8) & (\inst2|varia[6]|freq2hz|count[7]~34\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(8) & (!\inst2|varia[6]|freq2hz|count[7]~34\ & VCC))
-- \inst2|varia[6]|freq2hz|count[8]~36\ = CARRY((\inst2|varia[6]|freq2hz|count\(8) & !\inst2|varia[6]|freq2hz|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(8),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[7]~34\,
	combout => \inst2|varia[6]|freq2hz|count[8]~35_combout\,
	cout => \inst2|varia[6]|freq2hz|count[8]~36\);

-- Location: FF_X10_Y17_N23
\inst2|varia[6]|freq2hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[8]~35_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(8));

-- Location: LCCOMB_X10_Y17_N24
\inst2|varia[6]|freq2hz|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[9]~37_combout\ = (\inst2|varia[6]|freq2hz|count\(9) & (!\inst2|varia[6]|freq2hz|count[8]~36\)) # (!\inst2|varia[6]|freq2hz|count\(9) & ((\inst2|varia[6]|freq2hz|count[8]~36\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[9]~38\ = CARRY((!\inst2|varia[6]|freq2hz|count[8]~36\) # (!\inst2|varia[6]|freq2hz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(9),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[8]~36\,
	combout => \inst2|varia[6]|freq2hz|count[9]~37_combout\,
	cout => \inst2|varia[6]|freq2hz|count[9]~38\);

-- Location: FF_X10_Y17_N25
\inst2|varia[6]|freq2hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[9]~37_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(9));

-- Location: LCCOMB_X10_Y17_N26
\inst2|varia[6]|freq2hz|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[10]~39_combout\ = (\inst2|varia[6]|freq2hz|count\(10) & (\inst2|varia[6]|freq2hz|count[9]~38\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(10) & (!\inst2|varia[6]|freq2hz|count[9]~38\ & VCC))
-- \inst2|varia[6]|freq2hz|count[10]~40\ = CARRY((\inst2|varia[6]|freq2hz|count\(10) & !\inst2|varia[6]|freq2hz|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(10),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[9]~38\,
	combout => \inst2|varia[6]|freq2hz|count[10]~39_combout\,
	cout => \inst2|varia[6]|freq2hz|count[10]~40\);

-- Location: FF_X10_Y17_N27
\inst2|varia[6]|freq2hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[10]~39_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(10));

-- Location: LCCOMB_X10_Y17_N28
\inst2|varia[6]|freq2hz|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[11]~41_combout\ = (\inst2|varia[6]|freq2hz|count\(11) & (!\inst2|varia[6]|freq2hz|count[10]~40\)) # (!\inst2|varia[6]|freq2hz|count\(11) & ((\inst2|varia[6]|freq2hz|count[10]~40\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[11]~42\ = CARRY((!\inst2|varia[6]|freq2hz|count[10]~40\) # (!\inst2|varia[6]|freq2hz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(11),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[10]~40\,
	combout => \inst2|varia[6]|freq2hz|count[11]~41_combout\,
	cout => \inst2|varia[6]|freq2hz|count[11]~42\);

-- Location: FF_X10_Y17_N29
\inst2|varia[6]|freq2hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[11]~41_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(11));

-- Location: LCCOMB_X10_Y17_N30
\inst2|varia[6]|freq2hz|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[12]~43_combout\ = (\inst2|varia[6]|freq2hz|count\(12) & (\inst2|varia[6]|freq2hz|count[11]~42\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(12) & (!\inst2|varia[6]|freq2hz|count[11]~42\ & VCC))
-- \inst2|varia[6]|freq2hz|count[12]~44\ = CARRY((\inst2|varia[6]|freq2hz|count\(12) & !\inst2|varia[6]|freq2hz|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(12),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[11]~42\,
	combout => \inst2|varia[6]|freq2hz|count[12]~43_combout\,
	cout => \inst2|varia[6]|freq2hz|count[12]~44\);

-- Location: FF_X10_Y17_N31
\inst2|varia[6]|freq2hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[12]~43_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(12));

-- Location: LCCOMB_X10_Y16_N0
\inst2|varia[6]|freq2hz|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[13]~45_combout\ = (\inst2|varia[6]|freq2hz|count\(13) & (!\inst2|varia[6]|freq2hz|count[12]~44\)) # (!\inst2|varia[6]|freq2hz|count\(13) & ((\inst2|varia[6]|freq2hz|count[12]~44\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[13]~46\ = CARRY((!\inst2|varia[6]|freq2hz|count[12]~44\) # (!\inst2|varia[6]|freq2hz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(13),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[12]~44\,
	combout => \inst2|varia[6]|freq2hz|count[13]~45_combout\,
	cout => \inst2|varia[6]|freq2hz|count[13]~46\);

-- Location: FF_X10_Y16_N1
\inst2|varia[6]|freq2hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[13]~45_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(13));

-- Location: LCCOMB_X10_Y16_N2
\inst2|varia[6]|freq2hz|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[14]~47_combout\ = (\inst2|varia[6]|freq2hz|count\(14) & (\inst2|varia[6]|freq2hz|count[13]~46\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(14) & (!\inst2|varia[6]|freq2hz|count[13]~46\ & VCC))
-- \inst2|varia[6]|freq2hz|count[14]~48\ = CARRY((\inst2|varia[6]|freq2hz|count\(14) & !\inst2|varia[6]|freq2hz|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(14),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[13]~46\,
	combout => \inst2|varia[6]|freq2hz|count[14]~47_combout\,
	cout => \inst2|varia[6]|freq2hz|count[14]~48\);

-- Location: FF_X10_Y16_N3
\inst2|varia[6]|freq2hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[14]~47_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(14));

-- Location: LCCOMB_X10_Y16_N4
\inst2|varia[6]|freq2hz|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[15]~49_combout\ = (\inst2|varia[6]|freq2hz|count\(15) & (!\inst2|varia[6]|freq2hz|count[14]~48\)) # (!\inst2|varia[6]|freq2hz|count\(15) & ((\inst2|varia[6]|freq2hz|count[14]~48\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[15]~50\ = CARRY((!\inst2|varia[6]|freq2hz|count[14]~48\) # (!\inst2|varia[6]|freq2hz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(15),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[14]~48\,
	combout => \inst2|varia[6]|freq2hz|count[15]~49_combout\,
	cout => \inst2|varia[6]|freq2hz|count[15]~50\);

-- Location: FF_X10_Y16_N5
\inst2|varia[6]|freq2hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[15]~49_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(15));

-- Location: LCCOMB_X10_Y16_N6
\inst2|varia[6]|freq2hz|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[16]~51_combout\ = (\inst2|varia[6]|freq2hz|count\(16) & (\inst2|varia[6]|freq2hz|count[15]~50\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(16) & (!\inst2|varia[6]|freq2hz|count[15]~50\ & VCC))
-- \inst2|varia[6]|freq2hz|count[16]~52\ = CARRY((\inst2|varia[6]|freq2hz|count\(16) & !\inst2|varia[6]|freq2hz|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(16),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[15]~50\,
	combout => \inst2|varia[6]|freq2hz|count[16]~51_combout\,
	cout => \inst2|varia[6]|freq2hz|count[16]~52\);

-- Location: FF_X10_Y16_N7
\inst2|varia[6]|freq2hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[16]~51_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(16));

-- Location: LCCOMB_X10_Y16_N8
\inst2|varia[6]|freq2hz|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[17]~53_combout\ = (\inst2|varia[6]|freq2hz|count\(17) & (!\inst2|varia[6]|freq2hz|count[16]~52\)) # (!\inst2|varia[6]|freq2hz|count\(17) & ((\inst2|varia[6]|freq2hz|count[16]~52\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[17]~54\ = CARRY((!\inst2|varia[6]|freq2hz|count[16]~52\) # (!\inst2|varia[6]|freq2hz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(17),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[16]~52\,
	combout => \inst2|varia[6]|freq2hz|count[17]~53_combout\,
	cout => \inst2|varia[6]|freq2hz|count[17]~54\);

-- Location: FF_X10_Y16_N9
\inst2|varia[6]|freq2hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[17]~53_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(17));

-- Location: LCCOMB_X10_Y16_N10
\inst2|varia[6]|freq2hz|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[18]~55_combout\ = (\inst2|varia[6]|freq2hz|count\(18) & (\inst2|varia[6]|freq2hz|count[17]~54\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(18) & (!\inst2|varia[6]|freq2hz|count[17]~54\ & VCC))
-- \inst2|varia[6]|freq2hz|count[18]~56\ = CARRY((\inst2|varia[6]|freq2hz|count\(18) & !\inst2|varia[6]|freq2hz|count[17]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(18),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[17]~54\,
	combout => \inst2|varia[6]|freq2hz|count[18]~55_combout\,
	cout => \inst2|varia[6]|freq2hz|count[18]~56\);

-- Location: FF_X10_Y16_N11
\inst2|varia[6]|freq2hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[18]~55_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(18));

-- Location: LCCOMB_X10_Y16_N12
\inst2|varia[6]|freq2hz|count[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[19]~57_combout\ = (\inst2|varia[6]|freq2hz|count\(19) & (!\inst2|varia[6]|freq2hz|count[18]~56\)) # (!\inst2|varia[6]|freq2hz|count\(19) & ((\inst2|varia[6]|freq2hz|count[18]~56\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[19]~58\ = CARRY((!\inst2|varia[6]|freq2hz|count[18]~56\) # (!\inst2|varia[6]|freq2hz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(19),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[18]~56\,
	combout => \inst2|varia[6]|freq2hz|count[19]~57_combout\,
	cout => \inst2|varia[6]|freq2hz|count[19]~58\);

-- Location: FF_X10_Y16_N13
\inst2|varia[6]|freq2hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[19]~57_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(19));

-- Location: LCCOMB_X10_Y16_N14
\inst2|varia[6]|freq2hz|count[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[20]~59_combout\ = (\inst2|varia[6]|freq2hz|count\(20) & (\inst2|varia[6]|freq2hz|count[19]~58\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(20) & (!\inst2|varia[6]|freq2hz|count[19]~58\ & VCC))
-- \inst2|varia[6]|freq2hz|count[20]~60\ = CARRY((\inst2|varia[6]|freq2hz|count\(20) & !\inst2|varia[6]|freq2hz|count[19]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(20),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[19]~58\,
	combout => \inst2|varia[6]|freq2hz|count[20]~59_combout\,
	cout => \inst2|varia[6]|freq2hz|count[20]~60\);

-- Location: FF_X10_Y16_N15
\inst2|varia[6]|freq2hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[20]~59_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(20));

-- Location: LCCOMB_X10_Y16_N16
\inst2|varia[6]|freq2hz|count[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[21]~61_combout\ = (\inst2|varia[6]|freq2hz|count\(21) & (!\inst2|varia[6]|freq2hz|count[20]~60\)) # (!\inst2|varia[6]|freq2hz|count\(21) & ((\inst2|varia[6]|freq2hz|count[20]~60\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[21]~62\ = CARRY((!\inst2|varia[6]|freq2hz|count[20]~60\) # (!\inst2|varia[6]|freq2hz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(21),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[20]~60\,
	combout => \inst2|varia[6]|freq2hz|count[21]~61_combout\,
	cout => \inst2|varia[6]|freq2hz|count[21]~62\);

-- Location: FF_X10_Y16_N17
\inst2|varia[6]|freq2hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[21]~61_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(21));

-- Location: LCCOMB_X10_Y16_N18
\inst2|varia[6]|freq2hz|count[22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[22]~63_combout\ = (\inst2|varia[6]|freq2hz|count\(22) & (\inst2|varia[6]|freq2hz|count[21]~62\ $ (GND))) # (!\inst2|varia[6]|freq2hz|count\(22) & (!\inst2|varia[6]|freq2hz|count[21]~62\ & VCC))
-- \inst2|varia[6]|freq2hz|count[22]~64\ = CARRY((\inst2|varia[6]|freq2hz|count\(22) & !\inst2|varia[6]|freq2hz|count[21]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(22),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[21]~62\,
	combout => \inst2|varia[6]|freq2hz|count[22]~63_combout\,
	cout => \inst2|varia[6]|freq2hz|count[22]~64\);

-- Location: FF_X10_Y16_N19
\inst2|varia[6]|freq2hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[22]~63_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(22));

-- Location: LCCOMB_X10_Y16_N20
\inst2|varia[6]|freq2hz|count[23]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[23]~65_combout\ = (\inst2|varia[6]|freq2hz|count\(23) & (!\inst2|varia[6]|freq2hz|count[22]~64\)) # (!\inst2|varia[6]|freq2hz|count\(23) & ((\inst2|varia[6]|freq2hz|count[22]~64\) # (GND)))
-- \inst2|varia[6]|freq2hz|count[23]~66\ = CARRY((!\inst2|varia[6]|freq2hz|count[22]~64\) # (!\inst2|varia[6]|freq2hz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(23),
	datad => VCC,
	cin => \inst2|varia[6]|freq2hz|count[22]~64\,
	combout => \inst2|varia[6]|freq2hz|count[23]~65_combout\,
	cout => \inst2|varia[6]|freq2hz|count[23]~66\);

-- Location: FF_X10_Y16_N21
\inst2|varia[6]|freq2hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[23]~65_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(23));

-- Location: LCCOMB_X10_Y16_N22
\inst2|varia[6]|freq2hz|count[24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|count[24]~67_combout\ = \inst2|varia[6]|freq2hz|count\(24) $ (!\inst2|varia[6]|freq2hz|count[23]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[6]|freq2hz|count\(24),
	cin => \inst2|varia[6]|freq2hz|count[23]~66\,
	combout => \inst2|varia[6]|freq2hz|count[24]~67_combout\);

-- Location: FF_X10_Y16_N23
\inst2|varia[6]|freq2hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|count[24]~67_combout\,
	sclr => \inst2|varia[6]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|count\(24));

-- Location: LCCOMB_X10_Y17_N4
\inst2|varia[6]|freq2hz|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|alt~1_combout\ = \inst2|varia[6]|freq2hz|alt~q\ $ (((\inst2|varia[6]|freq2hz|count\(24) & !\inst2|varia[6]|freq2hz|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|freq2hz|count\(24),
	datac => \inst2|varia[6]|freq2hz|alt~q\,
	datad => \inst2|varia[6]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[6]|freq2hz|alt~1_combout\);

-- Location: LCCOMB_X10_Y17_N2
\inst2|varia[6]|freq2hz|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|freq2hz|alt~feeder_combout\ = \inst2|varia[6]|freq2hz|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[6]|freq2hz|alt~1_combout\,
	combout => \inst2|varia[6]|freq2hz|alt~feeder_combout\);

-- Location: FF_X10_Y17_N3
\inst2|varia[6]|freq2hz|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~2clkctrl_outclk\,
	d => \inst2|varia[6]|freq2hz|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|freq2hz|alt~q\);

-- Location: LCCOMB_X10_Y9_N8
\inst2|varia[6]|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|_~1_combout\ = LCELL((\inst2|varia[6]|freq2hz|alt~q\ & \inst2|varia[6]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[6]|freq2hz|alt~q\,
	datad => \inst2|varia[6]|count|count\(1),
	combout => \inst2|varia[6]|_~1_combout\);

-- Location: LCCOMB_X10_Y9_N4
\inst2|varia[6]|contador6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|contador6|_~0_combout\ = (\inst2|varia[6]|contador6|count\(1) & (!\inst2|varia[6]|contador6|count\(3) & \inst2|varia[6]|contador6|count\(2))) # (!\inst2|varia[6]|contador6|count\(1) & (\inst2|varia[6]|contador6|count\(3) & 
-- !\inst2|varia[6]|contador6|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|contador6|count\(1),
	datac => \inst2|varia[6]|contador6|count\(3),
	datad => \inst2|varia[6]|contador6|count\(2),
	combout => \inst2|varia[6]|contador6|_~0_combout\);

-- Location: FF_X10_Y9_N5
\inst2|varia[6]|contador6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~1_combout\,
	d => \inst2|varia[6]|contador6|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|contador6|count\(3));

-- Location: LCCOMB_X10_Y9_N6
\inst2|varia[6]|contador6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|contador6|_~1_combout\ = (!\inst2|varia[6]|contador6|count\(3) & (\inst2|varia[6]|contador6|count\(1) $ (\inst2|varia[6]|contador6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|contador6|count\(1),
	datac => \inst2|varia[6]|contador6|count\(2),
	datad => \inst2|varia[6]|contador6|count\(3),
	combout => \inst2|varia[6]|contador6|_~1_combout\);

-- Location: FF_X10_Y9_N7
\inst2|varia[6]|contador6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~1_combout\,
	d => \inst2|varia[6]|contador6|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|contador6|count\(2));

-- Location: LCCOMB_X10_Y9_N22
\inst2|varia[6]|contador6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|contador6|_~2_combout\ = (!\inst2|varia[6]|contador6|count\(1) & ((!\inst2|varia[6]|contador6|count\(3)) # (!\inst2|varia[6]|contador6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|contador6|count\(2),
	datac => \inst2|varia[6]|contador6|count\(1),
	datad => \inst2|varia[6]|contador6|count\(3),
	combout => \inst2|varia[6]|contador6|_~2_combout\);

-- Location: FF_X10_Y9_N23
\inst2|varia[6]|contador6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~1_combout\,
	d => \inst2|varia[6]|contador6|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|contador6|count\(1));

-- Location: LCCOMB_X10_Y9_N20
\inst2|varia[6]|contador6|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|contador6|alt~1_combout\ = \inst2|varia[6]|contador6|alt~q\ $ (((\inst2|varia[6]|contador6|count\(3) & ((\inst2|varia[6]|contador6|count\(1)) # (\inst2|varia[6]|contador6|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|contador6|count\(1),
	datab => \inst2|varia[6]|contador6|alt~q\,
	datac => \inst2|varia[6]|contador6|count\(3),
	datad => \inst2|varia[6]|contador6|count\(2),
	combout => \inst2|varia[6]|contador6|alt~1_combout\);

-- Location: FF_X10_Y9_N11
\inst2|varia[6]|contador6|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~1_combout\,
	asdata => \inst2|varia[6]|contador6|alt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|contador6|alt~q\);

-- Location: LCCOMB_X10_Y9_N28
\inst2|varia[6]|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|_~0_combout\ = LCELL((\inst2|varia[6]|count|count\(1) & (\inst2|varia[6]|contador6|alt~q\)) # (!\inst2|varia[6]|count|count\(1) & (((!\inst4|_~15_combout\ & \inst2|varia[6]|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|contador6|alt~q\,
	datab => \inst2|varia[6]|count|count\(1),
	datac => \inst4|_~15_combout\,
	datad => \inst2|varia[6]|_~4_combout\,
	combout => \inst2|varia[6]|_~0_combout\);

-- Location: LCCOMB_X10_Y9_N16
\inst2|varia[6]|count|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|count|count[1]~0_combout\ = !\inst2|varia[6]|count|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[6]|count|count\(1),
	combout => \inst2|varia[6]|count|count[1]~0_combout\);

-- Location: LCCOMB_X10_Y9_N12
\inst2|varia[6]|count|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|count|count[1]~feeder_combout\ = \inst2|varia[6]|count|count[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[6]|count|count[1]~0_combout\,
	combout => \inst2|varia[6]|count|count[1]~feeder_combout\);

-- Location: FF_X10_Y9_N13
\inst2|varia[6]|count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|_~0_combout\,
	d => \inst2|varia[6]|count|count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|count|count\(1));

-- Location: LCCOMB_X10_Y9_N10
\inst2|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~4_combout\ = (\inst2|varia[5]|count|count\(1) & ((\inst2|varia[5]|contador6|alt~q\) # ((\inst2|varia[6]|count|count\(1) & \inst2|varia[6]|contador6|alt~q\)))) # (!\inst2|varia[5]|count|count\(1) & (\inst2|varia[6]|count|count\(1) & 
-- (\inst2|varia[6]|contador6|alt~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|count|count\(1),
	datab => \inst2|varia[6]|count|count\(1),
	datac => \inst2|varia[6]|contador6|alt~q\,
	datad => \inst2|varia[5]|contador6|alt~q\,
	combout => \inst2|_~4_combout\);

-- Location: LCCOMB_X1_Y11_N4
\inst2|varia[2]|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|_~2_combout\ = LCELL((\clock~input_o\ & \inst2|varia[2]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~input_o\,
	datac => \inst2|varia[2]|count|count\(1),
	combout => \inst2|varia[2]|_~2_combout\);

-- Location: CLKCTRL_G4
\inst2|varia[2]|_~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[2]|_~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[2]|_~2clkctrl_outclk\);

-- Location: LCCOMB_X4_Y8_N28
\inst2|varia[2]|freq2hz|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|op_1~4_combout\ = (((!\inst2|varia[2]|freq2hz|count\(18)) # (!\inst2|varia[2]|freq2hz|count\(20))) # (!\inst2|varia[2]|freq2hz|count\(21))) # (!\inst2|varia[2]|freq2hz|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(19),
	datab => \inst2|varia[2]|freq2hz|count\(21),
	datac => \inst2|varia[2]|freq2hz|count\(20),
	datad => \inst2|varia[2]|freq2hz|count\(18),
	combout => \inst2|varia[2]|freq2hz|op_1~4_combout\);

-- Location: LCCOMB_X4_Y9_N4
\inst2|varia[2]|freq2hz|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|op_1~1_combout\ = (!\inst2|varia[2]|freq2hz|count\(9) & (!\inst2|varia[2]|freq2hz|count\(6) & (!\inst2|varia[2]|freq2hz|count\(8) & !\inst2|varia[2]|freq2hz|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(9),
	datab => \inst2|varia[2]|freq2hz|count\(6),
	datac => \inst2|varia[2]|freq2hz|count\(8),
	datad => \inst2|varia[2]|freq2hz|count\(7),
	combout => \inst2|varia[2]|freq2hz|op_1~1_combout\);

-- Location: LCCOMB_X3_Y9_N14
\inst2|varia[2]|freq2hz|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|op_1~0_combout\ = (((!\inst2|varia[2]|freq2hz|count\(14)) # (!\inst2|varia[2]|freq2hz|count\(13))) # (!\inst2|varia[2]|freq2hz|count\(11))) # (!\inst2|varia[2]|freq2hz|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(12),
	datab => \inst2|varia[2]|freq2hz|count\(11),
	datac => \inst2|varia[2]|freq2hz|count\(13),
	datad => \inst2|varia[2]|freq2hz|count\(14),
	combout => \inst2|varia[2]|freq2hz|op_1~0_combout\);

-- Location: LCCOMB_X4_Y9_N6
\inst2|varia[2]|freq2hz|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|op_1~2_combout\ = (!\inst2|varia[2]|freq2hz|count\(15) & ((\inst2|varia[2]|freq2hz|op_1~0_combout\) # ((\inst2|varia[2]|freq2hz|op_1~1_combout\ & !\inst2|varia[2]|freq2hz|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(15),
	datab => \inst2|varia[2]|freq2hz|op_1~1_combout\,
	datac => \inst2|varia[2]|freq2hz|count\(10),
	datad => \inst2|varia[2]|freq2hz|op_1~0_combout\,
	combout => \inst2|varia[2]|freq2hz|op_1~2_combout\);

-- Location: LCCOMB_X4_Y9_N0
\inst2|varia[2]|freq2hz|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|op_1~3_combout\ = (!\inst2|varia[2]|freq2hz|count\(17) & ((\inst2|varia[2]|freq2hz|op_1~2_combout\) # (!\inst2|varia[2]|freq2hz|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(16),
	datac => \inst2|varia[2]|freq2hz|count\(17),
	datad => \inst2|varia[2]|freq2hz|op_1~2_combout\,
	combout => \inst2|varia[2]|freq2hz|op_1~3_combout\);

-- Location: LCCOMB_X4_Y9_N2
\inst2|varia[2]|freq2hz|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|op_1~5_combout\ = (!\inst2|varia[2]|freq2hz|count\(23) & (((\inst2|varia[2]|freq2hz|op_1~4_combout\) # (\inst2|varia[2]|freq2hz|op_1~3_combout\)) # (!\inst2|varia[2]|freq2hz|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(22),
	datab => \inst2|varia[2]|freq2hz|op_1~4_combout\,
	datac => \inst2|varia[2]|freq2hz|count\(23),
	datad => \inst2|varia[2]|freq2hz|op_1~3_combout\,
	combout => \inst2|varia[2]|freq2hz|op_1~5_combout\);

-- Location: LCCOMB_X3_Y8_N0
\inst2|varia[2]|freq2hz|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|_~0_combout\ = (!\inst2|varia[2]|freq2hz|count\(1) & ((\inst2|varia[2]|freq2hz|op_1~5_combout\) # (!\inst2|varia[2]|freq2hz|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|op_1~5_combout\,
	datab => \inst2|varia[2]|freq2hz|count\(24),
	datac => \inst2|varia[2]|freq2hz|count\(1),
	combout => \inst2|varia[2]|freq2hz|_~0_combout\);

-- Location: FF_X3_Y8_N1
\inst2|varia[2]|freq2hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(1));

-- Location: LCCOMB_X4_Y9_N10
\inst2|varia[2]|freq2hz|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[2]~23_combout\ = (\inst2|varia[2]|freq2hz|count\(2) & (\inst2|varia[2]|freq2hz|count\(1) $ (VCC))) # (!\inst2|varia[2]|freq2hz|count\(2) & (\inst2|varia[2]|freq2hz|count\(1) & VCC))
-- \inst2|varia[2]|freq2hz|count[2]~24\ = CARRY((\inst2|varia[2]|freq2hz|count\(2) & \inst2|varia[2]|freq2hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(2),
	datab => \inst2|varia[2]|freq2hz|count\(1),
	datad => VCC,
	combout => \inst2|varia[2]|freq2hz|count[2]~23_combout\,
	cout => \inst2|varia[2]|freq2hz|count[2]~24\);

-- Location: LCCOMB_X4_Y9_N8
\inst2|varia[2]|freq2hz|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|op_1~6_combout\ = (\inst2|varia[2]|freq2hz|count\(24) & !\inst2|varia[2]|freq2hz|op_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[2]|freq2hz|count\(24),
	datad => \inst2|varia[2]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[2]|freq2hz|op_1~6_combout\);

-- Location: FF_X4_Y9_N11
\inst2|varia[2]|freq2hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[2]~23_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(2));

-- Location: LCCOMB_X4_Y9_N12
\inst2|varia[2]|freq2hz|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[3]~25_combout\ = (\inst2|varia[2]|freq2hz|count\(3) & (!\inst2|varia[2]|freq2hz|count[2]~24\)) # (!\inst2|varia[2]|freq2hz|count\(3) & ((\inst2|varia[2]|freq2hz|count[2]~24\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[3]~26\ = CARRY((!\inst2|varia[2]|freq2hz|count[2]~24\) # (!\inst2|varia[2]|freq2hz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(3),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[2]~24\,
	combout => \inst2|varia[2]|freq2hz|count[3]~25_combout\,
	cout => \inst2|varia[2]|freq2hz|count[3]~26\);

-- Location: FF_X4_Y9_N13
\inst2|varia[2]|freq2hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[3]~25_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(3));

-- Location: LCCOMB_X4_Y9_N14
\inst2|varia[2]|freq2hz|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[4]~27_combout\ = (\inst2|varia[2]|freq2hz|count\(4) & (\inst2|varia[2]|freq2hz|count[3]~26\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(4) & (!\inst2|varia[2]|freq2hz|count[3]~26\ & VCC))
-- \inst2|varia[2]|freq2hz|count[4]~28\ = CARRY((\inst2|varia[2]|freq2hz|count\(4) & !\inst2|varia[2]|freq2hz|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(4),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[3]~26\,
	combout => \inst2|varia[2]|freq2hz|count[4]~27_combout\,
	cout => \inst2|varia[2]|freq2hz|count[4]~28\);

-- Location: FF_X4_Y9_N15
\inst2|varia[2]|freq2hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[4]~27_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(4));

-- Location: LCCOMB_X4_Y9_N16
\inst2|varia[2]|freq2hz|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[5]~29_combout\ = (\inst2|varia[2]|freq2hz|count\(5) & (!\inst2|varia[2]|freq2hz|count[4]~28\)) # (!\inst2|varia[2]|freq2hz|count\(5) & ((\inst2|varia[2]|freq2hz|count[4]~28\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[5]~30\ = CARRY((!\inst2|varia[2]|freq2hz|count[4]~28\) # (!\inst2|varia[2]|freq2hz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(5),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[4]~28\,
	combout => \inst2|varia[2]|freq2hz|count[5]~29_combout\,
	cout => \inst2|varia[2]|freq2hz|count[5]~30\);

-- Location: FF_X4_Y9_N17
\inst2|varia[2]|freq2hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[5]~29_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(5));

-- Location: LCCOMB_X4_Y9_N18
\inst2|varia[2]|freq2hz|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[6]~31_combout\ = (\inst2|varia[2]|freq2hz|count\(6) & (\inst2|varia[2]|freq2hz|count[5]~30\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(6) & (!\inst2|varia[2]|freq2hz|count[5]~30\ & VCC))
-- \inst2|varia[2]|freq2hz|count[6]~32\ = CARRY((\inst2|varia[2]|freq2hz|count\(6) & !\inst2|varia[2]|freq2hz|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(6),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[5]~30\,
	combout => \inst2|varia[2]|freq2hz|count[6]~31_combout\,
	cout => \inst2|varia[2]|freq2hz|count[6]~32\);

-- Location: FF_X4_Y9_N19
\inst2|varia[2]|freq2hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[6]~31_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(6));

-- Location: LCCOMB_X4_Y9_N20
\inst2|varia[2]|freq2hz|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[7]~33_combout\ = (\inst2|varia[2]|freq2hz|count\(7) & (!\inst2|varia[2]|freq2hz|count[6]~32\)) # (!\inst2|varia[2]|freq2hz|count\(7) & ((\inst2|varia[2]|freq2hz|count[6]~32\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[7]~34\ = CARRY((!\inst2|varia[2]|freq2hz|count[6]~32\) # (!\inst2|varia[2]|freq2hz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(7),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[6]~32\,
	combout => \inst2|varia[2]|freq2hz|count[7]~33_combout\,
	cout => \inst2|varia[2]|freq2hz|count[7]~34\);

-- Location: FF_X4_Y9_N21
\inst2|varia[2]|freq2hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[7]~33_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(7));

-- Location: LCCOMB_X4_Y9_N22
\inst2|varia[2]|freq2hz|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[8]~35_combout\ = (\inst2|varia[2]|freq2hz|count\(8) & (\inst2|varia[2]|freq2hz|count[7]~34\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(8) & (!\inst2|varia[2]|freq2hz|count[7]~34\ & VCC))
-- \inst2|varia[2]|freq2hz|count[8]~36\ = CARRY((\inst2|varia[2]|freq2hz|count\(8) & !\inst2|varia[2]|freq2hz|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(8),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[7]~34\,
	combout => \inst2|varia[2]|freq2hz|count[8]~35_combout\,
	cout => \inst2|varia[2]|freq2hz|count[8]~36\);

-- Location: FF_X4_Y9_N23
\inst2|varia[2]|freq2hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[8]~35_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(8));

-- Location: LCCOMB_X4_Y9_N24
\inst2|varia[2]|freq2hz|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[9]~37_combout\ = (\inst2|varia[2]|freq2hz|count\(9) & (!\inst2|varia[2]|freq2hz|count[8]~36\)) # (!\inst2|varia[2]|freq2hz|count\(9) & ((\inst2|varia[2]|freq2hz|count[8]~36\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[9]~38\ = CARRY((!\inst2|varia[2]|freq2hz|count[8]~36\) # (!\inst2|varia[2]|freq2hz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(9),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[8]~36\,
	combout => \inst2|varia[2]|freq2hz|count[9]~37_combout\,
	cout => \inst2|varia[2]|freq2hz|count[9]~38\);

-- Location: FF_X4_Y9_N25
\inst2|varia[2]|freq2hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[9]~37_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(9));

-- Location: LCCOMB_X4_Y9_N26
\inst2|varia[2]|freq2hz|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[10]~39_combout\ = (\inst2|varia[2]|freq2hz|count\(10) & (\inst2|varia[2]|freq2hz|count[9]~38\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(10) & (!\inst2|varia[2]|freq2hz|count[9]~38\ & VCC))
-- \inst2|varia[2]|freq2hz|count[10]~40\ = CARRY((\inst2|varia[2]|freq2hz|count\(10) & !\inst2|varia[2]|freq2hz|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(10),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[9]~38\,
	combout => \inst2|varia[2]|freq2hz|count[10]~39_combout\,
	cout => \inst2|varia[2]|freq2hz|count[10]~40\);

-- Location: FF_X4_Y9_N27
\inst2|varia[2]|freq2hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[10]~39_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(10));

-- Location: LCCOMB_X4_Y9_N28
\inst2|varia[2]|freq2hz|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[11]~41_combout\ = (\inst2|varia[2]|freq2hz|count\(11) & (!\inst2|varia[2]|freq2hz|count[10]~40\)) # (!\inst2|varia[2]|freq2hz|count\(11) & ((\inst2|varia[2]|freq2hz|count[10]~40\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[11]~42\ = CARRY((!\inst2|varia[2]|freq2hz|count[10]~40\) # (!\inst2|varia[2]|freq2hz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(11),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[10]~40\,
	combout => \inst2|varia[2]|freq2hz|count[11]~41_combout\,
	cout => \inst2|varia[2]|freq2hz|count[11]~42\);

-- Location: FF_X4_Y9_N29
\inst2|varia[2]|freq2hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[11]~41_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(11));

-- Location: LCCOMB_X4_Y9_N30
\inst2|varia[2]|freq2hz|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[12]~43_combout\ = (\inst2|varia[2]|freq2hz|count\(12) & (\inst2|varia[2]|freq2hz|count[11]~42\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(12) & (!\inst2|varia[2]|freq2hz|count[11]~42\ & VCC))
-- \inst2|varia[2]|freq2hz|count[12]~44\ = CARRY((\inst2|varia[2]|freq2hz|count\(12) & !\inst2|varia[2]|freq2hz|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(12),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[11]~42\,
	combout => \inst2|varia[2]|freq2hz|count[12]~43_combout\,
	cout => \inst2|varia[2]|freq2hz|count[12]~44\);

-- Location: FF_X4_Y9_N31
\inst2|varia[2]|freq2hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[12]~43_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(12));

-- Location: LCCOMB_X4_Y8_N0
\inst2|varia[2]|freq2hz|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[13]~45_combout\ = (\inst2|varia[2]|freq2hz|count\(13) & (!\inst2|varia[2]|freq2hz|count[12]~44\)) # (!\inst2|varia[2]|freq2hz|count\(13) & ((\inst2|varia[2]|freq2hz|count[12]~44\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[13]~46\ = CARRY((!\inst2|varia[2]|freq2hz|count[12]~44\) # (!\inst2|varia[2]|freq2hz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(13),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[12]~44\,
	combout => \inst2|varia[2]|freq2hz|count[13]~45_combout\,
	cout => \inst2|varia[2]|freq2hz|count[13]~46\);

-- Location: FF_X4_Y8_N1
\inst2|varia[2]|freq2hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[13]~45_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(13));

-- Location: LCCOMB_X4_Y8_N2
\inst2|varia[2]|freq2hz|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[14]~47_combout\ = (\inst2|varia[2]|freq2hz|count\(14) & (\inst2|varia[2]|freq2hz|count[13]~46\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(14) & (!\inst2|varia[2]|freq2hz|count[13]~46\ & VCC))
-- \inst2|varia[2]|freq2hz|count[14]~48\ = CARRY((\inst2|varia[2]|freq2hz|count\(14) & !\inst2|varia[2]|freq2hz|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(14),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[13]~46\,
	combout => \inst2|varia[2]|freq2hz|count[14]~47_combout\,
	cout => \inst2|varia[2]|freq2hz|count[14]~48\);

-- Location: FF_X4_Y8_N3
\inst2|varia[2]|freq2hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[14]~47_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(14));

-- Location: LCCOMB_X4_Y8_N4
\inst2|varia[2]|freq2hz|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[15]~49_combout\ = (\inst2|varia[2]|freq2hz|count\(15) & (!\inst2|varia[2]|freq2hz|count[14]~48\)) # (!\inst2|varia[2]|freq2hz|count\(15) & ((\inst2|varia[2]|freq2hz|count[14]~48\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[15]~50\ = CARRY((!\inst2|varia[2]|freq2hz|count[14]~48\) # (!\inst2|varia[2]|freq2hz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(15),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[14]~48\,
	combout => \inst2|varia[2]|freq2hz|count[15]~49_combout\,
	cout => \inst2|varia[2]|freq2hz|count[15]~50\);

-- Location: FF_X3_Y9_N9
\inst2|varia[2]|freq2hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	asdata => \inst2|varia[2]|freq2hz|count[15]~49_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(15));

-- Location: LCCOMB_X4_Y8_N6
\inst2|varia[2]|freq2hz|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[16]~51_combout\ = (\inst2|varia[2]|freq2hz|count\(16) & (\inst2|varia[2]|freq2hz|count[15]~50\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(16) & (!\inst2|varia[2]|freq2hz|count[15]~50\ & VCC))
-- \inst2|varia[2]|freq2hz|count[16]~52\ = CARRY((\inst2|varia[2]|freq2hz|count\(16) & !\inst2|varia[2]|freq2hz|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(16),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[15]~50\,
	combout => \inst2|varia[2]|freq2hz|count[16]~51_combout\,
	cout => \inst2|varia[2]|freq2hz|count[16]~52\);

-- Location: FF_X4_Y8_N7
\inst2|varia[2]|freq2hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[16]~51_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(16));

-- Location: LCCOMB_X4_Y8_N8
\inst2|varia[2]|freq2hz|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[17]~53_combout\ = (\inst2|varia[2]|freq2hz|count\(17) & (!\inst2|varia[2]|freq2hz|count[16]~52\)) # (!\inst2|varia[2]|freq2hz|count\(17) & ((\inst2|varia[2]|freq2hz|count[16]~52\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[17]~54\ = CARRY((!\inst2|varia[2]|freq2hz|count[16]~52\) # (!\inst2|varia[2]|freq2hz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(17),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[16]~52\,
	combout => \inst2|varia[2]|freq2hz|count[17]~53_combout\,
	cout => \inst2|varia[2]|freq2hz|count[17]~54\);

-- Location: FF_X4_Y8_N9
\inst2|varia[2]|freq2hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[17]~53_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(17));

-- Location: LCCOMB_X4_Y8_N10
\inst2|varia[2]|freq2hz|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[18]~55_combout\ = (\inst2|varia[2]|freq2hz|count\(18) & (\inst2|varia[2]|freq2hz|count[17]~54\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(18) & (!\inst2|varia[2]|freq2hz|count[17]~54\ & VCC))
-- \inst2|varia[2]|freq2hz|count[18]~56\ = CARRY((\inst2|varia[2]|freq2hz|count\(18) & !\inst2|varia[2]|freq2hz|count[17]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|count\(18),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[17]~54\,
	combout => \inst2|varia[2]|freq2hz|count[18]~55_combout\,
	cout => \inst2|varia[2]|freq2hz|count[18]~56\);

-- Location: FF_X4_Y8_N11
\inst2|varia[2]|freq2hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[18]~55_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(18));

-- Location: LCCOMB_X4_Y8_N12
\inst2|varia[2]|freq2hz|count[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[19]~57_combout\ = (\inst2|varia[2]|freq2hz|count\(19) & (!\inst2|varia[2]|freq2hz|count[18]~56\)) # (!\inst2|varia[2]|freq2hz|count\(19) & ((\inst2|varia[2]|freq2hz|count[18]~56\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[19]~58\ = CARRY((!\inst2|varia[2]|freq2hz|count[18]~56\) # (!\inst2|varia[2]|freq2hz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(19),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[18]~56\,
	combout => \inst2|varia[2]|freq2hz|count[19]~57_combout\,
	cout => \inst2|varia[2]|freq2hz|count[19]~58\);

-- Location: FF_X4_Y8_N13
\inst2|varia[2]|freq2hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[19]~57_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(19));

-- Location: LCCOMB_X4_Y8_N14
\inst2|varia[2]|freq2hz|count[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[20]~59_combout\ = (\inst2|varia[2]|freq2hz|count\(20) & (\inst2|varia[2]|freq2hz|count[19]~58\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(20) & (!\inst2|varia[2]|freq2hz|count[19]~58\ & VCC))
-- \inst2|varia[2]|freq2hz|count[20]~60\ = CARRY((\inst2|varia[2]|freq2hz|count\(20) & !\inst2|varia[2]|freq2hz|count[19]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(20),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[19]~58\,
	combout => \inst2|varia[2]|freq2hz|count[20]~59_combout\,
	cout => \inst2|varia[2]|freq2hz|count[20]~60\);

-- Location: FF_X4_Y8_N15
\inst2|varia[2]|freq2hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[20]~59_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(20));

-- Location: LCCOMB_X4_Y8_N16
\inst2|varia[2]|freq2hz|count[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[21]~61_combout\ = (\inst2|varia[2]|freq2hz|count\(21) & (!\inst2|varia[2]|freq2hz|count[20]~60\)) # (!\inst2|varia[2]|freq2hz|count\(21) & ((\inst2|varia[2]|freq2hz|count[20]~60\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[21]~62\ = CARRY((!\inst2|varia[2]|freq2hz|count[20]~60\) # (!\inst2|varia[2]|freq2hz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(21),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[20]~60\,
	combout => \inst2|varia[2]|freq2hz|count[21]~61_combout\,
	cout => \inst2|varia[2]|freq2hz|count[21]~62\);

-- Location: FF_X4_Y8_N17
\inst2|varia[2]|freq2hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[21]~61_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(21));

-- Location: LCCOMB_X4_Y8_N18
\inst2|varia[2]|freq2hz|count[22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[22]~63_combout\ = (\inst2|varia[2]|freq2hz|count\(22) & (\inst2|varia[2]|freq2hz|count[21]~62\ $ (GND))) # (!\inst2|varia[2]|freq2hz|count\(22) & (!\inst2|varia[2]|freq2hz|count[21]~62\ & VCC))
-- \inst2|varia[2]|freq2hz|count[22]~64\ = CARRY((\inst2|varia[2]|freq2hz|count\(22) & !\inst2|varia[2]|freq2hz|count[21]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(22),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[21]~62\,
	combout => \inst2|varia[2]|freq2hz|count[22]~63_combout\,
	cout => \inst2|varia[2]|freq2hz|count[22]~64\);

-- Location: FF_X4_Y8_N19
\inst2|varia[2]|freq2hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[22]~63_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(22));

-- Location: LCCOMB_X4_Y8_N20
\inst2|varia[2]|freq2hz|count[23]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[23]~65_combout\ = (\inst2|varia[2]|freq2hz|count\(23) & (!\inst2|varia[2]|freq2hz|count[22]~64\)) # (!\inst2|varia[2]|freq2hz|count\(23) & ((\inst2|varia[2]|freq2hz|count[22]~64\) # (GND)))
-- \inst2|varia[2]|freq2hz|count[23]~66\ = CARRY((!\inst2|varia[2]|freq2hz|count[22]~64\) # (!\inst2|varia[2]|freq2hz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(23),
	datad => VCC,
	cin => \inst2|varia[2]|freq2hz|count[22]~64\,
	combout => \inst2|varia[2]|freq2hz|count[23]~65_combout\,
	cout => \inst2|varia[2]|freq2hz|count[23]~66\);

-- Location: FF_X4_Y8_N21
\inst2|varia[2]|freq2hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[23]~65_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(23));

-- Location: LCCOMB_X4_Y8_N22
\inst2|varia[2]|freq2hz|count[24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|count[24]~67_combout\ = \inst2|varia[2]|freq2hz|count\(24) $ (!\inst2|varia[2]|freq2hz|count[23]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|freq2hz|count\(24),
	cin => \inst2|varia[2]|freq2hz|count[23]~66\,
	combout => \inst2|varia[2]|freq2hz|count[24]~67_combout\);

-- Location: FF_X4_Y8_N23
\inst2|varia[2]|freq2hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|count[24]~67_combout\,
	sclr => \inst2|varia[2]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|count\(24));

-- Location: LCCOMB_X3_Y8_N26
\inst2|varia[2]|freq2hz|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|alt~1_combout\ = \inst2|varia[2]|freq2hz|alt~q\ $ (((\inst2|varia[2]|freq2hz|count\(24) & !\inst2|varia[2]|freq2hz|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|alt~q\,
	datab => \inst2|varia[2]|freq2hz|count\(24),
	datac => \inst2|varia[2]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[2]|freq2hz|alt~1_combout\);

-- Location: LCCOMB_X3_Y8_N30
\inst2|varia[2]|freq2hz|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|freq2hz|alt~feeder_combout\ = \inst2|varia[2]|freq2hz|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|freq2hz|alt~1_combout\,
	combout => \inst2|varia[2]|freq2hz|alt~feeder_combout\);

-- Location: FF_X3_Y8_N31
\inst2|varia[2]|freq2hz|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~2clkctrl_outclk\,
	d => \inst2|varia[2]|freq2hz|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|freq2hz|alt~q\);

-- Location: LCCOMB_X7_Y8_N10
\inst2|varia[2]|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|_~1_combout\ = LCELL((\inst2|varia[2]|freq2hz|alt~q\ & \inst2|varia[2]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[2]|freq2hz|alt~q\,
	datad => \inst2|varia[2]|count|count\(1),
	combout => \inst2|varia[2]|_~1_combout\);

-- Location: LCCOMB_X7_Y8_N16
\inst2|varia[2]|contador6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|contador6|_~2_combout\ = (!\inst2|varia[2]|contador6|count\(1) & ((!\inst2|varia[2]|contador6|count\(3)) # (!\inst2|varia[2]|contador6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|contador6|count\(2),
	datab => \inst2|varia[2]|contador6|count\(3),
	datac => \inst2|varia[2]|contador6|count\(1),
	combout => \inst2|varia[2]|contador6|_~2_combout\);

-- Location: FF_X7_Y8_N17
\inst2|varia[2]|contador6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~1_combout\,
	d => \inst2|varia[2]|contador6|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|contador6|count\(1));

-- Location: LCCOMB_X7_Y8_N30
\inst2|varia[2]|contador6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|contador6|_~1_combout\ = (!\inst2|varia[2]|contador6|count\(3) & (\inst2|varia[2]|contador6|count\(2) $ (\inst2|varia[2]|contador6|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|contador6|count\(3),
	datac => \inst2|varia[2]|contador6|count\(2),
	datad => \inst2|varia[2]|contador6|count\(1),
	combout => \inst2|varia[2]|contador6|_~1_combout\);

-- Location: FF_X7_Y8_N31
\inst2|varia[2]|contador6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~1_combout\,
	d => \inst2|varia[2]|contador6|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|contador6|count\(2));

-- Location: LCCOMB_X7_Y8_N4
\inst2|varia[2]|contador6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|contador6|_~0_combout\ = (\inst2|varia[2]|contador6|count\(2) & (\inst2|varia[2]|contador6|count\(1) & !\inst2|varia[2]|contador6|count\(3))) # (!\inst2|varia[2]|contador6|count\(2) & (!\inst2|varia[2]|contador6|count\(1) & 
-- \inst2|varia[2]|contador6|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|contador6|count\(2),
	datab => \inst2|varia[2]|contador6|count\(1),
	datac => \inst2|varia[2]|contador6|count\(3),
	combout => \inst2|varia[2]|contador6|_~0_combout\);

-- Location: FF_X7_Y8_N5
\inst2|varia[2]|contador6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~1_combout\,
	d => \inst2|varia[2]|contador6|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|contador6|count\(3));

-- Location: LCCOMB_X7_Y8_N18
\inst2|varia[2]|contador6|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|contador6|alt~1_combout\ = \inst2|varia[2]|contador6|alt~q\ $ (((\inst2|varia[2]|contador6|count\(3) & ((\inst2|varia[2]|contador6|count\(2)) # (\inst2|varia[2]|contador6|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|contador6|alt~q\,
	datab => \inst2|varia[2]|contador6|count\(3),
	datac => \inst2|varia[2]|contador6|count\(2),
	datad => \inst2|varia[2]|contador6|count\(1),
	combout => \inst2|varia[2]|contador6|alt~1_combout\);

-- Location: LCCOMB_X7_Y8_N24
\inst2|varia[2]|contador6|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|contador6|alt~feeder_combout\ = \inst2|varia[2]|contador6|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[2]|contador6|alt~1_combout\,
	combout => \inst2|varia[2]|contador6|alt~feeder_combout\);

-- Location: FF_X7_Y8_N25
\inst2|varia[2]|contador6|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~1_combout\,
	d => \inst2|varia[2]|contador6|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|contador6|alt~q\);

-- Location: LCCOMB_X7_Y8_N22
\inst2|varia[2]|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|_~0_combout\ = LCELL((\inst2|varia[2]|count|count\(1) & (\inst2|varia[2]|contador6|alt~q\)) # (!\inst2|varia[2]|count|count\(1) & (((\inst2|varia[6]|_~4_combout\ & !\inst4|_~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|count|count\(1),
	datab => \inst2|varia[2]|contador6|alt~q\,
	datac => \inst2|varia[6]|_~4_combout\,
	datad => \inst4|_~13_combout\,
	combout => \inst2|varia[2]|_~0_combout\);

-- Location: LCCOMB_X8_Y8_N18
\inst2|varia[2]|count|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|count|count[1]~0_combout\ = !\inst2|varia[2]|count|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[2]|count|count\(1),
	combout => \inst2|varia[2]|count|count[1]~0_combout\);

-- Location: LCCOMB_X8_Y8_N6
\inst2|varia[2]|count|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|count|count[1]~feeder_combout\ = \inst2|varia[2]|count|count[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[2]|count|count[1]~0_combout\,
	combout => \inst2|varia[2]|count|count[1]~feeder_combout\);

-- Location: FF_X8_Y8_N7
\inst2|varia[2]|count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|_~0_combout\,
	d => \inst2|varia[2]|count|count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|count|count\(1));

-- Location: LCCOMB_X1_Y11_N14
\inst2|varia[1]|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|_~2_combout\ = LCELL((\clock~input_o\ & \inst2|varia[1]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock~input_o\,
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|_~2_combout\);

-- Location: CLKCTRL_G3
\inst2|varia[1]|_~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[1]|_~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[1]|_~2clkctrl_outclk\);

-- Location: LCCOMB_X7_Y2_N0
\inst2|varia[1]|freq2hz|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|op_1~4_combout\ = (((!\inst2|varia[1]|freq2hz|count\(19)) # (!\inst2|varia[1]|freq2hz|count\(21))) # (!\inst2|varia[1]|freq2hz|count\(18))) # (!\inst2|varia[1]|freq2hz|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(20),
	datab => \inst2|varia[1]|freq2hz|count\(18),
	datac => \inst2|varia[1]|freq2hz|count\(21),
	datad => \inst2|varia[1]|freq2hz|count\(19),
	combout => \inst2|varia[1]|freq2hz|op_1~4_combout\);

-- Location: LCCOMB_X6_Y3_N0
\inst2|varia[1]|freq2hz|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|op_1~1_combout\ = (!\inst2|varia[1]|freq2hz|count\(8) & (!\inst2|varia[1]|freq2hz|count\(6) & (!\inst2|varia[1]|freq2hz|count\(7) & !\inst2|varia[1]|freq2hz|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(8),
	datab => \inst2|varia[1]|freq2hz|count\(6),
	datac => \inst2|varia[1]|freq2hz|count\(7),
	datad => \inst2|varia[1]|freq2hz|count\(9),
	combout => \inst2|varia[1]|freq2hz|op_1~1_combout\);

-- Location: LCCOMB_X6_Y2_N28
\inst2|varia[1]|freq2hz|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|op_1~0_combout\ = (((!\inst2|varia[1]|freq2hz|count\(11)) # (!\inst2|varia[1]|freq2hz|count\(12))) # (!\inst2|varia[1]|freq2hz|count\(13))) # (!\inst2|varia[1]|freq2hz|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(14),
	datab => \inst2|varia[1]|freq2hz|count\(13),
	datac => \inst2|varia[1]|freq2hz|count\(12),
	datad => \inst2|varia[1]|freq2hz|count\(11),
	combout => \inst2|varia[1]|freq2hz|op_1~0_combout\);

-- Location: LCCOMB_X6_Y2_N30
\inst2|varia[1]|freq2hz|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|op_1~2_combout\ = (!\inst2|varia[1]|freq2hz|count\(15) & ((\inst2|varia[1]|freq2hz|op_1~0_combout\) # ((!\inst2|varia[1]|freq2hz|count\(10) & \inst2|varia[1]|freq2hz|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(10),
	datab => \inst2|varia[1]|freq2hz|count\(15),
	datac => \inst2|varia[1]|freq2hz|op_1~1_combout\,
	datad => \inst2|varia[1]|freq2hz|op_1~0_combout\,
	combout => \inst2|varia[1]|freq2hz|op_1~2_combout\);

-- Location: LCCOMB_X6_Y2_N24
\inst2|varia[1]|freq2hz|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|op_1~3_combout\ = (!\inst2|varia[1]|freq2hz|count\(17) & ((\inst2|varia[1]|freq2hz|op_1~2_combout\) # (!\inst2|varia[1]|freq2hz|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(17),
	datac => \inst2|varia[1]|freq2hz|op_1~2_combout\,
	datad => \inst2|varia[1]|freq2hz|count\(16),
	combout => \inst2|varia[1]|freq2hz|op_1~3_combout\);

-- Location: LCCOMB_X6_Y2_N26
\inst2|varia[1]|freq2hz|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|op_1~5_combout\ = (!\inst2|varia[1]|freq2hz|count\(23) & (((\inst2|varia[1]|freq2hz|op_1~4_combout\) # (\inst2|varia[1]|freq2hz|op_1~3_combout\)) # (!\inst2|varia[1]|freq2hz|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(22),
	datab => \inst2|varia[1]|freq2hz|count\(23),
	datac => \inst2|varia[1]|freq2hz|op_1~4_combout\,
	datad => \inst2|varia[1]|freq2hz|op_1~3_combout\,
	combout => \inst2|varia[1]|freq2hz|op_1~5_combout\);

-- Location: LCCOMB_X6_Y3_N2
\inst2|varia[1]|freq2hz|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|_~0_combout\ = (!\inst2|varia[1]|freq2hz|count\(1) & ((\inst2|varia[1]|freq2hz|op_1~5_combout\) # (!\inst2|varia[1]|freq2hz|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(24),
	datac => \inst2|varia[1]|freq2hz|count\(1),
	datad => \inst2|varia[1]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[1]|freq2hz|_~0_combout\);

-- Location: FF_X6_Y3_N3
\inst2|varia[1]|freq2hz|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(1));

-- Location: LCCOMB_X6_Y3_N10
\inst2|varia[1]|freq2hz|count[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[2]~23_combout\ = (\inst2|varia[1]|freq2hz|count\(2) & (\inst2|varia[1]|freq2hz|count\(1) $ (VCC))) # (!\inst2|varia[1]|freq2hz|count\(2) & (\inst2|varia[1]|freq2hz|count\(1) & VCC))
-- \inst2|varia[1]|freq2hz|count[2]~24\ = CARRY((\inst2|varia[1]|freq2hz|count\(2) & \inst2|varia[1]|freq2hz|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(2),
	datab => \inst2|varia[1]|freq2hz|count\(1),
	datad => VCC,
	combout => \inst2|varia[1]|freq2hz|count[2]~23_combout\,
	cout => \inst2|varia[1]|freq2hz|count[2]~24\);

-- Location: LCCOMB_X5_Y2_N0
\inst2|varia[1]|freq2hz|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|op_1~6_combout\ = (\inst2|varia[1]|freq2hz|count\(24) & !\inst2|varia[1]|freq2hz|op_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(24),
	datad => \inst2|varia[1]|freq2hz|op_1~5_combout\,
	combout => \inst2|varia[1]|freq2hz|op_1~6_combout\);

-- Location: FF_X6_Y3_N11
\inst2|varia[1]|freq2hz|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[2]~23_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(2));

-- Location: LCCOMB_X6_Y3_N12
\inst2|varia[1]|freq2hz|count[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[3]~25_combout\ = (\inst2|varia[1]|freq2hz|count\(3) & (!\inst2|varia[1]|freq2hz|count[2]~24\)) # (!\inst2|varia[1]|freq2hz|count\(3) & ((\inst2|varia[1]|freq2hz|count[2]~24\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[3]~26\ = CARRY((!\inst2|varia[1]|freq2hz|count[2]~24\) # (!\inst2|varia[1]|freq2hz|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(3),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[2]~24\,
	combout => \inst2|varia[1]|freq2hz|count[3]~25_combout\,
	cout => \inst2|varia[1]|freq2hz|count[3]~26\);

-- Location: FF_X6_Y3_N13
\inst2|varia[1]|freq2hz|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[3]~25_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(3));

-- Location: LCCOMB_X6_Y3_N14
\inst2|varia[1]|freq2hz|count[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[4]~27_combout\ = (\inst2|varia[1]|freq2hz|count\(4) & (\inst2|varia[1]|freq2hz|count[3]~26\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(4) & (!\inst2|varia[1]|freq2hz|count[3]~26\ & VCC))
-- \inst2|varia[1]|freq2hz|count[4]~28\ = CARRY((\inst2|varia[1]|freq2hz|count\(4) & !\inst2|varia[1]|freq2hz|count[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(4),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[3]~26\,
	combout => \inst2|varia[1]|freq2hz|count[4]~27_combout\,
	cout => \inst2|varia[1]|freq2hz|count[4]~28\);

-- Location: FF_X6_Y3_N15
\inst2|varia[1]|freq2hz|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[4]~27_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(4));

-- Location: LCCOMB_X6_Y3_N16
\inst2|varia[1]|freq2hz|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[5]~29_combout\ = (\inst2|varia[1]|freq2hz|count\(5) & (!\inst2|varia[1]|freq2hz|count[4]~28\)) # (!\inst2|varia[1]|freq2hz|count\(5) & ((\inst2|varia[1]|freq2hz|count[4]~28\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[5]~30\ = CARRY((!\inst2|varia[1]|freq2hz|count[4]~28\) # (!\inst2|varia[1]|freq2hz|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(5),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[4]~28\,
	combout => \inst2|varia[1]|freq2hz|count[5]~29_combout\,
	cout => \inst2|varia[1]|freq2hz|count[5]~30\);

-- Location: FF_X6_Y3_N17
\inst2|varia[1]|freq2hz|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[5]~29_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(5));

-- Location: LCCOMB_X6_Y3_N18
\inst2|varia[1]|freq2hz|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[6]~31_combout\ = (\inst2|varia[1]|freq2hz|count\(6) & (\inst2|varia[1]|freq2hz|count[5]~30\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(6) & (!\inst2|varia[1]|freq2hz|count[5]~30\ & VCC))
-- \inst2|varia[1]|freq2hz|count[6]~32\ = CARRY((\inst2|varia[1]|freq2hz|count\(6) & !\inst2|varia[1]|freq2hz|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(6),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[5]~30\,
	combout => \inst2|varia[1]|freq2hz|count[6]~31_combout\,
	cout => \inst2|varia[1]|freq2hz|count[6]~32\);

-- Location: FF_X6_Y3_N19
\inst2|varia[1]|freq2hz|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[6]~31_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(6));

-- Location: LCCOMB_X6_Y3_N20
\inst2|varia[1]|freq2hz|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[7]~33_combout\ = (\inst2|varia[1]|freq2hz|count\(7) & (!\inst2|varia[1]|freq2hz|count[6]~32\)) # (!\inst2|varia[1]|freq2hz|count\(7) & ((\inst2|varia[1]|freq2hz|count[6]~32\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[7]~34\ = CARRY((!\inst2|varia[1]|freq2hz|count[6]~32\) # (!\inst2|varia[1]|freq2hz|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(7),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[6]~32\,
	combout => \inst2|varia[1]|freq2hz|count[7]~33_combout\,
	cout => \inst2|varia[1]|freq2hz|count[7]~34\);

-- Location: FF_X6_Y3_N21
\inst2|varia[1]|freq2hz|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[7]~33_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(7));

-- Location: LCCOMB_X6_Y3_N22
\inst2|varia[1]|freq2hz|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[8]~35_combout\ = (\inst2|varia[1]|freq2hz|count\(8) & (\inst2|varia[1]|freq2hz|count[7]~34\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(8) & (!\inst2|varia[1]|freq2hz|count[7]~34\ & VCC))
-- \inst2|varia[1]|freq2hz|count[8]~36\ = CARRY((\inst2|varia[1]|freq2hz|count\(8) & !\inst2|varia[1]|freq2hz|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(8),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[7]~34\,
	combout => \inst2|varia[1]|freq2hz|count[8]~35_combout\,
	cout => \inst2|varia[1]|freq2hz|count[8]~36\);

-- Location: FF_X6_Y3_N23
\inst2|varia[1]|freq2hz|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[8]~35_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(8));

-- Location: LCCOMB_X6_Y3_N24
\inst2|varia[1]|freq2hz|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[9]~37_combout\ = (\inst2|varia[1]|freq2hz|count\(9) & (!\inst2|varia[1]|freq2hz|count[8]~36\)) # (!\inst2|varia[1]|freq2hz|count\(9) & ((\inst2|varia[1]|freq2hz|count[8]~36\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[9]~38\ = CARRY((!\inst2|varia[1]|freq2hz|count[8]~36\) # (!\inst2|varia[1]|freq2hz|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(9),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[8]~36\,
	combout => \inst2|varia[1]|freq2hz|count[9]~37_combout\,
	cout => \inst2|varia[1]|freq2hz|count[9]~38\);

-- Location: FF_X6_Y3_N25
\inst2|varia[1]|freq2hz|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[9]~37_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(9));

-- Location: LCCOMB_X6_Y3_N26
\inst2|varia[1]|freq2hz|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[10]~39_combout\ = (\inst2|varia[1]|freq2hz|count\(10) & (\inst2|varia[1]|freq2hz|count[9]~38\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(10) & (!\inst2|varia[1]|freq2hz|count[9]~38\ & VCC))
-- \inst2|varia[1]|freq2hz|count[10]~40\ = CARRY((\inst2|varia[1]|freq2hz|count\(10) & !\inst2|varia[1]|freq2hz|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(10),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[9]~38\,
	combout => \inst2|varia[1]|freq2hz|count[10]~39_combout\,
	cout => \inst2|varia[1]|freq2hz|count[10]~40\);

-- Location: FF_X6_Y3_N27
\inst2|varia[1]|freq2hz|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[10]~39_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(10));

-- Location: LCCOMB_X6_Y3_N28
\inst2|varia[1]|freq2hz|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[11]~41_combout\ = (\inst2|varia[1]|freq2hz|count\(11) & (!\inst2|varia[1]|freq2hz|count[10]~40\)) # (!\inst2|varia[1]|freq2hz|count\(11) & ((\inst2|varia[1]|freq2hz|count[10]~40\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[11]~42\ = CARRY((!\inst2|varia[1]|freq2hz|count[10]~40\) # (!\inst2|varia[1]|freq2hz|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(11),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[10]~40\,
	combout => \inst2|varia[1]|freq2hz|count[11]~41_combout\,
	cout => \inst2|varia[1]|freq2hz|count[11]~42\);

-- Location: FF_X6_Y3_N29
\inst2|varia[1]|freq2hz|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[11]~41_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(11));

-- Location: LCCOMB_X6_Y3_N30
\inst2|varia[1]|freq2hz|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[12]~43_combout\ = (\inst2|varia[1]|freq2hz|count\(12) & (\inst2|varia[1]|freq2hz|count[11]~42\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(12) & (!\inst2|varia[1]|freq2hz|count[11]~42\ & VCC))
-- \inst2|varia[1]|freq2hz|count[12]~44\ = CARRY((\inst2|varia[1]|freq2hz|count\(12) & !\inst2|varia[1]|freq2hz|count[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(12),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[11]~42\,
	combout => \inst2|varia[1]|freq2hz|count[12]~43_combout\,
	cout => \inst2|varia[1]|freq2hz|count[12]~44\);

-- Location: FF_X6_Y3_N31
\inst2|varia[1]|freq2hz|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[12]~43_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(12));

-- Location: LCCOMB_X6_Y2_N0
\inst2|varia[1]|freq2hz|count[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[13]~45_combout\ = (\inst2|varia[1]|freq2hz|count\(13) & (!\inst2|varia[1]|freq2hz|count[12]~44\)) # (!\inst2|varia[1]|freq2hz|count\(13) & ((\inst2|varia[1]|freq2hz|count[12]~44\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[13]~46\ = CARRY((!\inst2|varia[1]|freq2hz|count[12]~44\) # (!\inst2|varia[1]|freq2hz|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(13),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[12]~44\,
	combout => \inst2|varia[1]|freq2hz|count[13]~45_combout\,
	cout => \inst2|varia[1]|freq2hz|count[13]~46\);

-- Location: FF_X6_Y2_N1
\inst2|varia[1]|freq2hz|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[13]~45_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(13));

-- Location: LCCOMB_X6_Y2_N2
\inst2|varia[1]|freq2hz|count[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[14]~47_combout\ = (\inst2|varia[1]|freq2hz|count\(14) & (\inst2|varia[1]|freq2hz|count[13]~46\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(14) & (!\inst2|varia[1]|freq2hz|count[13]~46\ & VCC))
-- \inst2|varia[1]|freq2hz|count[14]~48\ = CARRY((\inst2|varia[1]|freq2hz|count\(14) & !\inst2|varia[1]|freq2hz|count[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(14),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[13]~46\,
	combout => \inst2|varia[1]|freq2hz|count[14]~47_combout\,
	cout => \inst2|varia[1]|freq2hz|count[14]~48\);

-- Location: FF_X6_Y2_N3
\inst2|varia[1]|freq2hz|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[14]~47_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(14));

-- Location: LCCOMB_X6_Y2_N4
\inst2|varia[1]|freq2hz|count[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[15]~49_combout\ = (\inst2|varia[1]|freq2hz|count\(15) & (!\inst2|varia[1]|freq2hz|count[14]~48\)) # (!\inst2|varia[1]|freq2hz|count\(15) & ((\inst2|varia[1]|freq2hz|count[14]~48\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[15]~50\ = CARRY((!\inst2|varia[1]|freq2hz|count[14]~48\) # (!\inst2|varia[1]|freq2hz|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(15),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[14]~48\,
	combout => \inst2|varia[1]|freq2hz|count[15]~49_combout\,
	cout => \inst2|varia[1]|freq2hz|count[15]~50\);

-- Location: FF_X6_Y2_N5
\inst2|varia[1]|freq2hz|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[15]~49_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(15));

-- Location: LCCOMB_X6_Y2_N6
\inst2|varia[1]|freq2hz|count[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[16]~51_combout\ = (\inst2|varia[1]|freq2hz|count\(16) & (\inst2|varia[1]|freq2hz|count[15]~50\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(16) & (!\inst2|varia[1]|freq2hz|count[15]~50\ & VCC))
-- \inst2|varia[1]|freq2hz|count[16]~52\ = CARRY((\inst2|varia[1]|freq2hz|count\(16) & !\inst2|varia[1]|freq2hz|count[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(16),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[15]~50\,
	combout => \inst2|varia[1]|freq2hz|count[16]~51_combout\,
	cout => \inst2|varia[1]|freq2hz|count[16]~52\);

-- Location: FF_X6_Y2_N7
\inst2|varia[1]|freq2hz|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[16]~51_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(16));

-- Location: LCCOMB_X6_Y2_N8
\inst2|varia[1]|freq2hz|count[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[17]~53_combout\ = (\inst2|varia[1]|freq2hz|count\(17) & (!\inst2|varia[1]|freq2hz|count[16]~52\)) # (!\inst2|varia[1]|freq2hz|count\(17) & ((\inst2|varia[1]|freq2hz|count[16]~52\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[17]~54\ = CARRY((!\inst2|varia[1]|freq2hz|count[16]~52\) # (!\inst2|varia[1]|freq2hz|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(17),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[16]~52\,
	combout => \inst2|varia[1]|freq2hz|count[17]~53_combout\,
	cout => \inst2|varia[1]|freq2hz|count[17]~54\);

-- Location: FF_X6_Y2_N9
\inst2|varia[1]|freq2hz|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[17]~53_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(17));

-- Location: LCCOMB_X6_Y2_N10
\inst2|varia[1]|freq2hz|count[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[18]~55_combout\ = (\inst2|varia[1]|freq2hz|count\(18) & (\inst2|varia[1]|freq2hz|count[17]~54\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(18) & (!\inst2|varia[1]|freq2hz|count[17]~54\ & VCC))
-- \inst2|varia[1]|freq2hz|count[18]~56\ = CARRY((\inst2|varia[1]|freq2hz|count\(18) & !\inst2|varia[1]|freq2hz|count[17]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(18),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[17]~54\,
	combout => \inst2|varia[1]|freq2hz|count[18]~55_combout\,
	cout => \inst2|varia[1]|freq2hz|count[18]~56\);

-- Location: FF_X6_Y2_N11
\inst2|varia[1]|freq2hz|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[18]~55_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(18));

-- Location: LCCOMB_X6_Y2_N12
\inst2|varia[1]|freq2hz|count[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[19]~57_combout\ = (\inst2|varia[1]|freq2hz|count\(19) & (!\inst2|varia[1]|freq2hz|count[18]~56\)) # (!\inst2|varia[1]|freq2hz|count\(19) & ((\inst2|varia[1]|freq2hz|count[18]~56\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[19]~58\ = CARRY((!\inst2|varia[1]|freq2hz|count[18]~56\) # (!\inst2|varia[1]|freq2hz|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(19),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[18]~56\,
	combout => \inst2|varia[1]|freq2hz|count[19]~57_combout\,
	cout => \inst2|varia[1]|freq2hz|count[19]~58\);

-- Location: FF_X6_Y2_N13
\inst2|varia[1]|freq2hz|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[19]~57_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(19));

-- Location: LCCOMB_X6_Y2_N14
\inst2|varia[1]|freq2hz|count[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[20]~59_combout\ = (\inst2|varia[1]|freq2hz|count\(20) & (\inst2|varia[1]|freq2hz|count[19]~58\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(20) & (!\inst2|varia[1]|freq2hz|count[19]~58\ & VCC))
-- \inst2|varia[1]|freq2hz|count[20]~60\ = CARRY((\inst2|varia[1]|freq2hz|count\(20) & !\inst2|varia[1]|freq2hz|count[19]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(20),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[19]~58\,
	combout => \inst2|varia[1]|freq2hz|count[20]~59_combout\,
	cout => \inst2|varia[1]|freq2hz|count[20]~60\);

-- Location: FF_X6_Y2_N15
\inst2|varia[1]|freq2hz|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[20]~59_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(20));

-- Location: LCCOMB_X6_Y2_N16
\inst2|varia[1]|freq2hz|count[21]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[21]~61_combout\ = (\inst2|varia[1]|freq2hz|count\(21) & (!\inst2|varia[1]|freq2hz|count[20]~60\)) # (!\inst2|varia[1]|freq2hz|count\(21) & ((\inst2|varia[1]|freq2hz|count[20]~60\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[21]~62\ = CARRY((!\inst2|varia[1]|freq2hz|count[20]~60\) # (!\inst2|varia[1]|freq2hz|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(21),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[20]~60\,
	combout => \inst2|varia[1]|freq2hz|count[21]~61_combout\,
	cout => \inst2|varia[1]|freq2hz|count[21]~62\);

-- Location: FF_X6_Y2_N17
\inst2|varia[1]|freq2hz|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[21]~61_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(21));

-- Location: LCCOMB_X6_Y2_N18
\inst2|varia[1]|freq2hz|count[22]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[22]~63_combout\ = (\inst2|varia[1]|freq2hz|count\(22) & (\inst2|varia[1]|freq2hz|count[21]~62\ $ (GND))) # (!\inst2|varia[1]|freq2hz|count\(22) & (!\inst2|varia[1]|freq2hz|count[21]~62\ & VCC))
-- \inst2|varia[1]|freq2hz|count[22]~64\ = CARRY((\inst2|varia[1]|freq2hz|count\(22) & !\inst2|varia[1]|freq2hz|count[21]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|count\(22),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[21]~62\,
	combout => \inst2|varia[1]|freq2hz|count[22]~63_combout\,
	cout => \inst2|varia[1]|freq2hz|count[22]~64\);

-- Location: FF_X6_Y2_N19
\inst2|varia[1]|freq2hz|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[22]~63_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(22));

-- Location: LCCOMB_X6_Y2_N20
\inst2|varia[1]|freq2hz|count[23]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[23]~65_combout\ = (\inst2|varia[1]|freq2hz|count\(23) & (!\inst2|varia[1]|freq2hz|count[22]~64\)) # (!\inst2|varia[1]|freq2hz|count\(23) & ((\inst2|varia[1]|freq2hz|count[22]~64\) # (GND)))
-- \inst2|varia[1]|freq2hz|count[23]~66\ = CARRY((!\inst2|varia[1]|freq2hz|count[22]~64\) # (!\inst2|varia[1]|freq2hz|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(23),
	datad => VCC,
	cin => \inst2|varia[1]|freq2hz|count[22]~64\,
	combout => \inst2|varia[1]|freq2hz|count[23]~65_combout\,
	cout => \inst2|varia[1]|freq2hz|count[23]~66\);

-- Location: FF_X6_Y2_N21
\inst2|varia[1]|freq2hz|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[23]~65_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(23));

-- Location: LCCOMB_X6_Y2_N22
\inst2|varia[1]|freq2hz|count[24]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|count[24]~67_combout\ = \inst2|varia[1]|freq2hz|count\(24) $ (!\inst2|varia[1]|freq2hz|count[23]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(24),
	cin => \inst2|varia[1]|freq2hz|count[23]~66\,
	combout => \inst2|varia[1]|freq2hz|count[24]~67_combout\);

-- Location: FF_X6_Y2_N23
\inst2|varia[1]|freq2hz|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|count[24]~67_combout\,
	sclr => \inst2|varia[1]|freq2hz|op_1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|count\(24));

-- Location: LCCOMB_X5_Y7_N2
\inst2|varia[1]|freq2hz|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|alt~1_combout\ = \inst2|varia[1]|freq2hz|alt~q\ $ (((\inst2|varia[1]|freq2hz|count\(24) & !\inst2|varia[1]|freq2hz|op_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|count\(24),
	datac => \inst2|varia[1]|freq2hz|op_1~5_combout\,
	datad => \inst2|varia[1]|freq2hz|alt~q\,
	combout => \inst2|varia[1]|freq2hz|alt~1_combout\);

-- Location: LCCOMB_X5_Y7_N28
\inst2|varia[1]|freq2hz|alt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|freq2hz|alt~feeder_combout\ = \inst2|varia[1]|freq2hz|alt~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|freq2hz|alt~1_combout\,
	combout => \inst2|varia[1]|freq2hz|alt~feeder_combout\);

-- Location: FF_X5_Y7_N29
\inst2|varia[1]|freq2hz|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~2clkctrl_outclk\,
	d => \inst2|varia[1]|freq2hz|alt~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|freq2hz|alt~q\);

-- Location: LCCOMB_X5_Y7_N4
\inst2|varia[1]|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|_~1_combout\ = LCELL((\inst2|varia[1]|freq2hz|alt~q\ & \inst2|varia[1]|count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|freq2hz|alt~q\,
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|_~1_combout\);

-- Location: LCCOMB_X5_Y7_N18
\inst2|varia[1]|contador6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|contador6|_~1_combout\ = (!\inst2|varia[1]|contador6|count\(3) & (\inst2|varia[1]|contador6|count\(1) $ (\inst2|varia[1]|contador6|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|contador6|count\(1),
	datac => \inst2|varia[1]|contador6|count\(2),
	datad => \inst2|varia[1]|contador6|count\(3),
	combout => \inst2|varia[1]|contador6|_~1_combout\);

-- Location: FF_X5_Y7_N19
\inst2|varia[1]|contador6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~1_combout\,
	d => \inst2|varia[1]|contador6|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|contador6|count\(2));

-- Location: LCCOMB_X5_Y7_N8
\inst2|varia[1]|contador6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|contador6|_~0_combout\ = (\inst2|varia[1]|contador6|count\(1) & (!\inst2|varia[1]|contador6|count\(3) & \inst2|varia[1]|contador6|count\(2))) # (!\inst2|varia[1]|contador6|count\(1) & (\inst2|varia[1]|contador6|count\(3) & 
-- !\inst2|varia[1]|contador6|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|contador6|count\(1),
	datac => \inst2|varia[1]|contador6|count\(3),
	datad => \inst2|varia[1]|contador6|count\(2),
	combout => \inst2|varia[1]|contador6|_~0_combout\);

-- Location: FF_X5_Y7_N9
\inst2|varia[1]|contador6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~1_combout\,
	d => \inst2|varia[1]|contador6|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|contador6|count\(3));

-- Location: LCCOMB_X5_Y7_N26
\inst2|varia[1]|contador6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|contador6|_~2_combout\ = (!\inst2|varia[1]|contador6|count\(1) & ((!\inst2|varia[1]|contador6|count\(2)) # (!\inst2|varia[1]|contador6|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|contador6|count\(3),
	datac => \inst2|varia[1]|contador6|count\(1),
	datad => \inst2|varia[1]|contador6|count\(2),
	combout => \inst2|varia[1]|contador6|_~2_combout\);

-- Location: FF_X5_Y7_N27
\inst2|varia[1]|contador6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~1_combout\,
	d => \inst2|varia[1]|contador6|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|contador6|count\(1));

-- Location: LCCOMB_X5_Y7_N10
\inst2|varia[1]|contador6|alt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|contador6|alt~1_combout\ = \inst2|varia[1]|contador6|alt~q\ $ (((\inst2|varia[1]|contador6|count\(3) & ((\inst2|varia[1]|contador6|count\(1)) # (\inst2|varia[1]|contador6|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|contador6|count\(1),
	datab => \inst2|varia[1]|contador6|alt~q\,
	datac => \inst2|varia[1]|contador6|count\(3),
	datad => \inst2|varia[1]|contador6|count\(2),
	combout => \inst2|varia[1]|contador6|alt~1_combout\);

-- Location: FF_X5_Y7_N7
\inst2|varia[1]|contador6|alt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~1_combout\,
	asdata => \inst2|varia[1]|contador6|alt~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|contador6|alt~q\);

-- Location: LCCOMB_X5_Y7_N14
\inst2|varia[1]|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|_~0_combout\ = LCELL((\inst2|varia[1]|count|count\(1) & (((\inst2|varia[1]|contador6|alt~q\)))) # (!\inst2|varia[1]|count|count\(1) & (!\inst4|_~7_combout\ & (\inst2|varia[6]|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|count|count\(1),
	datab => \inst4|_~7_combout\,
	datac => \inst2|varia[6]|_~4_combout\,
	datad => \inst2|varia[1]|contador6|alt~q\,
	combout => \inst2|varia[1]|_~0_combout\);

-- Location: LCCOMB_X4_Y7_N24
\inst2|varia[1]|count|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|count|count[1]~0_combout\ = !\inst2|varia[1]|count|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|count|count[1]~0_combout\);

-- Location: LCCOMB_X4_Y7_N30
\inst2|varia[1]|count|count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|count|count[1]~feeder_combout\ = \inst2|varia[1]|count|count[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[1]|count|count[1]~0_combout\,
	combout => \inst2|varia[1]|count|count[1]~feeder_combout\);

-- Location: FF_X4_Y7_N31
\inst2|varia[1]|count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|_~0_combout\,
	d => \inst2|varia[1]|count|count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|count|count\(1));

-- Location: LCCOMB_X7_Y8_N20
\inst2|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~6_combout\ = (\inst2|varia[2]|count|count\(1) & ((\inst2|varia[2]|contador6|alt~q\) # ((\inst2|varia[1]|count|count\(1) & \inst2|varia[1]|contador6|alt~q\)))) # (!\inst2|varia[2]|count|count\(1) & (((\inst2|varia[1]|count|count\(1) & 
-- \inst2|varia[1]|contador6|alt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|count|count\(1),
	datab => \inst2|varia[2]|contador6|alt~q\,
	datac => \inst2|varia[1]|count|count\(1),
	datad => \inst2|varia[1]|contador6|alt~q\,
	combout => \inst2|_~6_combout\);

-- Location: LCCOMB_X10_Y9_N30
\inst2|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~7_combout\ = (\inst2|_~5_combout\) # ((\inst2|_~4_combout\) # (\inst2|_~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~5_combout\,
	datab => \inst2|_~4_combout\,
	datad => \inst2|_~6_combout\,
	combout => \inst2|_~7_combout\);

-- Location: LCCOMB_X10_Y11_N8
\inst2|varia[1]|spin|d[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|spin|d[2]~0_combout\ = !\inst2|varia[1]|spin|d\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|spin|d\(3),
	combout => \inst2|varia[1]|spin|d[2]~0_combout\);

-- Location: FF_X10_Y11_N9
\inst2|varia[1]|spin|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|varia[1]|spin|d[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|spin|d\(2));

-- Location: LCCOMB_X10_Y11_N2
\inst2|varia[1]|spin|d[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|spin|d[3]~feeder_combout\ = \inst2|varia[1]|spin|d\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|varia[1]|spin|d\(2),
	combout => \inst2|varia[1]|spin|d[3]~feeder_combout\);

-- Location: FF_X10_Y11_N3
\inst2|varia[1]|spin|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|varia[1]|spin|d[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|spin|d\(3));

-- Location: LCCOMB_X10_Y11_N24
\inst2|varia[1]|spin|DECIMAL[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|spin|DECIMAL[3]~1_combout\ = \inst2|varia[1]|spin|d\(3) $ (!\inst2|varia[1]|spin|d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|spin|d\(3),
	datad => \inst2|varia[1]|spin|d\(2),
	combout => \inst2|varia[1]|spin|DECIMAL[3]~1_combout\);

-- Location: FF_X10_Y11_N25
\inst2|varia[1]|spin|DECIMAL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|varia[1]|spin|DECIMAL[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|spin|DECIMAL\(3));

-- Location: LCCOMB_X9_Y11_N0
\inst2|varia[4]|u_sorteada[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|u_sorteada[3]~2_combout\ = (\inst2|varia[4]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[4]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(3),
	combout => \inst2|varia[4]|u_sorteada[3]~2_combout\);

-- Location: FF_X9_Y11_N1
\inst2|varia[4]|u_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|freq2hz|alt~q\,
	d => \inst2|varia[4]|u_sorteada[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|u_sorteada\(3));

-- Location: LCCOMB_X12_Y11_N12
\inst4|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~18_combout\ = (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & !\inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	combout => \inst4|_~18_combout\);

-- Location: LCCOMB_X9_Y11_N22
\inst2|_~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~53_combout\ = (\inst4|_~18_combout\ & ((\inst2|varia[4]|count|count\(1) & (\inst2|varia[4]|u_sorteada\(3))) # (!\inst2|varia[4]|count|count\(1) & ((\inst4|u[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|count|count\(1),
	datab => \inst2|varia[4]|u_sorteada\(3),
	datac => \inst4|u[4][3]~q\,
	datad => \inst4|_~18_combout\,
	combout => \inst2|_~53_combout\);

-- Location: LCCOMB_X7_Y9_N8
\inst4|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~20_combout\ = (\inst4|count|cnt\(2) & (!\inst4|count|cnt\(1) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~20_combout\);

-- Location: LCCOMB_X11_Y9_N28
\inst2|varia[6]|u_sorteada[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|u_sorteada[3]~2_combout\ = (\inst2|varia[6]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|count|count\(1),
	datac => \inst2|varia[1]|spin|DECIMAL\(3),
	combout => \inst2|varia[6]|u_sorteada[3]~2_combout\);

-- Location: FF_X11_Y9_N29
\inst2|varia[6]|u_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|freq2hz|alt~q\,
	d => \inst2|varia[6]|u_sorteada[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|u_sorteada\(3));

-- Location: LCCOMB_X11_Y9_N24
\inst2|_~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~55_combout\ = (\inst4|_~20_combout\ & ((\inst2|varia[6]|count|count\(1) & ((\inst2|varia[6]|u_sorteada\(3)))) # (!\inst2|varia[6]|count|count\(1) & (\inst4|u[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|count|count\(1),
	datab => \inst4|_~20_combout\,
	datac => \inst4|u[6][3]~q\,
	datad => \inst2|varia[6]|u_sorteada\(3),
	combout => \inst2|_~55_combout\);

-- Location: LCCOMB_X11_Y11_N10
\inst2|varia[5]|u_sorteada[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|u_sorteada[3]~2_combout\ = (\inst2|varia[5]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(3),
	combout => \inst2|varia[5]|u_sorteada[3]~2_combout\);

-- Location: FF_X11_Y11_N11
\inst2|varia[5]|u_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|freq2hz|alt~q\,
	d => \inst2|varia[5]|u_sorteada[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|u_sorteada\(3));

-- Location: LCCOMB_X11_Y11_N8
\inst4|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|_~19_combout\ = (!\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) & \inst4|count|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(3),
	combout => \inst4|_~19_combout\);

-- Location: LCCOMB_X11_Y11_N2
\inst2|_~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~54_combout\ = (\inst4|_~19_combout\ & ((\inst2|varia[5]|count|count\(1) & (\inst2|varia[5]|u_sorteada\(3))) # (!\inst2|varia[5]|count|count\(1) & ((\inst4|u[5][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|u_sorteada\(3),
	datab => \inst4|u[5][3]~q\,
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst4|_~19_combout\,
	combout => \inst2|_~54_combout\);

-- Location: LCCOMB_X12_Y11_N6
\inst2|varia[3]|u_sorteada[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|u_sorteada[3]~2_combout\ = (\inst2|varia[3]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(3),
	combout => \inst2|varia[3]|u_sorteada[3]~2_combout\);

-- Location: FF_X12_Y11_N7
\inst2|varia[3]|u_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|freq2hz|alt~q\,
	d => \inst2|varia[3]|u_sorteada[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|u_sorteada\(3));

-- Location: LCCOMB_X10_Y12_N28
\inst2|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~10_combout\ = (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & \inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|_~10_combout\);

-- Location: LCCOMB_X8_Y11_N20
\inst2|_~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~52_combout\ = (\inst2|_~10_combout\ & ((\inst2|varia[3]|count|count\(1) & ((\inst2|varia[3]|u_sorteada\(3)))) # (!\inst2|varia[3]|count|count\(1) & (\inst4|u[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[3][3]~q\,
	datab => \inst2|varia[3]|u_sorteada\(3),
	datac => \inst2|_~10_combout\,
	datad => \inst2|varia[3]|count|count\(1),
	combout => \inst2|_~52_combout\);

-- Location: LCCOMB_X7_Y11_N18
\inst2|_~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~56_combout\ = (\inst2|_~53_combout\) # ((\inst2|_~55_combout\) # ((\inst2|_~54_combout\) # (\inst2|_~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~53_combout\,
	datab => \inst2|_~55_combout\,
	datac => \inst2|_~54_combout\,
	datad => \inst2|_~52_combout\,
	combout => \inst2|_~56_combout\);

-- Location: CLKCTRL_G1
\inst2|varia[2]|freq2hz|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[2]|freq2hz|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y8_N22
\inst2|varia[2]|u_sorteada[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|u_sorteada[3]~2_combout\ = (\inst2|varia[2]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(3),
	combout => \inst2|varia[2]|u_sorteada[3]~2_combout\);

-- Location: FF_X9_Y8_N23
\inst2|varia[2]|u_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[2]|u_sorteada[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|u_sorteada\(3));

-- Location: LCCOMB_X9_Y8_N28
\inst2|_~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~57_combout\ = (\inst2|varia[2]|count|count\(1) & (\inst2|varia[2]|u_sorteada\(3))) # (!\inst2|varia[2]|count|count\(1) & ((\inst4|u[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[2]|u_sorteada\(3),
	datac => \inst2|varia[2]|count|count\(1),
	datad => \inst4|u[2][3]~q\,
	combout => \inst2|_~57_combout\);

-- Location: CLKCTRL_G0
\inst2|varia[1]|freq2hz|alt~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|varia[1]|freq2hz|alt~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y11_N12
\inst2|varia[1]|u_sorteada[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|u_sorteada[3]~2_combout\ = (\inst2|varia[1]|spin|DECIMAL\(3) & \inst2|varia[1]|count|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|spin|DECIMAL\(3),
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|u_sorteada[3]~2_combout\);

-- Location: FF_X10_Y11_N13
\inst2|varia[1]|u_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[1]|u_sorteada[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|u_sorteada\(3));

-- Location: LCCOMB_X10_Y11_N10
\inst2|_~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~51_combout\ = (\inst2|_~8_combout\ & ((\inst2|varia[1]|count|count\(1) & ((\inst2|varia[1]|u_sorteada\(3)))) # (!\inst2|varia[1]|count|count\(1) & (\inst4|u[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~8_combout\,
	datab => \inst2|varia[1]|count|count\(1),
	datac => \inst4|u[1][3]~q\,
	datad => \inst2|varia[1]|u_sorteada\(3),
	combout => \inst2|_~51_combout\);

-- Location: LCCOMB_X10_Y12_N2
\inst2|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~16_combout\ = (!\inst4|count|cnt\(3) & (!\inst4|count|cnt\(1) & \inst4|count|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|_~16_combout\);

-- Location: LCCOMB_X10_Y12_N4
\inst2|_~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~58_combout\ = (\inst2|_~56_combout\) # ((\inst2|_~51_combout\) # ((\inst2|_~57_combout\ & \inst2|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~56_combout\,
	datab => \inst2|_~57_combout\,
	datac => \inst2|_~51_combout\,
	datad => \inst2|_~16_combout\,
	combout => \inst2|_~58_combout\);

-- Location: LCCOMB_X10_Y11_N18
\inst2|varia[1]|spin|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|spin|_~1_combout\ = (!\inst2|varia[1]|spin|d\(2) & !\inst2|varia[1]|spin|d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|spin|d\(2),
	datac => \inst2|varia[1]|spin|d\(3),
	combout => \inst2|varia[1]|spin|_~1_combout\);

-- Location: FF_X10_Y11_N19
\inst2|varia[1]|spin|DECIMAL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|varia[1]|spin|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|spin|DECIMAL\(2));

-- Location: LCCOMB_X9_Y11_N6
\inst2|varia[4]|u_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|u_sorteada[2]~1_combout\ = (\inst2|varia[4]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[4]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(2),
	combout => \inst2|varia[4]|u_sorteada[2]~1_combout\);

-- Location: FF_X9_Y11_N7
\inst2|varia[4]|u_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|freq2hz|alt~q\,
	d => \inst2|varia[4]|u_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|u_sorteada\(2));

-- Location: LCCOMB_X9_Y11_N26
\inst2|_~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~46_combout\ = ((\inst2|varia[4]|count|count\(1) & ((!\inst2|varia[4]|u_sorteada\(2)))) # (!\inst2|varia[4]|count|count\(1) & (!\inst4|u[4][2]~q\))) # (!\inst4|_~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|count|count\(1),
	datab => \inst4|u[4][2]~q\,
	datac => \inst2|varia[4]|u_sorteada\(2),
	datad => \inst4|_~18_combout\,
	combout => \inst2|_~46_combout\);

-- Location: LCCOMB_X10_Y11_N28
\inst2|varia[1]|u_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|u_sorteada[2]~1_combout\ = (\inst2|varia[1]|spin|DECIMAL\(2) & \inst2|varia[1]|count|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|spin|DECIMAL\(2),
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|u_sorteada[2]~1_combout\);

-- Location: FF_X10_Y11_N29
\inst2|varia[1]|u_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[1]|u_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|u_sorteada\(2));

-- Location: LCCOMB_X10_Y11_N22
\inst2|_~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~43_combout\ = ((\inst2|varia[1]|count|count\(1) & (!\inst2|varia[1]|u_sorteada\(2))) # (!\inst2|varia[1]|count|count\(1) & ((!\inst4|u[1][2]~q\)))) # (!\inst2|_~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~8_combout\,
	datab => \inst2|varia[1]|u_sorteada\(2),
	datac => \inst4|u[1][2]~q\,
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|_~43_combout\);

-- Location: LCCOMB_X9_Y8_N10
\inst2|varia[2]|u_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|u_sorteada[2]~1_combout\ = (\inst2|varia[2]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(2),
	combout => \inst2|varia[2]|u_sorteada[2]~1_combout\);

-- Location: FF_X9_Y8_N11
\inst2|varia[2]|u_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[2]|u_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|u_sorteada\(2));

-- Location: LCCOMB_X9_Y8_N0
\inst2|_~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~44_combout\ = ((\inst2|varia[2]|count|count\(1) & ((!\inst2|varia[2]|u_sorteada\(2)))) # (!\inst2|varia[2]|count|count\(1) & (!\inst4|u[2][2]~q\))) # (!\inst2|_~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~16_combout\,
	datab => \inst4|u[2][2]~q\,
	datac => \inst2|varia[2]|count|count\(1),
	datad => \inst2|varia[2]|u_sorteada\(2),
	combout => \inst2|_~44_combout\);

-- Location: LCCOMB_X12_Y11_N20
\inst2|varia[3]|u_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|u_sorteada[2]~1_combout\ = (\inst2|varia[3]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(2),
	combout => \inst2|varia[3]|u_sorteada[2]~1_combout\);

-- Location: FF_X12_Y11_N21
\inst2|varia[3]|u_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|freq2hz|alt~q\,
	d => \inst2|varia[3]|u_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|u_sorteada\(2));

-- Location: LCCOMB_X10_Y12_N18
\inst2|_~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~45_combout\ = ((\inst2|varia[3]|count|count\(1) & ((!\inst2|varia[3]|u_sorteada\(2)))) # (!\inst2|varia[3]|count|count\(1) & (!\inst4|u[3][2]~q\))) # (!\inst2|_~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|count|count\(1),
	datab => \inst2|_~10_combout\,
	datac => \inst4|u[3][2]~q\,
	datad => \inst2|varia[3]|u_sorteada\(2),
	combout => \inst2|_~45_combout\);

-- Location: LCCOMB_X10_Y12_N0
\inst2|_~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~47_combout\ = (\inst2|_~46_combout\ & (\inst2|_~43_combout\ & (\inst2|_~44_combout\ & \inst2|_~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~46_combout\,
	datab => \inst2|_~43_combout\,
	datac => \inst2|_~44_combout\,
	datad => \inst2|_~45_combout\,
	combout => \inst2|_~47_combout\);

-- Location: LCCOMB_X11_Y9_N2
\inst2|varia[6]|u_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|u_sorteada[2]~1_combout\ = (\inst2|varia[6]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[6]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(2),
	combout => \inst2|varia[6]|u_sorteada[2]~1_combout\);

-- Location: FF_X11_Y9_N3
\inst2|varia[6]|u_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|freq2hz|alt~q\,
	d => \inst2|varia[6]|u_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|u_sorteada\(2));

-- Location: LCCOMB_X6_Y9_N18
\inst2|_~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~49_combout\ = ((\inst2|varia[6]|count|count\(1) & ((!\inst2|varia[6]|u_sorteada\(2)))) # (!\inst2|varia[6]|count|count\(1) & (!\inst4|u[6][2]~q\))) # (!\inst4|_~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|count|count\(1),
	datab => \inst4|_~20_combout\,
	datac => \inst4|u[6][2]~q\,
	datad => \inst2|varia[6]|u_sorteada\(2),
	combout => \inst2|_~49_combout\);

-- Location: LCCOMB_X11_Y11_N22
\inst2|varia[5]|u_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|u_sorteada[2]~1_combout\ = (\inst2|varia[5]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(2),
	combout => \inst2|varia[5]|u_sorteada[2]~1_combout\);

-- Location: FF_X11_Y11_N23
\inst2|varia[5]|u_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|freq2hz|alt~q\,
	d => \inst2|varia[5]|u_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|u_sorteada\(2));

-- Location: LCCOMB_X11_Y11_N14
\inst2|_~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~48_combout\ = ((\inst2|varia[5]|count|count\(1) & ((!\inst2|varia[5]|u_sorteada\(2)))) # (!\inst2|varia[5]|count|count\(1) & (!\inst4|u[5][2]~q\))) # (!\inst4|_~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|count|count\(1),
	datab => \inst4|u[5][2]~q\,
	datac => \inst2|varia[5]|u_sorteada\(2),
	datad => \inst4|_~19_combout\,
	combout => \inst2|_~48_combout\);

-- Location: LCCOMB_X10_Y12_N26
\inst2|_~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~50_combout\ = (\inst2|_~47_combout\ & (\inst2|_~49_combout\ & \inst2|_~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|_~47_combout\,
	datac => \inst2|_~49_combout\,
	datad => \inst2|_~48_combout\,
	combout => \inst2|_~50_combout\);

-- Location: LCCOMB_X10_Y11_N6
\inst2|varia[1]|u_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|u_sorteada[1]~0_combout\ = (\inst2|varia[1]|spin|d\(2) & \inst2|varia[1]|count|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|spin|d\(2),
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|u_sorteada[1]~0_combout\);

-- Location: FF_X10_Y11_N7
\inst2|varia[1]|u_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[1]|u_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|u_sorteada\(1));

-- Location: LCCOMB_X7_Y11_N12
\inst2|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~35_combout\ = (\inst2|_~8_combout\ & ((\inst2|varia[1]|count|count\(1) & (\inst2|varia[1]|u_sorteada\(1))) # (!\inst2|varia[1]|count|count\(1) & ((\inst4|u[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~8_combout\,
	datab => \inst2|varia[1]|count|count\(1),
	datac => \inst2|varia[1]|u_sorteada\(1),
	datad => \inst4|u[1][1]~q\,
	combout => \inst2|_~35_combout\);

-- Location: LCCOMB_X11_Y11_N24
\inst2|varia[5]|u_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|u_sorteada[1]~0_combout\ = (\inst2|varia[5]|count|count\(1) & \inst2|varia[1]|spin|d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst2|varia[1]|spin|d\(2),
	combout => \inst2|varia[5]|u_sorteada[1]~0_combout\);

-- Location: FF_X11_Y11_N25
\inst2|varia[5]|u_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|freq2hz|alt~q\,
	d => \inst2|varia[5]|u_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|u_sorteada\(1));

-- Location: LCCOMB_X11_Y11_N6
\inst2|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~38_combout\ = (\inst4|_~19_combout\ & ((\inst2|varia[5]|count|count\(1) & (\inst2|varia[5]|u_sorteada\(1))) # (!\inst2|varia[5]|count|count\(1) & ((\inst4|u[5][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|count|count\(1),
	datab => \inst2|varia[5]|u_sorteada\(1),
	datac => \inst4|u[5][1]~q\,
	datad => \inst4|_~19_combout\,
	combout => \inst2|_~38_combout\);

-- Location: LCCOMB_X11_Y9_N8
\inst2|varia[6]|u_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|u_sorteada[1]~0_combout\ = (\inst2|varia[6]|count|count\(1) & \inst2|varia[1]|spin|d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[6]|count|count\(1),
	datad => \inst2|varia[1]|spin|d\(2),
	combout => \inst2|varia[6]|u_sorteada[1]~0_combout\);

-- Location: FF_X11_Y9_N9
\inst2|varia[6]|u_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|freq2hz|alt~q\,
	d => \inst2|varia[6]|u_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|u_sorteada\(1));

-- Location: LCCOMB_X11_Y9_N0
\inst2|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~39_combout\ = (\inst4|_~20_combout\ & ((\inst2|varia[6]|count|count\(1) & ((\inst2|varia[6]|u_sorteada\(1)))) # (!\inst2|varia[6]|count|count\(1) & (\inst4|u[6][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[6][1]~q\,
	datab => \inst2|varia[6]|count|count\(1),
	datac => \inst2|varia[6]|u_sorteada\(1),
	datad => \inst4|_~20_combout\,
	combout => \inst2|_~39_combout\);

-- Location: LCCOMB_X12_Y11_N8
\inst2|varia[3]|u_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|u_sorteada[1]~0_combout\ = (\inst2|varia[3]|count|count\(1) & \inst2|varia[1]|spin|d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|count|count\(1),
	datad => \inst2|varia[1]|spin|d\(2),
	combout => \inst2|varia[3]|u_sorteada[1]~0_combout\);

-- Location: FF_X12_Y11_N9
\inst2|varia[3]|u_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|freq2hz|alt~q\,
	d => \inst2|varia[3]|u_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|u_sorteada\(1));

-- Location: LCCOMB_X12_Y11_N22
\inst2|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~36_combout\ = (\inst2|_~10_combout\ & ((\inst2|varia[3]|count|count\(1) & (\inst2|varia[3]|u_sorteada\(1))) # (!\inst2|varia[3]|count|count\(1) & ((\inst4|u[3][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|u_sorteada\(1),
	datab => \inst4|u[3][1]~q\,
	datac => \inst2|_~10_combout\,
	datad => \inst2|varia[3]|count|count\(1),
	combout => \inst2|_~36_combout\);

-- Location: LCCOMB_X9_Y11_N12
\inst2|varia[4]|u_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|u_sorteada[1]~0_combout\ = (\inst2|varia[4]|count|count\(1) & \inst2|varia[1]|spin|d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|count|count\(1),
	datac => \inst2|varia[1]|spin|d\(2),
	combout => \inst2|varia[4]|u_sorteada[1]~0_combout\);

-- Location: FF_X9_Y11_N13
\inst2|varia[4]|u_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|freq2hz|alt~q\,
	d => \inst2|varia[4]|u_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|u_sorteada\(1));

-- Location: LCCOMB_X9_Y11_N8
\inst2|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~37_combout\ = (\inst4|_~18_combout\ & ((\inst2|varia[4]|count|count\(1) & ((\inst2|varia[4]|u_sorteada\(1)))) # (!\inst2|varia[4]|count|count\(1) & (\inst4|u[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|u[4][1]~q\,
	datab => \inst4|_~18_combout\,
	datac => \inst2|varia[4]|count|count\(1),
	datad => \inst2|varia[4]|u_sorteada\(1),
	combout => \inst2|_~37_combout\);

-- Location: LCCOMB_X11_Y11_N12
\inst2|_~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~40_combout\ = (\inst2|_~38_combout\) # ((\inst2|_~39_combout\) # ((\inst2|_~36_combout\) # (\inst2|_~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~38_combout\,
	datab => \inst2|_~39_combout\,
	datac => \inst2|_~36_combout\,
	datad => \inst2|_~37_combout\,
	combout => \inst2|_~40_combout\);

-- Location: LCCOMB_X9_Y8_N30
\inst2|varia[2]|u_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|u_sorteada[1]~0_combout\ = (\inst2|varia[2]|count|count\(1) & \inst2|varia[1]|spin|d\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|count|count\(1),
	datac => \inst2|varia[1]|spin|d\(2),
	combout => \inst2|varia[2]|u_sorteada[1]~0_combout\);

-- Location: FF_X9_Y8_N31
\inst2|varia[2]|u_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[2]|u_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|u_sorteada\(1));

-- Location: LCCOMB_X9_Y8_N20
\inst2|_~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~41_combout\ = (\inst2|varia[2]|count|count\(1) & (\inst2|varia[2]|u_sorteada\(1))) # (!\inst2|varia[2]|count|count\(1) & ((\inst4|u[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|count|count\(1),
	datac => \inst2|varia[2]|u_sorteada\(1),
	datad => \inst4|u[2][1]~q\,
	combout => \inst2|_~41_combout\);

-- Location: LCCOMB_X10_Y12_N24
\inst2|_~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~42_combout\ = (\inst2|_~35_combout\) # ((\inst2|_~40_combout\) # ((\inst2|_~16_combout\ & \inst2|_~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~35_combout\,
	datab => \inst2|_~16_combout\,
	datac => \inst2|_~40_combout\,
	datad => \inst2|_~41_combout\,
	combout => \inst2|_~42_combout\);

-- Location: LCCOMB_X12_Y12_N10
\inst2|seg[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~26_combout\ = (\inst2|_~58_combout\ & (!\inst2|_~50_combout\ & \inst2|_~42_combout\)) # (!\inst2|_~58_combout\ & (\inst2|_~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|_~58_combout\,
	datac => \inst2|_~50_combout\,
	datad => \inst2|_~42_combout\,
	combout => \inst2|seg[6]~26_combout\);

-- Location: LCCOMB_X10_Y9_N14
\inst2|_~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~59_combout\ = (!\inst2|varia[3]|count|count\(1) & (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1) & \inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|count|count\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|_~59_combout\);

-- Location: LCCOMB_X10_Y9_N18
\inst2|_~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~60_combout\ = (!\inst4|count|cnt\(1) & (!\inst4|count|cnt\(2) & (\inst4|count|cnt\(3) & !\inst2|varia[4]|count|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	datad => \inst2|varia[4]|count|count\(1),
	combout => \inst2|_~60_combout\);

-- Location: LCCOMB_X9_Y9_N28
\inst2|_~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~61_combout\ = (\inst2|_~59_combout\ & (!\inst4|u[3][4]~q\ & ((!\inst4|u[4][4]~q\) # (!\inst2|_~60_combout\)))) # (!\inst2|_~59_combout\ & (((!\inst4|u[4][4]~q\)) # (!\inst2|_~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~59_combout\,
	datab => \inst2|_~60_combout\,
	datac => \inst4|u[4][4]~q\,
	datad => \inst4|u[3][4]~q\,
	combout => \inst2|_~61_combout\);

-- Location: LCCOMB_X9_Y8_N16
\inst2|_~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~66_combout\ = (\inst4|u[2][4]~q\ & (!\inst2|varia[2]|count|count\(1) & \inst2|_~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|u[2][4]~q\,
	datac => \inst2|varia[2]|count|count\(1),
	datad => \inst2|_~16_combout\,
	combout => \inst2|_~66_combout\);

-- Location: LCCOMB_X10_Y9_N24
\inst2|_~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~63_combout\ = (\inst4|count|cnt\(1) & (\inst4|count|cnt\(3) & (!\inst2|varia[5]|count|count\(1) & !\inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|_~63_combout\);

-- Location: LCCOMB_X7_Y9_N14
\inst2|_~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~62_combout\ = (!\inst2|varia[6]|count|count\(1) & (\inst4|count|cnt\(3) & (!\inst4|count|cnt\(1) & \inst4|count|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|count|count\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(1),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|_~62_combout\);

-- Location: LCCOMB_X7_Y9_N16
\inst2|_~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~64_combout\ = (\inst2|_~63_combout\ & (!\inst4|u[5][4]~q\ & ((!\inst2|_~62_combout\) # (!\inst4|u[6][4]~q\)))) # (!\inst2|_~63_combout\ & (((!\inst2|_~62_combout\) # (!\inst4|u[6][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~63_combout\,
	datab => \inst4|u[5][4]~q\,
	datac => \inst4|u[6][4]~q\,
	datad => \inst2|_~62_combout\,
	combout => \inst2|_~64_combout\);

-- Location: LCCOMB_X9_Y8_N18
\inst2|_~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~65_combout\ = (!\inst2|varia[1]|count|count\(1) & (\inst2|_~8_combout\ & \inst4|u[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|count|count\(1),
	datac => \inst2|_~8_combout\,
	datad => \inst4|u[1][4]~q\,
	combout => \inst2|_~65_combout\);

-- Location: LCCOMB_X9_Y8_N14
\inst2|_~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~67_combout\ = (\inst2|_~61_combout\ & (!\inst2|_~66_combout\ & (\inst2|_~64_combout\ & !\inst2|_~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~61_combout\,
	datab => \inst2|_~66_combout\,
	datac => \inst2|_~64_combout\,
	datad => \inst2|_~65_combout\,
	combout => \inst2|_~67_combout\);

-- Location: LCCOMB_X12_Y12_N28
\inst2|seg[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~27_combout\ = (\inst3|cnt\(1) & (\inst2|_~67_combout\ & \inst3|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datac => \inst2|_~67_combout\,
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[2]~27_combout\);

-- Location: LCCOMB_X7_Y9_N24
\inst2|seg[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~24_combout\ = (\inst2|_~0_combout\ & ((\inst4|count|cnt\(2) & (\inst4|count|cnt\(1) & \inst4|count|cnt\(3))) # (!\inst4|count|cnt\(2) & ((!\inst4|count|cnt\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~0_combout\,
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[6]~24_combout\);

-- Location: LCCOMB_X10_Y11_N0
\inst2|varia[1]|spin|DECIMAL[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|spin|DECIMAL[5]~0_combout\ = (\inst2|varia[1]|spin|d\(2)) # (!\inst2|varia[1]|spin|d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|spin|d\(2),
	datab => \inst2|varia[1]|spin|d\(3),
	combout => \inst2|varia[1]|spin|DECIMAL[5]~0_combout\);

-- Location: FF_X10_Y11_N1
\inst2|varia[1]|spin|DECIMAL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|varia[1]|spin|DECIMAL[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|spin|DECIMAL\(5));

-- Location: LCCOMB_X10_Y11_N20
\inst2|varia[1]|d_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|d_sorteada[1]~0_combout\ = (\inst2|varia[1]|spin|DECIMAL\(5) & \inst2|varia[1]|count|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|spin|DECIMAL\(5),
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|d_sorteada[1]~0_combout\);

-- Location: FF_X10_Y11_N21
\inst2|varia[1]|d_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[1]|d_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|d_sorteada\(1));

-- Location: LCCOMB_X10_Y8_N10
\inst2|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~9_combout\ = (\inst2|_~8_combout\ & ((\inst2|varia[1]|count|count\(1) & (\inst2|varia[1]|d_sorteada\(1))) # (!\inst2|varia[1]|count|count\(1) & ((\inst4|d[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|count|count\(1),
	datab => \inst2|_~8_combout\,
	datac => \inst2|varia[1]|d_sorteada\(1),
	datad => \inst4|d[1][1]~q\,
	combout => \inst2|_~9_combout\);

-- Location: LCCOMB_X9_Y8_N24
\inst2|varia[2]|d_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|d_sorteada[1]~0_combout\ = (\inst2|varia[2]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|count|count\(1),
	datac => \inst2|varia[1]|spin|DECIMAL\(5),
	combout => \inst2|varia[2]|d_sorteada[1]~0_combout\);

-- Location: FF_X9_Y8_N25
\inst2|varia[2]|d_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[2]|d_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|d_sorteada\(1));

-- Location: LCCOMB_X9_Y8_N6
\inst2|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~17_combout\ = (\inst2|varia[2]|count|count\(1) & ((\inst2|varia[2]|d_sorteada\(1)))) # (!\inst2|varia[2]|count|count\(1) & (\inst4|d[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][1]~q\,
	datac => \inst2|varia[2]|count|count\(1),
	datad => \inst2|varia[2]|d_sorteada\(1),
	combout => \inst2|_~17_combout\);

-- Location: LCCOMB_X11_Y9_N12
\inst2|varia[6]|d_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|d_sorteada[1]~0_combout\ = (\inst2|varia[6]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|count|count\(1),
	datac => \inst2|varia[1]|spin|DECIMAL\(5),
	combout => \inst2|varia[6]|d_sorteada[1]~0_combout\);

-- Location: FF_X11_Y9_N13
\inst2|varia[6]|d_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|freq2hz|alt~q\,
	d => \inst2|varia[6]|d_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|d_sorteada\(1));

-- Location: LCCOMB_X11_Y9_N26
\inst2|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~14_combout\ = (\inst4|_~20_combout\ & ((\inst2|varia[6]|count|count\(1) & (\inst2|varia[6]|d_sorteada\(1))) # (!\inst2|varia[6]|count|count\(1) & ((\inst4|d[6][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|d_sorteada\(1),
	datab => \inst2|varia[6]|count|count\(1),
	datac => \inst4|d[6][1]~q\,
	datad => \inst4|_~20_combout\,
	combout => \inst2|_~14_combout\);

-- Location: LCCOMB_X11_Y11_N16
\inst2|varia[5]|d_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|d_sorteada[1]~0_combout\ = (\inst2|varia[1]|spin|DECIMAL\(5) & \inst2|varia[5]|count|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|spin|DECIMAL\(5),
	datad => \inst2|varia[5]|count|count\(1),
	combout => \inst2|varia[5]|d_sorteada[1]~0_combout\);

-- Location: FF_X11_Y11_N17
\inst2|varia[5]|d_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|freq2hz|alt~q\,
	d => \inst2|varia[5]|d_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|d_sorteada\(1));

-- Location: LCCOMB_X11_Y11_N28
\inst2|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~13_combout\ = (\inst4|_~19_combout\ & ((\inst2|varia[5]|count|count\(1) & ((\inst2|varia[5]|d_sorteada\(1)))) # (!\inst2|varia[5]|count|count\(1) & (\inst4|d[5][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[5][1]~q\,
	datab => \inst2|varia[5]|d_sorteada\(1),
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst4|_~19_combout\,
	combout => \inst2|_~13_combout\);

-- Location: LCCOMB_X12_Y11_N28
\inst2|varia[3]|d_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|d_sorteada[1]~0_combout\ = (\inst2|varia[3]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(5),
	combout => \inst2|varia[3]|d_sorteada[1]~0_combout\);

-- Location: FF_X12_Y11_N29
\inst2|varia[3]|d_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|freq2hz|alt~q\,
	d => \inst2|varia[3]|d_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|d_sorteada\(1));

-- Location: LCCOMB_X12_Y11_N30
\inst2|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~11_combout\ = (\inst2|_~10_combout\ & ((\inst2|varia[3]|count|count\(1) & (\inst2|varia[3]|d_sorteada\(1))) # (!\inst2|varia[3]|count|count\(1) & ((\inst4|d[3][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|count|count\(1),
	datab => \inst2|varia[3]|d_sorteada\(1),
	datac => \inst2|_~10_combout\,
	datad => \inst4|d[3][1]~q\,
	combout => \inst2|_~11_combout\);

-- Location: LCCOMB_X9_Y11_N2
\inst2|varia[4]|d_sorteada[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|d_sorteada[1]~0_combout\ = (\inst2|varia[1]|spin|DECIMAL\(5) & \inst2|varia[4]|count|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[1]|spin|DECIMAL\(5),
	datad => \inst2|varia[4]|count|count\(1),
	combout => \inst2|varia[4]|d_sorteada[1]~0_combout\);

-- Location: FF_X9_Y11_N3
\inst2|varia[4]|d_sorteada[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|freq2hz|alt~q\,
	d => \inst2|varia[4]|d_sorteada[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|d_sorteada\(1));

-- Location: LCCOMB_X9_Y11_N10
\inst2|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~12_combout\ = (\inst4|_~18_combout\ & ((\inst2|varia[4]|count|count\(1) & (\inst2|varia[4]|d_sorteada\(1))) # (!\inst2|varia[4]|count|count\(1) & ((\inst4|d[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|_~18_combout\,
	datab => \inst2|varia[4]|d_sorteada\(1),
	datac => \inst4|d[4][1]~q\,
	datad => \inst2|varia[4]|count|count\(1),
	combout => \inst2|_~12_combout\);

-- Location: LCCOMB_X12_Y11_N24
\inst2|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~15_combout\ = (\inst2|_~14_combout\) # ((\inst2|_~13_combout\) # ((\inst2|_~11_combout\) # (\inst2|_~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~14_combout\,
	datab => \inst2|_~13_combout\,
	datac => \inst2|_~11_combout\,
	datad => \inst2|_~12_combout\,
	combout => \inst2|_~15_combout\);

-- Location: LCCOMB_X10_Y8_N26
\inst2|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~18_combout\ = (\inst2|_~9_combout\) # ((\inst2|_~15_combout\) # ((\inst2|_~16_combout\ & \inst2|_~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~9_combout\,
	datab => \inst2|_~16_combout\,
	datac => \inst2|_~17_combout\,
	datad => \inst2|_~15_combout\,
	combout => \inst2|_~18_combout\);

-- Location: FF_X9_Y8_N13
\inst2|varia[2]|d_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\,
	asdata => \inst2|varia[2]|count|count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|d_sorteada\(3));

-- Location: LCCOMB_X9_Y8_N12
\inst2|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~33_combout\ = (\inst2|varia[2]|count|count\(1) & (\inst2|varia[2]|d_sorteada\(3))) # (!\inst2|varia[2]|count|count\(1) & ((\inst4|d[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|count|count\(1),
	datac => \inst2|varia[2]|d_sorteada\(3),
	datad => \inst4|d[2][3]~q\,
	combout => \inst2|_~33_combout\);

-- Location: FF_X11_Y9_N19
\inst2|varia[6]|d_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|freq2hz|alt~q\,
	asdata => \inst2|varia[6]|count|count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|d_sorteada\(3));

-- Location: LCCOMB_X11_Y9_N18
\inst2|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~31_combout\ = (\inst4|_~20_combout\ & ((\inst2|varia[6]|count|count\(1) & ((\inst2|varia[6]|d_sorteada\(3)))) # (!\inst2|varia[6]|count|count\(1) & (\inst4|d[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[6][3]~q\,
	datab => \inst2|varia[6]|count|count\(1),
	datac => \inst2|varia[6]|d_sorteada\(3),
	datad => \inst4|_~20_combout\,
	combout => \inst2|_~31_combout\);

-- Location: FF_X9_Y11_N25
\inst2|varia[4]|d_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|freq2hz|alt~q\,
	asdata => \inst2|varia[4]|count|count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|d_sorteada\(3));

-- Location: LCCOMB_X9_Y11_N24
\inst2|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~29_combout\ = (\inst4|_~18_combout\ & ((\inst2|varia[4]|count|count\(1) & (\inst2|varia[4]|d_sorteada\(3))) # (!\inst2|varia[4]|count|count\(1) & ((\inst4|d[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|count|count\(1),
	datab => \inst4|_~18_combout\,
	datac => \inst2|varia[4]|d_sorteada\(3),
	datad => \inst4|d[4][3]~q\,
	combout => \inst2|_~29_combout\);

-- Location: FF_X12_Y11_N1
\inst2|varia[3]|d_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|freq2hz|alt~q\,
	asdata => \inst2|varia[3]|count|count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|d_sorteada\(3));

-- Location: LCCOMB_X12_Y11_N0
\inst2|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~28_combout\ = (\inst2|_~10_combout\ & ((\inst2|varia[3]|count|count\(1) & (\inst2|varia[3]|d_sorteada\(3))) # (!\inst2|varia[3]|count|count\(1) & ((\inst4|d[3][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|count|count\(1),
	datab => \inst2|_~10_combout\,
	datac => \inst2|varia[3]|d_sorteada\(3),
	datad => \inst4|d[3][3]~q\,
	combout => \inst2|_~28_combout\);

-- Location: FF_X11_Y11_N5
\inst2|varia[5]|d_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|freq2hz|alt~q\,
	asdata => \inst2|varia[5]|count|count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|d_sorteada\(3));

-- Location: LCCOMB_X11_Y11_N4
\inst2|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~30_combout\ = (\inst4|_~19_combout\ & ((\inst2|varia[5]|count|count\(1) & ((\inst2|varia[5]|d_sorteada\(3)))) # (!\inst2|varia[5]|count|count\(1) & (\inst4|d[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|count|count\(1),
	datab => \inst4|d[5][3]~q\,
	datac => \inst2|varia[5]|d_sorteada\(3),
	datad => \inst4|_~19_combout\,
	combout => \inst2|_~30_combout\);

-- Location: LCCOMB_X10_Y11_N26
\inst2|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~32_combout\ = (\inst2|_~31_combout\) # ((\inst2|_~29_combout\) # ((\inst2|_~28_combout\) # (\inst2|_~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~31_combout\,
	datab => \inst2|_~29_combout\,
	datac => \inst2|_~28_combout\,
	datad => \inst2|_~30_combout\,
	combout => \inst2|_~32_combout\);

-- Location: FF_X10_Y7_N21
\inst2|varia[1]|d_sorteada[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\,
	asdata => \inst2|varia[1]|count|count\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|d_sorteada\(3));

-- Location: LCCOMB_X10_Y7_N20
\inst2|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~27_combout\ = (\inst2|_~8_combout\ & ((\inst2|varia[1]|count|count\(1) & ((\inst2|varia[1]|d_sorteada\(3)))) # (!\inst2|varia[1]|count|count\(1) & (\inst4|d[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|count|count\(1),
	datab => \inst4|d[1][3]~q\,
	datac => \inst2|varia[1]|d_sorteada\(3),
	datad => \inst2|_~8_combout\,
	combout => \inst2|_~27_combout\);

-- Location: LCCOMB_X10_Y11_N4
\inst2|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~34_combout\ = (\inst2|_~32_combout\) # ((\inst2|_~27_combout\) # ((\inst2|_~33_combout\ & \inst2|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~33_combout\,
	datab => \inst2|_~32_combout\,
	datac => \inst2|_~27_combout\,
	datad => \inst2|_~16_combout\,
	combout => \inst2|_~34_combout\);

-- Location: LCCOMB_X10_Y11_N14
\inst2|varia[1]|spin|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|spin|_~0_combout\ = (!\inst2|varia[1]|spin|d\(2) & \inst2|varia[1]|spin|d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[1]|spin|d\(2),
	datac => \inst2|varia[1]|spin|d\(3),
	combout => \inst2|varia[1]|spin|_~0_combout\);

-- Location: FF_X10_Y11_N15
\inst2|varia[1]|spin|DECIMAL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|varia[1]|spin|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|spin|DECIMAL\(6));

-- Location: LCCOMB_X11_Y11_N18
\inst2|varia[5]|d_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[5]|d_sorteada[2]~1_combout\ = (\inst2|varia[5]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[5]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(6),
	combout => \inst2|varia[5]|d_sorteada[2]~1_combout\);

-- Location: FF_X11_Y11_N19
\inst2|varia[5]|d_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[5]|freq2hz|alt~q\,
	d => \inst2|varia[5]|d_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[5]|d_sorteada\(2));

-- Location: LCCOMB_X11_Y11_N0
\inst2|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~24_combout\ = ((\inst2|varia[5]|count|count\(1) & (!\inst2|varia[5]|d_sorteada\(2))) # (!\inst2|varia[5]|count|count\(1) & ((!\inst4|d[5][2]~q\)))) # (!\inst4|_~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[5]|count|count\(1),
	datab => \inst2|varia[5]|d_sorteada\(2),
	datac => \inst4|d[5][2]~q\,
	datad => \inst4|_~19_combout\,
	combout => \inst2|_~24_combout\);

-- Location: LCCOMB_X11_Y9_N10
\inst2|varia[6]|d_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[6]|d_sorteada[2]~1_combout\ = (\inst2|varia[6]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|varia[6]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(6),
	combout => \inst2|varia[6]|d_sorteada[2]~1_combout\);

-- Location: FF_X11_Y9_N11
\inst2|varia[6]|d_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[6]|freq2hz|alt~q\,
	d => \inst2|varia[6]|d_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[6]|d_sorteada\(2));

-- Location: LCCOMB_X11_Y9_N22
\inst2|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~25_combout\ = ((\inst2|varia[6]|count|count\(1) & (!\inst2|varia[6]|d_sorteada\(2))) # (!\inst2|varia[6]|count|count\(1) & ((!\inst4|d[6][2]~q\)))) # (!\inst4|_~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[6]|d_sorteada\(2),
	datab => \inst4|_~20_combout\,
	datac => \inst2|varia[6]|count|count\(1),
	datad => \inst4|d[6][2]~q\,
	combout => \inst2|_~25_combout\);

-- Location: LCCOMB_X9_Y8_N8
\inst2|varia[2]|d_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[2]|d_sorteada[2]~1_combout\ = (\inst2|varia[2]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[2]|count|count\(1),
	datac => \inst2|varia[1]|spin|DECIMAL\(6),
	combout => \inst2|varia[2]|d_sorteada[2]~1_combout\);

-- Location: FF_X9_Y8_N9
\inst2|varia[2]|d_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[2]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[2]|d_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[2]|d_sorteada\(2));

-- Location: LCCOMB_X9_Y8_N26
\inst2|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~20_combout\ = ((\inst2|varia[2]|count|count\(1) & ((!\inst2|varia[2]|d_sorteada\(2)))) # (!\inst2|varia[2]|count|count\(1) & (!\inst4|d[2][2]~q\))) # (!\inst2|_~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|d[2][2]~q\,
	datab => \inst2|varia[2]|d_sorteada\(2),
	datac => \inst2|varia[2]|count|count\(1),
	datad => \inst2|_~16_combout\,
	combout => \inst2|_~20_combout\);

-- Location: LCCOMB_X10_Y11_N30
\inst2|varia[1]|d_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[1]|d_sorteada[2]~1_combout\ = (\inst2|varia[1]|spin|DECIMAL\(6) & \inst2|varia[1]|count|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[1]|spin|DECIMAL\(6),
	datad => \inst2|varia[1]|count|count\(1),
	combout => \inst2|varia[1]|d_sorteada[2]~1_combout\);

-- Location: FF_X10_Y11_N31
\inst2|varia[1]|d_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[1]|freq2hz|alt~clkctrl_outclk\,
	d => \inst2|varia[1]|d_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[1]|d_sorteada\(2));

-- Location: LCCOMB_X10_Y11_N16
\inst2|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~19_combout\ = ((\inst2|varia[1]|count|count\(1) & (!\inst2|varia[1]|d_sorteada\(2))) # (!\inst2|varia[1]|count|count\(1) & ((!\inst4|d[1][2]~q\)))) # (!\inst2|_~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~8_combout\,
	datab => \inst2|varia[1]|count|count\(1),
	datac => \inst2|varia[1]|d_sorteada\(2),
	datad => \inst4|d[1][2]~q\,
	combout => \inst2|_~19_combout\);

-- Location: LCCOMB_X9_Y11_N4
\inst2|varia[4]|d_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[4]|d_sorteada[2]~1_combout\ = (\inst2|varia[4]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|count|count\(1),
	datac => \inst2|varia[1]|spin|DECIMAL\(6),
	combout => \inst2|varia[4]|d_sorteada[2]~1_combout\);

-- Location: FF_X9_Y11_N5
\inst2|varia[4]|d_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[4]|freq2hz|alt~q\,
	d => \inst2|varia[4]|d_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[4]|d_sorteada\(2));

-- Location: LCCOMB_X9_Y11_N28
\inst2|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~22_combout\ = ((\inst2|varia[4]|count|count\(1) & ((!\inst2|varia[4]|d_sorteada\(2)))) # (!\inst2|varia[4]|count|count\(1) & (!\inst4|d[4][2]~q\))) # (!\inst4|_~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[4]|count|count\(1),
	datab => \inst4|d[4][2]~q\,
	datac => \inst2|varia[4]|d_sorteada\(2),
	datad => \inst4|_~18_combout\,
	combout => \inst2|_~22_combout\);

-- Location: LCCOMB_X12_Y11_N10
\inst2|varia[3]|d_sorteada[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|varia[3]|d_sorteada[2]~1_combout\ = (\inst2|varia[3]|count|count\(1) & \inst2|varia[1]|spin|DECIMAL\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|varia[3]|count|count\(1),
	datad => \inst2|varia[1]|spin|DECIMAL\(6),
	combout => \inst2|varia[3]|d_sorteada[2]~1_combout\);

-- Location: FF_X12_Y11_N11
\inst2|varia[3]|d_sorteada[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|varia[3]|freq2hz|alt~q\,
	d => \inst2|varia[3]|d_sorteada[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|varia[3]|d_sorteada\(2));

-- Location: LCCOMB_X12_Y11_N16
\inst2|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~21_combout\ = ((\inst2|varia[3]|count|count\(1) & (!\inst2|varia[3]|d_sorteada\(2))) # (!\inst2|varia[3]|count|count\(1) & ((!\inst4|d[3][2]~q\)))) # (!\inst2|_~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|varia[3]|d_sorteada\(2),
	datab => \inst4|d[3][2]~q\,
	datac => \inst2|_~10_combout\,
	datad => \inst2|varia[3]|count|count\(1),
	combout => \inst2|_~21_combout\);

-- Location: LCCOMB_X12_Y11_N18
\inst2|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~23_combout\ = (\inst2|_~20_combout\ & (\inst2|_~19_combout\ & (\inst2|_~22_combout\ & \inst2|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~20_combout\,
	datab => \inst2|_~19_combout\,
	datac => \inst2|_~22_combout\,
	datad => \inst2|_~21_combout\,
	combout => \inst2|_~23_combout\);

-- Location: LCCOMB_X12_Y11_N4
\inst2|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|_~26_combout\ = (\inst2|_~24_combout\ & (\inst2|_~25_combout\ & \inst2|_~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~24_combout\,
	datab => \inst2|_~25_combout\,
	datad => \inst2|_~23_combout\,
	combout => \inst2|_~26_combout\);

-- Location: LCCOMB_X13_Y13_N24
\inst2|seg[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~25_combout\ = (\inst2|_~2_combout\ & ((\inst2|_~34_combout\ & (\inst2|_~18_combout\ & !\inst2|_~26_combout\)) # (!\inst2|_~34_combout\ & ((\inst2|_~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~18_combout\,
	datab => \inst2|_~34_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst2|_~26_combout\,
	combout => \inst2|seg[6]~25_combout\);

-- Location: LCCOMB_X12_Y12_N2
\inst2|seg[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[6]~28_combout\ = (\inst2|seg[6]~24_combout\) # ((\inst2|seg[6]~25_combout\) # ((\inst2|seg[6]~26_combout\ & \inst2|seg[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[6]~26_combout\,
	datab => \inst2|seg[2]~27_combout\,
	datac => \inst2|seg[6]~24_combout\,
	datad => \inst2|seg[6]~25_combout\,
	combout => \inst2|seg[6]~28_combout\);

-- Location: LCCOMB_X13_Y13_N30
\inst2|seg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~30_combout\ = (\inst2|_~2_combout\ & ((\inst2|_~18_combout\ & ((!\inst2|_~26_combout\) # (!\inst2|_~34_combout\))) # (!\inst2|_~18_combout\ & (!\inst2|_~34_combout\ & !\inst2|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~18_combout\,
	datab => \inst2|_~34_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst2|_~26_combout\,
	combout => \inst2|seg[5]~30_combout\);

-- Location: LCCOMB_X12_Y12_N24
\inst2|seg[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~29_combout\ = (\inst2|seg[2]~27_combout\ & ((\inst2|_~50_combout\ & (\inst2|_~42_combout\ & !\inst2|_~58_combout\)) # (!\inst2|_~50_combout\ & ((\inst2|_~42_combout\) # (!\inst2|_~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~50_combout\,
	datab => \inst2|_~42_combout\,
	datac => \inst2|_~58_combout\,
	datad => \inst2|seg[2]~27_combout\,
	combout => \inst2|seg[5]~29_combout\);

-- Location: LCCOMB_X12_Y12_N30
\inst2|seg[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~51_combout\ = (\inst3|cnt\(1)) # ((!\inst4|count|cnt\(3) & ((\inst4|count|cnt\(1)) # (\inst4|count|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(3),
	datad => \inst3|cnt\(1),
	combout => \inst2|seg[5]~51_combout\);

-- Location: LCCOMB_X12_Y12_N12
\inst2|seg[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[5]~52_combout\ = (\inst2|seg[5]~30_combout\) # ((\inst2|seg[5]~29_combout\) # ((\inst2|seg[5]~51_combout\ & !\inst3|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[5]~30_combout\,
	datab => \inst2|seg[5]~29_combout\,
	datac => \inst2|seg[5]~51_combout\,
	datad => \inst3|cnt\(2),
	combout => \inst2|seg[5]~52_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst2|seg[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~32_combout\ = (\inst4|count|cnt\(3) & ((!\inst4|count|cnt\(2)))) # (!\inst4|count|cnt\(3) & (\inst4|count|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(3),
	datad => \inst4|count|cnt\(2),
	combout => \inst2|seg[4]~32_combout\);

-- Location: LCCOMB_X12_Y12_N20
\inst2|seg[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~33_combout\ = (!\inst3|cnt\(2) & ((\inst2|seg[4]~32_combout\) # (\inst3|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[4]~32_combout\,
	datab => \inst3|cnt\(2),
	datad => \inst3|cnt\(1),
	combout => \inst2|seg[4]~33_combout\);

-- Location: LCCOMB_X12_Y12_N22
\inst2|seg[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~34_combout\ = (\inst2|_~50_combout\ & ((\inst2|_~58_combout\ & (\inst2|_~67_combout\)) # (!\inst2|_~58_combout\ & ((\inst2|_~42_combout\))))) # (!\inst2|_~50_combout\ & (((\inst2|_~67_combout\ & \inst2|_~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~50_combout\,
	datab => \inst2|_~58_combout\,
	datac => \inst2|_~67_combout\,
	datad => \inst2|_~42_combout\,
	combout => \inst2|seg[4]~34_combout\);

-- Location: LCCOMB_X13_Y13_N20
\inst2|seg[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~31_combout\ = (\inst2|_~2_combout\ & ((\inst2|_~18_combout\) # ((\inst2|_~34_combout\ & \inst2|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~18_combout\,
	datab => \inst2|_~34_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst2|_~26_combout\,
	combout => \inst2|seg[4]~31_combout\);

-- Location: LCCOMB_X12_Y12_N16
\inst2|seg[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[4]~35_combout\ = (\inst2|seg[4]~33_combout\) # ((\inst2|seg[4]~31_combout\) # ((\inst2|_~3_combout\ & \inst2|seg[4]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~3_combout\,
	datab => \inst2|seg[4]~33_combout\,
	datac => \inst2|seg[4]~34_combout\,
	datad => \inst2|seg[4]~31_combout\,
	combout => \inst2|seg[4]~35_combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst2|seg[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~37_combout\ = (\inst2|seg[2]~27_combout\ & ((\inst2|_~50_combout\ & (\inst2|_~42_combout\ $ (\inst2|_~58_combout\))) # (!\inst2|_~50_combout\ & (\inst2|_~42_combout\ & \inst2|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~50_combout\,
	datab => \inst2|_~42_combout\,
	datac => \inst2|_~58_combout\,
	datad => \inst2|seg[2]~27_combout\,
	combout => \inst2|seg[3]~37_combout\);

-- Location: LCCOMB_X12_Y11_N2
\inst2|seg[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~36_combout\ = (!\inst4|count|cnt\(2) & (\inst2|_~0_combout\ & (\inst4|count|cnt\(3) $ (\inst4|count|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(3),
	datab => \inst4|count|cnt\(2),
	datac => \inst4|count|cnt\(1),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[3]~36_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst2|seg[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~38_combout\ = (\inst2|_~2_combout\ & ((\inst2|_~18_combout\ & (\inst2|_~34_combout\ $ (\inst2|_~26_combout\))) # (!\inst2|_~18_combout\ & (\inst2|_~34_combout\ & \inst2|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~18_combout\,
	datab => \inst2|_~34_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst2|_~26_combout\,
	combout => \inst2|seg[3]~38_combout\);

-- Location: LCCOMB_X13_Y13_N4
\inst2|seg[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[3]~39_combout\ = (\inst2|seg[3]~37_combout\) # ((\inst2|_~1_combout\) # ((\inst2|seg[3]~36_combout\) # (\inst2|seg[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[3]~37_combout\,
	datab => \inst2|_~1_combout\,
	datac => \inst2|seg[3]~36_combout\,
	datad => \inst2|seg[3]~38_combout\,
	combout => \inst2|seg[3]~39_combout\);

-- Location: LCCOMB_X12_Y12_N0
\inst2|seg[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~40_combout\ = (!\inst2|_~50_combout\ & (!\inst2|_~42_combout\ & (!\inst2|_~58_combout\ & \inst2|seg[2]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~50_combout\,
	datab => \inst2|_~42_combout\,
	datac => \inst2|_~58_combout\,
	datad => \inst2|seg[2]~27_combout\,
	combout => \inst2|seg[2]~40_combout\);

-- Location: LCCOMB_X13_Y13_N22
\inst2|seg[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~41_combout\ = (!\inst2|_~18_combout\ & (!\inst2|_~34_combout\ & (\inst2|_~2_combout\ & !\inst2|_~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~18_combout\,
	datab => \inst2|_~34_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst2|_~26_combout\,
	combout => \inst2|seg[2]~41_combout\);

-- Location: LCCOMB_X7_Y9_N12
\inst2|seg[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~42_combout\ = (\inst2|_~0_combout\ & (!\inst4|count|cnt\(1) & (\inst4|count|cnt\(2) & !\inst4|count|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~0_combout\,
	datab => \inst4|count|cnt\(1),
	datac => \inst4|count|cnt\(2),
	datad => \inst4|count|cnt\(3),
	combout => \inst2|seg[2]~42_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst2|seg[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[2]~43_combout\ = (\inst2|seg[2]~40_combout\) # ((\inst2|_~1_combout\) # ((\inst2|seg[2]~41_combout\) # (\inst2|seg[2]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[2]~40_combout\,
	datab => \inst2|_~1_combout\,
	datac => \inst2|seg[2]~41_combout\,
	datad => \inst2|seg[2]~42_combout\,
	combout => \inst2|seg[2]~43_combout\);

-- Location: LCCOMB_X12_Y12_N14
\inst2|seg[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~44_combout\ = (\inst2|_~58_combout\ & (\inst2|seg[2]~27_combout\ & (\inst2|_~50_combout\ $ (!\inst2|_~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~50_combout\,
	datab => \inst2|_~42_combout\,
	datac => \inst2|_~58_combout\,
	datad => \inst2|seg[2]~27_combout\,
	combout => \inst2|seg[1]~44_combout\);

-- Location: LCCOMB_X10_Y9_N2
\inst2|seg[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~46_combout\ = (\inst4|count|cnt\(3) & (\inst2|_~0_combout\ & (\inst4|count|cnt\(1) $ (\inst4|count|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|count|cnt\(1),
	datab => \inst4|count|cnt\(3),
	datac => \inst4|count|cnt\(2),
	datad => \inst2|_~0_combout\,
	combout => \inst2|seg[1]~46_combout\);

-- Location: LCCOMB_X13_Y13_N10
\inst2|seg[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~45_combout\ = (\inst2|_~34_combout\ & (\inst2|_~2_combout\ & (\inst2|_~18_combout\ $ (!\inst2|_~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~18_combout\,
	datab => \inst2|_~34_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst2|_~26_combout\,
	combout => \inst2|seg[1]~45_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst2|seg[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[1]~47_combout\ = (\inst2|seg[1]~44_combout\) # ((\inst2|seg[1]~46_combout\) # ((\inst2|_~1_combout\) # (\inst2|seg[1]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[1]~44_combout\,
	datab => \inst2|seg[1]~46_combout\,
	datac => \inst2|_~1_combout\,
	datad => \inst2|seg[1]~45_combout\,
	combout => \inst2|seg[1]~47_combout\);

-- Location: LCCOMB_X12_Y12_N4
\inst2|seg[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~49_combout\ = (\inst2|_~50_combout\ & (\inst2|seg[2]~27_combout\ & (\inst2|_~42_combout\ $ (\inst2|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~50_combout\,
	datab => \inst2|_~42_combout\,
	datac => \inst2|_~58_combout\,
	datad => \inst2|seg[2]~27_combout\,
	combout => \inst2|seg[0]~49_combout\);

-- Location: LCCOMB_X13_Y13_N18
\inst2|seg[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~48_combout\ = (\inst2|_~2_combout\ & (\inst2|_~26_combout\ & (\inst2|_~18_combout\ $ (\inst2|_~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|_~18_combout\,
	datab => \inst2|_~34_combout\,
	datac => \inst2|_~2_combout\,
	datad => \inst2|_~26_combout\,
	combout => \inst2|seg[0]~48_combout\);

-- Location: LCCOMB_X13_Y13_N0
\inst2|seg[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|seg[0]~50_combout\ = (\inst2|seg[0]~49_combout\) # ((\inst2|seg[3]~36_combout\) # ((\inst2|_~1_combout\) # (\inst2|seg[0]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg[0]~49_combout\,
	datab => \inst2|seg[3]~36_combout\,
	datac => \inst2|_~1_combout\,
	datad => \inst2|seg[0]~48_combout\,
	combout => \inst2|seg[0]~50_combout\);

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_lcd_d(7) <= \lcd_d[7]~output_o\;

ww_lcd_d(6) <= \lcd_d[6]~output_o\;

ww_lcd_d(5) <= \lcd_d[5]~output_o\;

ww_lcd_d(4) <= \lcd_d[4]~output_o\;

ww_lcd_d(3) <= \lcd_d[3]~output_o\;

ww_lcd_d(2) <= \lcd_d[2]~output_o\;

ww_lcd_d(1) <= \lcd_d[1]~output_o\;

ww_lcd_d(0) <= \lcd_d[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


