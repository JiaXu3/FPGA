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

-- DATE "05/14/2023 15:44:30"

-- 
-- Device: Altera EP4CE115F29I7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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

ENTITY 	test1 IS
    PORT (
	clk : IN std_logic;
	ok : IN std_logic;
	rmb1 : IN std_logic;
	rmb5 : IN std_logic;
	rmb10 : IN std_logic;
	reset1 : IN std_logic;
	reset : IN std_logic_vector(5 DOWNTO 0);
	commodity : IN std_logic_vector(5 DOWNTO 0);
	s : IN std_logic;
	segments0 : BUFFER std_logic_vector(6 DOWNTO 0);
	segments1 : BUFFER std_logic_vector(6 DOWNTO 0);
	segments2 : BUFFER std_logic_vector(6 DOWNTO 0);
	segments3 : BUFFER std_logic_vector(6 DOWNTO 0);
	segments4 : BUFFER std_logic_vector(6 DOWNTO 0);
	segments5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END test1;

-- Design Ports Information
-- segments0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments2[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments2[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments2[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments2[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments2[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments2[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments2[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments3[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments3[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments3[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments3[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments3[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments3[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments3[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments4[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments4[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments4[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments4[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments4[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments4[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments4[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments5[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments5[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments5[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments5[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments5[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments5[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segments5[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- commodity[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- commodity[5]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- commodity[3]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- commodity[0]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- commodity[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- commodity[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ok	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rmb10	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rmb1	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rmb5	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset1	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ok : std_logic;
SIGNAL ww_rmb1 : std_logic;
SIGNAL ww_rmb5 : std_logic;
SIGNAL ww_rmb10 : std_logic;
SIGNAL ww_reset1 : std_logic;
SIGNAL ww_reset : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_commodity : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_s : std_logic;
SIGNAL ww_segments0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segments5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segments0[0]~output_o\ : std_logic;
SIGNAL \segments0[1]~output_o\ : std_logic;
SIGNAL \segments0[2]~output_o\ : std_logic;
SIGNAL \segments0[3]~output_o\ : std_logic;
SIGNAL \segments0[4]~output_o\ : std_logic;
SIGNAL \segments0[5]~output_o\ : std_logic;
SIGNAL \segments0[6]~output_o\ : std_logic;
SIGNAL \segments1[0]~output_o\ : std_logic;
SIGNAL \segments1[1]~output_o\ : std_logic;
SIGNAL \segments1[2]~output_o\ : std_logic;
SIGNAL \segments1[3]~output_o\ : std_logic;
SIGNAL \segments1[4]~output_o\ : std_logic;
SIGNAL \segments1[5]~output_o\ : std_logic;
SIGNAL \segments1[6]~output_o\ : std_logic;
SIGNAL \segments2[0]~output_o\ : std_logic;
SIGNAL \segments2[1]~output_o\ : std_logic;
SIGNAL \segments2[2]~output_o\ : std_logic;
SIGNAL \segments2[3]~output_o\ : std_logic;
SIGNAL \segments2[4]~output_o\ : std_logic;
SIGNAL \segments2[5]~output_o\ : std_logic;
SIGNAL \segments2[6]~output_o\ : std_logic;
SIGNAL \segments3[0]~output_o\ : std_logic;
SIGNAL \segments3[1]~output_o\ : std_logic;
SIGNAL \segments3[2]~output_o\ : std_logic;
SIGNAL \segments3[3]~output_o\ : std_logic;
SIGNAL \segments3[4]~output_o\ : std_logic;
SIGNAL \segments3[5]~output_o\ : std_logic;
SIGNAL \segments3[6]~output_o\ : std_logic;
SIGNAL \segments4[0]~output_o\ : std_logic;
SIGNAL \segments4[1]~output_o\ : std_logic;
SIGNAL \segments4[2]~output_o\ : std_logic;
SIGNAL \segments4[3]~output_o\ : std_logic;
SIGNAL \segments4[4]~output_o\ : std_logic;
SIGNAL \segments4[5]~output_o\ : std_logic;
SIGNAL \segments4[6]~output_o\ : std_logic;
SIGNAL \segments5[0]~output_o\ : std_logic;
SIGNAL \segments5[1]~output_o\ : std_logic;
SIGNAL \segments5[2]~output_o\ : std_logic;
SIGNAL \segments5[3]~output_o\ : std_logic;
SIGNAL \segments5[4]~output_o\ : std_logic;
SIGNAL \segments5[5]~output_o\ : std_logic;
SIGNAL \segments5[6]~output_o\ : std_logic;
SIGNAL \commodity[0]~input_o\ : std_logic;
SIGNAL \commodity[2]~input_o\ : std_logic;
SIGNAL \commodity[5]~input_o\ : std_logic;
SIGNAL \commodity[3]~input_o\ : std_logic;
SIGNAL \Algo0|Add4~1_combout\ : std_logic;
SIGNAL \commodity[4]~input_o\ : std_logic;
SIGNAL \Algo0|Add3~0_combout\ : std_logic;
SIGNAL \Algo0|Add4~2_combout\ : std_logic;
SIGNAL \commodity[1]~input_o\ : std_logic;
SIGNAL \Algo0|Add4~3_combout\ : std_logic;
SIGNAL \Algo0|Add3~1_combout\ : std_logic;
SIGNAL \Algo0|Add4~5_combout\ : std_logic;
SIGNAL \Algo0|Add4~4_combout\ : std_logic;
SIGNAL \Algo0|Add4~0_combout\ : std_logic;
SIGNAL \decoder0|WideOr2~0_combout\ : std_logic;
SIGNAL \ok~input_o\ : std_logic;
SIGNAL \sub_ok0|d0[0]~0_combout\ : std_logic;
SIGNAL \reset[0]~input_o\ : std_logic;
SIGNAL \sub_ok0|Add0~0_combout\ : std_logic;
SIGNAL \sub_ok0|Add0~1_combout\ : std_logic;
SIGNAL \sub_ok0|Add0~2_combout\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \mux2_0|y[3]~3_combout\ : std_logic;
SIGNAL \decoder0|WideOr4~0_combout\ : std_logic;
SIGNAL \mux2_0|y[1]~1_combout\ : std_logic;
SIGNAL \mux2_0|y[0]~0_combout\ : std_logic;
SIGNAL \decoder0|WideOr3~0_combout\ : std_logic;
SIGNAL \mux2_0|y[2]~2_combout\ : std_logic;
SIGNAL \sevenseg0|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg0|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg0|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg0|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg0|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg0|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg0|WideOr0~0_combout\ : std_logic;
SIGNAL \sub_ok1|d0[0]~0_combout\ : std_logic;
SIGNAL \reset[1]~input_o\ : std_logic;
SIGNAL \sub_ok1|Add0~0_combout\ : std_logic;
SIGNAL \sub_ok1|Add0~1_combout\ : std_logic;
SIGNAL \mux2_1|y[2]~3_combout\ : std_logic;
SIGNAL \mux2_1|y[1]~1_combout\ : std_logic;
SIGNAL \mux2_1|y[1]~2_combout\ : std_logic;
SIGNAL \sub_ok1|Add0~2_combout\ : std_logic;
SIGNAL \mux2_1|y[3]~4_combout\ : std_logic;
SIGNAL \decoder0|WideOr1~0_combout\ : std_logic;
SIGNAL \mux2_1|y[0]~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr0~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rmb10~input_o\ : std_logic;
SIGNAL \rmb5~input_o\ : std_logic;
SIGNAL \rmb1~input_o\ : std_logic;
SIGNAL \money1|Selector15~0_combout\ : std_logic;
SIGNAL \money1|nextstate~0_combout\ : std_logic;
SIGNAL \money1|num[0]~6_combout\ : std_logic;
SIGNAL \reset1~input_o\ : std_logic;
SIGNAL \money1|num[0]~7\ : std_logic;
SIGNAL \money1|num[1]~8_combout\ : std_logic;
SIGNAL \money1|num[1]~9\ : std_logic;
SIGNAL \money1|num[2]~10_combout\ : std_logic;
SIGNAL \money1|num[2]~11\ : std_logic;
SIGNAL \money1|num[3]~12_combout\ : std_logic;
SIGNAL \money1|num[3]~13\ : std_logic;
SIGNAL \money1|num[4]~14_combout\ : std_logic;
SIGNAL \money1|num[4]~15\ : std_logic;
SIGNAL \money1|num[5]~16_combout\ : std_logic;
SIGNAL \money1|LessThan0~0_combout\ : std_logic;
SIGNAL \money1|LessThan0~1_combout\ : std_logic;
SIGNAL \money1|state.S0~0_combout\ : std_logic;
SIGNAL \money1|state.S0~q\ : std_logic;
SIGNAL \money1|Selector0~0_combout\ : std_logic;
SIGNAL \money1|state.S1~q\ : std_logic;
SIGNAL \money1|Selector1~0_combout\ : std_logic;
SIGNAL \money1|state.S2~q\ : std_logic;
SIGNAL \money1|Selector2~0_combout\ : std_logic;
SIGNAL \money1|state.S3~q\ : std_logic;
SIGNAL \money1|Selector3~0_combout\ : std_logic;
SIGNAL \money1|state.S4~q\ : std_logic;
SIGNAL \money1|Selector4~0_combout\ : std_logic;
SIGNAL \money1|Selector4~1_combout\ : std_logic;
SIGNAL \money1|state.S5~q\ : std_logic;
SIGNAL \money1|Selector5~0_combout\ : std_logic;
SIGNAL \money1|Selector5~1_combout\ : std_logic;
SIGNAL \money1|state.S6~q\ : std_logic;
SIGNAL \money1|nextstate~1_combout\ : std_logic;
SIGNAL \money1|Selector9~0_combout\ : std_logic;
SIGNAL \money1|Selector6~0_combout\ : std_logic;
SIGNAL \money1|Selector6~1_combout\ : std_logic;
SIGNAL \money1|state.S7~q\ : std_logic;
SIGNAL \money1|Selector7~0_combout\ : std_logic;
SIGNAL \money1|Selector7~1_combout\ : std_logic;
SIGNAL \money1|state.S8~q\ : std_logic;
SIGNAL \money1|Selector8~0_combout\ : std_logic;
SIGNAL \money1|Selector8~1_combout\ : std_logic;
SIGNAL \money1|state.S9~q\ : std_logic;
SIGNAL \money1|Selector9~1_combout\ : std_logic;
SIGNAL \money1|Selector9~2_combout\ : std_logic;
SIGNAL \money1|state.S10~q\ : std_logic;
SIGNAL \money1|Selector13~0_combout\ : std_logic;
SIGNAL \money1|Selector12~0_combout\ : std_logic;
SIGNAL \money1|Selector11~0_combout\ : std_logic;
SIGNAL \money1|Selector10~0_combout\ : std_logic;
SIGNAL \money1|Selector10~1_combout\ : std_logic;
SIGNAL \money1|Selector10~2_combout\ : std_logic;
SIGNAL \money1|state.S11~q\ : std_logic;
SIGNAL \money1|Selector11~1_combout\ : std_logic;
SIGNAL \money1|Selector11~2_combout\ : std_logic;
SIGNAL \money1|state.S12~q\ : std_logic;
SIGNAL \money1|Selector12~1_combout\ : std_logic;
SIGNAL \money1|Selector12~2_combout\ : std_logic;
SIGNAL \money1|state.S13~q\ : std_logic;
SIGNAL \money1|Selector13~1_combout\ : std_logic;
SIGNAL \money1|Selector13~2_combout\ : std_logic;
SIGNAL \money1|state.S14~q\ : std_logic;
SIGNAL \money1|Selector14~1_combout\ : std_logic;
SIGNAL \money1|Selector14~0_combout\ : std_logic;
SIGNAL \money1|Selector14~2_combout\ : std_logic;
SIGNAL \money1|state.S15~q\ : std_logic;
SIGNAL \money1|Selector15~1_combout\ : std_logic;
SIGNAL \money1|Selector15~2_combout\ : std_logic;
SIGNAL \money1|state.S16~q\ : std_logic;
SIGNAL \money1|Selector18~0_combout\ : std_logic;
SIGNAL \money1|Selector17~0_combout\ : std_logic;
SIGNAL \money1|Selector16~0_combout\ : std_logic;
SIGNAL \money1|Selector16~1_combout\ : std_logic;
SIGNAL \money1|Selector16~2_combout\ : std_logic;
SIGNAL \money1|state.S17~q\ : std_logic;
SIGNAL \money1|Selector17~1_combout\ : std_logic;
SIGNAL \money1|Selector17~2_combout\ : std_logic;
SIGNAL \money1|state.S18~q\ : std_logic;
SIGNAL \money1|Selector18~1_combout\ : std_logic;
SIGNAL \money1|Selector18~2_combout\ : std_logic;
SIGNAL \money1|state.S19~q\ : std_logic;
SIGNAL \money1|WideOr32~1_combout\ : std_logic;
SIGNAL \money1|WideOr32~0_combout\ : std_logic;
SIGNAL \money1|Selector19~0_combout\ : std_logic;
SIGNAL \money1|Selector19~1_combout\ : std_logic;
SIGNAL \money1|Selector19~2_combout\ : std_logic;
SIGNAL \money1|state.S20~q\ : std_logic;
SIGNAL \money1|Selector20~1_combout\ : std_logic;
SIGNAL \money1|Selector20~0_combout\ : std_logic;
SIGNAL \money1|Selector20~2_combout\ : std_logic;
SIGNAL \money1|state.S21~q\ : std_logic;
SIGNAL \money1|Selector21~1_combout\ : std_logic;
SIGNAL \money1|Selector29~0_combout\ : std_logic;
SIGNAL \money1|Selector22~1_combout\ : std_logic;
SIGNAL \money1|Selector30~1_combout\ : std_logic;
SIGNAL \money1|Selector30~0_combout\ : std_logic;
SIGNAL \money1|Selector30~2_combout\ : std_logic;
SIGNAL \money1|state.S31~q\ : std_logic;
SIGNAL \money1|Selector22~0_combout\ : std_logic;
SIGNAL \money1|Selector22~2_combout\ : std_logic;
SIGNAL \money1|state.S23~q\ : std_logic;
SIGNAL \money1|Selector23~1_combout\ : std_logic;
SIGNAL \money1|Selector23~0_combout\ : std_logic;
SIGNAL \money1|Selector23~2_combout\ : std_logic;
SIGNAL \money1|state.S24~q\ : std_logic;
SIGNAL \money1|Selector24~1_combout\ : std_logic;
SIGNAL \money1|Selector24~0_combout\ : std_logic;
SIGNAL \money1|Selector24~2_combout\ : std_logic;
SIGNAL \money1|state.S25~q\ : std_logic;
SIGNAL \money1|Selector25~0_combout\ : std_logic;
SIGNAL \money1|Selector25~1_combout\ : std_logic;
SIGNAL \money1|Selector25~2_combout\ : std_logic;
SIGNAL \money1|state.S26~q\ : std_logic;
SIGNAL \money1|Selector26~0_combout\ : std_logic;
SIGNAL \money1|Selector26~1_combout\ : std_logic;
SIGNAL \money1|state.S27~q\ : std_logic;
SIGNAL \money1|Selector27~0_combout\ : std_logic;
SIGNAL \money1|Selector27~1_combout\ : std_logic;
SIGNAL \money1|state.S28~q\ : std_logic;
SIGNAL \money1|Selector28~0_combout\ : std_logic;
SIGNAL \money1|Selector28~1_combout\ : std_logic;
SIGNAL \money1|state.S29~q\ : std_logic;
SIGNAL \money1|Selector29~1_combout\ : std_logic;
SIGNAL \money1|Selector29~2_combout\ : std_logic;
SIGNAL \money1|state.S30~q\ : std_logic;
SIGNAL \money1|Selector21~0_combout\ : std_logic;
SIGNAL \money1|Selector21~2_combout\ : std_logic;
SIGNAL \money1|state.S22~q\ : std_logic;
SIGNAL \money1|WideOr32~3_combout\ : std_logic;
SIGNAL \money1|WideOr32~2_combout\ : std_logic;
SIGNAL \money1|WideOr32~4_combout\ : std_logic;
SIGNAL \money1|WideOr33~0_combout\ : std_logic;
SIGNAL \money1|WideOr33~1_combout\ : std_logic;
SIGNAL \money1|WideOr33~2_combout\ : std_logic;
SIGNAL \money1|WideOr34~1_combout\ : std_logic;
SIGNAL \money1|WideOr35~1_combout\ : std_logic;
SIGNAL \money1|WideOr34~0_combout\ : std_logic;
SIGNAL \money1|WideOr31~0_combout\ : std_logic;
SIGNAL \money1|WideOr34~2_combout\ : std_logic;
SIGNAL \Algo0|Add4~6_combout\ : std_logic;
SIGNAL \money1|WideOr35~0_combout\ : std_logic;
SIGNAL \money1|WideOr35~2_combout\ : std_logic;
SIGNAL \money1|WideOr35~3_combout\ : std_logic;
SIGNAL \sub_rmb0|a1[0]~6\ : std_logic;
SIGNAL \sub_rmb0|a1[1]~8\ : std_logic;
SIGNAL \sub_rmb0|a1[2]~10\ : std_logic;
SIGNAL \sub_rmb0|a1[3]~11_combout\ : std_logic;
SIGNAL \sub_rmb0|a1[1]~7_combout\ : std_logic;
SIGNAL \money1|WideOr31~1_combout\ : std_logic;
SIGNAL \money1|WideOr31~2_combout\ : std_logic;
SIGNAL \sub_rmb0|a1[3]~12\ : std_logic;
SIGNAL \sub_rmb0|a1[4]~13_combout\ : std_logic;
SIGNAL \sub_rmb0|a1[2]~9_combout\ : std_logic;
SIGNAL \decoder1|WideOr2~0_combout\ : std_logic;
SIGNAL \sub_ok2|d0[0]~0_combout\ : std_logic;
SIGNAL \reset[2]~input_o\ : std_logic;
SIGNAL \sub_ok2|Add0~0_combout\ : std_logic;
SIGNAL \sub_ok2|Add0~1_combout\ : std_logic;
SIGNAL \sub_ok2|Add0~2_combout\ : std_logic;
SIGNAL \mux2_2|y[3]~3_combout\ : std_logic;
SIGNAL \decoder1|WideOr3~0_combout\ : std_logic;
SIGNAL \mux2_2|y[2]~2_combout\ : std_logic;
SIGNAL \decoder1|WideOr4~0_combout\ : std_logic;
SIGNAL \mux2_2|y[1]~1_combout\ : std_logic;
SIGNAL \sub_rmb0|a1[0]~5_combout\ : std_logic;
SIGNAL \mux2_2|y[0]~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr0~0_combout\ : std_logic;
SIGNAL \sub_ok3|d0[0]~0_combout\ : std_logic;
SIGNAL \reset[3]~input_o\ : std_logic;
SIGNAL \sub_ok3|Add0~0_combout\ : std_logic;
SIGNAL \sub_ok3|Add0~1_combout\ : std_logic;
SIGNAL \mux2_3|y[2]~3_combout\ : std_logic;
SIGNAL \mux2_3|y[1]~1_combout\ : std_logic;
SIGNAL \mux2_3|y[1]~2_combout\ : std_logic;
SIGNAL \sub_ok3|Add0~2_combout\ : std_logic;
SIGNAL \mux2_3|y[3]~4_combout\ : std_logic;
SIGNAL \decoder1|WideOr1~0_combout\ : std_logic;
SIGNAL \mux2_3|y[0]~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr0~0_combout\ : std_logic;
SIGNAL \decoder2|WideOr4~0_combout\ : std_logic;
SIGNAL \sub_ok4|d0[0]~0_combout\ : std_logic;
SIGNAL \reset[4]~input_o\ : std_logic;
SIGNAL \sub_ok4|Add0~0_combout\ : std_logic;
SIGNAL \mux2_4|y[1]~1_combout\ : std_logic;
SIGNAL \mux2_4|y[0]~0_combout\ : std_logic;
SIGNAL \sub_ok4|Add0~1_combout\ : std_logic;
SIGNAL \decoder2|WideOr3~0_combout\ : std_logic;
SIGNAL \mux2_4|y[2]~2_combout\ : std_logic;
SIGNAL \decoder2|WideOr2~0_combout\ : std_logic;
SIGNAL \sub_ok4|Add0~2_combout\ : std_logic;
SIGNAL \mux2_4|y[3]~3_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr0~0_combout\ : std_logic;
SIGNAL \mux2_5|y[1]~1_combout\ : std_logic;
SIGNAL \sub_ok5|d0[0]~0_combout\ : std_logic;
SIGNAL \reset[5]~input_o\ : std_logic;
SIGNAL \sub_ok5|Add0~0_combout\ : std_logic;
SIGNAL \mux2_5|y[1]~2_combout\ : std_logic;
SIGNAL \sub_ok5|Add0~1_combout\ : std_logic;
SIGNAL \sub_ok5|Add0~2_combout\ : std_logic;
SIGNAL \mux2_5|y[3]~4_combout\ : std_logic;
SIGNAL \mux2_5|y[2]~3_combout\ : std_logic;
SIGNAL \decoder2|WideOr1~0_combout\ : std_logic;
SIGNAL \mux2_5|y[0]~0_combout\ : std_logic;
SIGNAL \sevenseg5|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg5|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg5|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg5|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg5|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg5|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg5|WideOr0~0_combout\ : std_logic;
SIGNAL \money1|num\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sub_rmb0|a1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sub_ok0|d0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sub_ok5|d0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sub_ok1|d0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sub_ok2|d0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sub_ok3|d0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sub_ok4|d0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset1~input_o\ : std_logic;
SIGNAL \ALT_INV_reset[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset[0]~input_o\ : std_logic;
SIGNAL \sevenseg5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg0|ALT_INV_WideOr0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_ok <= ok;
ww_rmb1 <= rmb1;
ww_rmb5 <= rmb5;
ww_rmb10 <= rmb10;
ww_reset1 <= reset1;
ww_reset <= reset;
ww_commodity <= commodity;
ww_s <= s;
segments0 <= ww_segments0;
segments1 <= ww_segments1;
segments2 <= ww_segments2;
segments3 <= ww_segments3;
segments4 <= ww_segments4;
segments5 <= ww_segments5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset[5]~input_o\ <= NOT \reset[5]~input_o\;
\ALT_INV_reset[4]~input_o\ <= NOT \reset[4]~input_o\;
\ALT_INV_reset1~input_o\ <= NOT \reset1~input_o\;
\ALT_INV_reset[3]~input_o\ <= NOT \reset[3]~input_o\;
\ALT_INV_reset[2]~input_o\ <= NOT \reset[2]~input_o\;
\ALT_INV_reset[1]~input_o\ <= NOT \reset[1]~input_o\;
\ALT_INV_reset[0]~input_o\ <= NOT \reset[0]~input_o\;
\sevenseg5|ALT_INV_WideOr0~0_combout\ <= NOT \sevenseg5|WideOr0~0_combout\;
\sevenseg4|ALT_INV_WideOr0~0_combout\ <= NOT \sevenseg4|WideOr0~0_combout\;
\sevenseg3|ALT_INV_WideOr0~0_combout\ <= NOT \sevenseg3|WideOr0~0_combout\;
\sevenseg2|ALT_INV_WideOr0~0_combout\ <= NOT \sevenseg2|WideOr0~0_combout\;
\sevenseg1|ALT_INV_WideOr0~0_combout\ <= NOT \sevenseg1|WideOr0~0_combout\;
\sevenseg0|ALT_INV_WideOr0~0_combout\ <= NOT \sevenseg0|WideOr0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\segments0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg0|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segments0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\segments0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segments0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\segments0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segments0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\segments0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segments0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\segments0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segments0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\segments0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg0|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segments0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\segments0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segments0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\segments1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segments1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\segments1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segments1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\segments1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segments1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\segments1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segments1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\segments1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segments1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\segments1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segments1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\segments1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segments1[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\segments2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segments2[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\segments2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segments2[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\segments2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segments2[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\segments2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segments2[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\segments2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segments2[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\segments2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segments2[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\segments2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segments2[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\segments3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segments3[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\segments3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segments3[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\segments3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segments3[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\segments3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segments3[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\segments3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segments3[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\segments3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segments3[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\segments3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segments3[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\segments4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segments4[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\segments4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segments4[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\segments4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segments4[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\segments4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segments4[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\segments4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segments4[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\segments4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segments4[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\segments4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segments4[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\segments5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segments5[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\segments5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \segments5[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\segments5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \segments5[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\segments5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \segments5[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\segments5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \segments5[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\segments5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \segments5[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\segments5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg5|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \segments5[6]~output_o\);

-- Location: IOIBUF_X115_Y5_N15
\commodity[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_commodity(0),
	o => \commodity[0]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\commodity[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_commodity(2),
	o => \commodity[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\commodity[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_commodity(5),
	o => \commodity[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\commodity[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_commodity(3),
	o => \commodity[3]~input_o\);

-- Location: LCCOMB_X114_Y24_N26
\Algo0|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add4~1_combout\ = (\commodity[2]~input_o\ & (\commodity[5]~input_o\ & (\commodity[0]~input_o\ $ (!\commodity[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \commodity[0]~input_o\,
	datab => \commodity[2]~input_o\,
	datac => \commodity[5]~input_o\,
	datad => \commodity[3]~input_o\,
	combout => \Algo0|Add4~1_combout\);

-- Location: IOIBUF_X115_Y6_N15
\commodity[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_commodity(4),
	o => \commodity[4]~input_o\);

-- Location: LCCOMB_X114_Y24_N8
\Algo0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add3~0_combout\ = \commodity[4]~input_o\ $ (((\commodity[0]~input_o\ & ((\commodity[2]~input_o\) # (\commodity[3]~input_o\))) # (!\commodity[0]~input_o\ & (\commodity[2]~input_o\ & \commodity[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \commodity[0]~input_o\,
	datab => \commodity[4]~input_o\,
	datac => \commodity[2]~input_o\,
	datad => \commodity[3]~input_o\,
	combout => \Algo0|Add3~0_combout\);

-- Location: LCCOMB_X114_Y24_N22
\Algo0|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add4~2_combout\ = \Algo0|Add4~1_combout\ $ (\commodity[5]~input_o\ $ (\Algo0|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~1_combout\,
	datab => \commodity[5]~input_o\,
	datac => \Algo0|Add3~0_combout\,
	combout => \Algo0|Add4~2_combout\);

-- Location: IOIBUF_X115_Y7_N15
\commodity[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_commodity(1),
	o => \commodity[1]~input_o\);

-- Location: LCCOMB_X114_Y24_N30
\Algo0|Add4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add4~3_combout\ = (\commodity[5]~input_o\ & ((\Algo0|Add4~1_combout\) # (\Algo0|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~1_combout\,
	datab => \commodity[5]~input_o\,
	datac => \Algo0|Add3~0_combout\,
	combout => \Algo0|Add4~3_combout\);

-- Location: LCCOMB_X114_Y24_N0
\Algo0|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add3~1_combout\ = (\commodity[4]~input_o\ & ((\commodity[0]~input_o\ & ((\commodity[2]~input_o\) # (\commodity[3]~input_o\))) # (!\commodity[0]~input_o\ & (\commodity[2]~input_o\ & \commodity[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \commodity[0]~input_o\,
	datab => \commodity[4]~input_o\,
	datac => \commodity[2]~input_o\,
	datad => \commodity[3]~input_o\,
	combout => \Algo0|Add3~1_combout\);

-- Location: LCCOMB_X114_Y24_N18
\Algo0|Add4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add4~5_combout\ = (\commodity[3]~input_o\ & ((\commodity[1]~input_o\ & ((!\Algo0|Add3~1_combout\) # (!\Algo0|Add4~3_combout\))) # (!\commodity[1]~input_o\ & ((\Algo0|Add4~3_combout\) # (\Algo0|Add3~1_combout\))))) # (!\commodity[3]~input_o\ & 
-- ((\commodity[1]~input_o\ & ((\Algo0|Add4~3_combout\) # (\Algo0|Add3~1_combout\))) # (!\commodity[1]~input_o\ & (\Algo0|Add4~3_combout\ & \Algo0|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \commodity[3]~input_o\,
	datab => \commodity[1]~input_o\,
	datac => \Algo0|Add4~3_combout\,
	datad => \Algo0|Add3~1_combout\,
	combout => \Algo0|Add4~5_combout\);

-- Location: LCCOMB_X114_Y24_N24
\Algo0|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add4~4_combout\ = \commodity[3]~input_o\ $ (\commodity[1]~input_o\ $ (\Algo0|Add4~3_combout\ $ (\Algo0|Add3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \commodity[3]~input_o\,
	datab => \commodity[1]~input_o\,
	datac => \Algo0|Add4~3_combout\,
	datad => \Algo0|Add3~1_combout\,
	combout => \Algo0|Add4~4_combout\);

-- Location: LCCOMB_X114_Y24_N4
\Algo0|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add4~0_combout\ = \commodity[0]~input_o\ $ (\commodity[3]~input_o\ $ (((\commodity[2]~input_o\ & !\commodity[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \commodity[0]~input_o\,
	datab => \commodity[2]~input_o\,
	datac => \commodity[5]~input_o\,
	datad => \commodity[3]~input_o\,
	combout => \Algo0|Add4~0_combout\);

-- Location: LCCOMB_X114_Y27_N12
\decoder0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|WideOr2~0_combout\ = (\Algo0|Add4~4_combout\ & (!\Algo0|Add4~0_combout\ & (\Algo0|Add4~2_combout\ $ (!\Algo0|Add4~5_combout\)))) # (!\Algo0|Add4~4_combout\ & (!\Algo0|Add4~2_combout\ & (\Algo0|Add4~5_combout\ & \Algo0|Add4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~2_combout\,
	datab => \Algo0|Add4~5_combout\,
	datac => \Algo0|Add4~4_combout\,
	datad => \Algo0|Add4~0_combout\,
	combout => \decoder0|WideOr2~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\ok~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ok,
	o => \ok~input_o\);

-- Location: LCCOMB_X114_Y24_N28
\sub_ok0|d0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok0|d0[0]~0_combout\ = !\sub_ok0|d0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok0|d0\(0),
	combout => \sub_ok0|d0[0]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\reset[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset(0),
	o => \reset[0]~input_o\);

-- Location: FF_X114_Y24_N29
\sub_ok0|d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok0|d0[0]~0_combout\,
	clrn => \ALT_INV_reset[0]~input_o\,
	ena => \commodity[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok0|d0\(0));

-- Location: LCCOMB_X114_Y24_N10
\sub_ok0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok0|Add0~0_combout\ = \sub_ok0|d0\(1) $ (!\sub_ok0|d0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok0|d0\(1),
	datad => \sub_ok0|d0\(0),
	combout => \sub_ok0|Add0~0_combout\);

-- Location: FF_X114_Y24_N11
\sub_ok0|d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok0|Add0~0_combout\,
	clrn => \ALT_INV_reset[0]~input_o\,
	ena => \commodity[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok0|d0\(1));

-- Location: LCCOMB_X114_Y24_N6
\sub_ok0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok0|Add0~1_combout\ = \sub_ok0|d0\(2) $ (((!\sub_ok0|d0\(0) & !\sub_ok0|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub_ok0|d0\(0),
	datac => \sub_ok0|d0\(2),
	datad => \sub_ok0|d0\(1),
	combout => \sub_ok0|Add0~1_combout\);

-- Location: FF_X114_Y24_N7
\sub_ok0|d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok0|Add0~1_combout\,
	clrn => \ALT_INV_reset[0]~input_o\,
	ena => \commodity[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok0|d0\(2));

-- Location: LCCOMB_X114_Y24_N12
\sub_ok0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok0|Add0~2_combout\ = \sub_ok0|d0\(3) $ (((!\sub_ok0|d0\(2) & (!\sub_ok0|d0\(0) & !\sub_ok0|d0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok0|d0\(2),
	datab => \sub_ok0|d0\(0),
	datac => \sub_ok0|d0\(3),
	datad => \sub_ok0|d0\(1),
	combout => \sub_ok0|Add0~2_combout\);

-- Location: FF_X114_Y24_N13
\sub_ok0|d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok0|Add0~2_combout\,
	clrn => \ALT_INV_reset[0]~input_o\,
	ena => \commodity[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok0|d0\(3));

-- Location: IOIBUF_X115_Y14_N8
\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: LCCOMB_X114_Y27_N2
\mux2_0|y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_0|y[3]~3_combout\ = (\s~input_o\ & (\decoder0|WideOr2~0_combout\)) # (!\s~input_o\ & ((!\sub_ok0|d0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder0|WideOr2~0_combout\,
	datac => \sub_ok0|d0\(3),
	datad => \s~input_o\,
	combout => \mux2_0|y[3]~3_combout\);

-- Location: LCCOMB_X114_Y24_N20
\decoder0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|WideOr4~0_combout\ = (\Algo0|Add4~0_combout\ & (\Algo0|Add4~4_combout\ $ (((\Algo0|Add4~2_combout\) # (!\Algo0|Add4~5_combout\))))) # (!\Algo0|Add4~0_combout\ & ((\Algo0|Add4~2_combout\ & (!\Algo0|Add4~5_combout\ & \Algo0|Add4~4_combout\)) # 
-- (!\Algo0|Add4~2_combout\ & (\Algo0|Add4~5_combout\ & !\Algo0|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~2_combout\,
	datab => \Algo0|Add4~5_combout\,
	datac => \Algo0|Add4~0_combout\,
	datad => \Algo0|Add4~4_combout\,
	combout => \decoder0|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y24_N16
\mux2_0|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_0|y[1]~1_combout\ = (\s~input_o\ & (\decoder0|WideOr4~0_combout\)) # (!\s~input_o\ & ((\sub_ok0|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder0|WideOr4~0_combout\,
	datac => \sub_ok0|d0\(1),
	datad => \s~input_o\,
	combout => \mux2_0|y[1]~1_combout\);

-- Location: LCCOMB_X114_Y24_N14
\mux2_0|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_0|y[0]~0_combout\ = (\s~input_o\ & ((\commodity[2]~input_o\ $ (\commodity[5]~input_o\)))) # (!\s~input_o\ & (\sub_ok0|d0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok0|d0\(0),
	datab => \commodity[2]~input_o\,
	datac => \commodity[5]~input_o\,
	datad => \s~input_o\,
	combout => \mux2_0|y[0]~0_combout\);

-- Location: LCCOMB_X114_Y27_N24
\decoder0|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|WideOr3~0_combout\ = (\Algo0|Add4~2_combout\ & (!\Algo0|Add4~5_combout\ & ((\Algo0|Add4~0_combout\) # (!\Algo0|Add4~4_combout\)))) # (!\Algo0|Add4~2_combout\ & (\Algo0|Add4~5_combout\ & ((\Algo0|Add4~4_combout\) # (!\Algo0|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~2_combout\,
	datab => \Algo0|Add4~5_combout\,
	datac => \Algo0|Add4~4_combout\,
	datad => \Algo0|Add4~0_combout\,
	combout => \decoder0|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y27_N10
\mux2_0|y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_0|y[2]~2_combout\ = (\s~input_o\ & (\decoder0|WideOr3~0_combout\)) # (!\s~input_o\ & ((\sub_ok0|d0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder0|WideOr3~0_combout\,
	datac => \sub_ok0|d0\(2),
	datad => \s~input_o\,
	combout => \mux2_0|y[2]~2_combout\);

-- Location: LCCOMB_X114_Y51_N20
\sevenseg0|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg0|WideOr6~0_combout\ = (\mux2_0|y[1]~1_combout\ & (\mux2_0|y[3]~3_combout\)) # (!\mux2_0|y[1]~1_combout\ & (\mux2_0|y[2]~2_combout\ $ (((!\mux2_0|y[3]~3_combout\ & \mux2_0|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_0|y[3]~3_combout\,
	datab => \mux2_0|y[1]~1_combout\,
	datac => \mux2_0|y[0]~0_combout\,
	datad => \mux2_0|y[2]~2_combout\,
	combout => \sevenseg0|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y51_N22
\sevenseg0|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg0|WideOr5~0_combout\ = (\mux2_0|y[3]~3_combout\ & ((\mux2_0|y[1]~1_combout\) # ((\mux2_0|y[2]~2_combout\)))) # (!\mux2_0|y[3]~3_combout\ & (\mux2_0|y[2]~2_combout\ & (\mux2_0|y[1]~1_combout\ $ (\mux2_0|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_0|y[3]~3_combout\,
	datab => \mux2_0|y[1]~1_combout\,
	datac => \mux2_0|y[0]~0_combout\,
	datad => \mux2_0|y[2]~2_combout\,
	combout => \sevenseg0|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y51_N28
\sevenseg0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg0|WideOr4~0_combout\ = (\mux2_0|y[2]~2_combout\ & (\mux2_0|y[3]~3_combout\)) # (!\mux2_0|y[2]~2_combout\ & (\mux2_0|y[1]~1_combout\ & ((\mux2_0|y[3]~3_combout\) # (!\mux2_0|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_0|y[3]~3_combout\,
	datab => \mux2_0|y[1]~1_combout\,
	datac => \mux2_0|y[0]~0_combout\,
	datad => \mux2_0|y[2]~2_combout\,
	combout => \sevenseg0|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y51_N30
\sevenseg0|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg0|WideOr3~0_combout\ = (\mux2_0|y[1]~1_combout\ & ((\mux2_0|y[3]~3_combout\) # ((\mux2_0|y[0]~0_combout\ & \mux2_0|y[2]~2_combout\)))) # (!\mux2_0|y[1]~1_combout\ & (\mux2_0|y[2]~2_combout\ $ (((!\mux2_0|y[3]~3_combout\ & 
-- \mux2_0|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_0|y[3]~3_combout\,
	datab => \mux2_0|y[1]~1_combout\,
	datac => \mux2_0|y[0]~0_combout\,
	datad => \mux2_0|y[2]~2_combout\,
	combout => \sevenseg0|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y51_N16
\sevenseg0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg0|WideOr2~0_combout\ = (\mux2_0|y[0]~0_combout\) # ((\mux2_0|y[1]~1_combout\ & (\mux2_0|y[3]~3_combout\)) # (!\mux2_0|y[1]~1_combout\ & ((\mux2_0|y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_0|y[3]~3_combout\,
	datab => \mux2_0|y[1]~1_combout\,
	datac => \mux2_0|y[0]~0_combout\,
	datad => \mux2_0|y[2]~2_combout\,
	combout => \sevenseg0|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y51_N10
\sevenseg0|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg0|WideOr1~0_combout\ = (\mux2_0|y[0]~0_combout\ & ((\mux2_0|y[1]~1_combout\) # (\mux2_0|y[3]~3_combout\ $ (!\mux2_0|y[2]~2_combout\)))) # (!\mux2_0|y[0]~0_combout\ & ((\mux2_0|y[2]~2_combout\ & (\mux2_0|y[3]~3_combout\)) # 
-- (!\mux2_0|y[2]~2_combout\ & ((\mux2_0|y[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_0|y[3]~3_combout\,
	datab => \mux2_0|y[1]~1_combout\,
	datac => \mux2_0|y[0]~0_combout\,
	datad => \mux2_0|y[2]~2_combout\,
	combout => \sevenseg0|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y51_N12
\sevenseg0|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg0|WideOr0~0_combout\ = (\mux2_0|y[1]~1_combout\ & (!\mux2_0|y[3]~3_combout\ & ((!\mux2_0|y[2]~2_combout\) # (!\mux2_0|y[0]~0_combout\)))) # (!\mux2_0|y[1]~1_combout\ & (\mux2_0|y[3]~3_combout\ $ (((\mux2_0|y[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_0|y[3]~3_combout\,
	datab => \mux2_0|y[1]~1_combout\,
	datac => \mux2_0|y[0]~0_combout\,
	datad => \mux2_0|y[2]~2_combout\,
	combout => \sevenseg0|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y27_N6
\sub_ok1|d0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok1|d0[0]~0_combout\ = !\sub_ok1|d0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok1|d0\(0),
	combout => \sub_ok1|d0[0]~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\reset[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset(1),
	o => \reset[1]~input_o\);

-- Location: FF_X114_Y27_N7
\sub_ok1|d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok1|d0[0]~0_combout\,
	clrn => \ALT_INV_reset[1]~input_o\,
	ena => \commodity[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok1|d0\(0));

-- Location: LCCOMB_X114_Y27_N0
\sub_ok1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok1|Add0~0_combout\ = \sub_ok1|d0\(1) $ (!\sub_ok1|d0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok1|d0\(1),
	datad => \sub_ok1|d0\(0),
	combout => \sub_ok1|Add0~0_combout\);

-- Location: FF_X114_Y27_N1
\sub_ok1|d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok1|Add0~0_combout\,
	clrn => \ALT_INV_reset[1]~input_o\,
	ena => \commodity[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok1|d0\(1));

-- Location: LCCOMB_X114_Y27_N8
\sub_ok1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok1|Add0~1_combout\ = \sub_ok1|d0\(2) $ (((!\sub_ok1|d0\(0) & !\sub_ok1|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok1|d0\(0),
	datac => \sub_ok1|d0\(2),
	datad => \sub_ok1|d0\(1),
	combout => \sub_ok1|Add0~1_combout\);

-- Location: FF_X114_Y27_N9
\sub_ok1|d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok1|Add0~1_combout\,
	clrn => \ALT_INV_reset[1]~input_o\,
	ena => \commodity[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok1|d0\(2));

-- Location: LCCOMB_X114_Y27_N22
\mux2_1|y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_1|y[2]~3_combout\ = (\sub_ok1|d0\(2) & !\s~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok1|d0\(2),
	datad => \s~input_o\,
	combout => \mux2_1|y[2]~3_combout\);

-- Location: LCCOMB_X114_Y27_N26
\mux2_1|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_1|y[1]~1_combout\ = (\Algo0|Add4~5_combout\ & (\s~input_o\ & ((\Algo0|Add4~2_combout\) # (\Algo0|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~2_combout\,
	datab => \Algo0|Add4~5_combout\,
	datac => \Algo0|Add4~4_combout\,
	datad => \s~input_o\,
	combout => \mux2_1|y[1]~1_combout\);

-- Location: LCCOMB_X114_Y27_N30
\mux2_1|y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_1|y[1]~2_combout\ = (\mux2_1|y[1]~1_combout\) # ((\sub_ok1|d0\(1) & !\s~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok1|d0\(1),
	datac => \mux2_1|y[1]~1_combout\,
	datad => \s~input_o\,
	combout => \mux2_1|y[1]~2_combout\);

-- Location: LCCOMB_X114_Y27_N4
\sub_ok1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok1|Add0~2_combout\ = \sub_ok1|d0\(3) $ (((!\sub_ok1|d0\(0) & (!\sub_ok1|d0\(2) & !\sub_ok1|d0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok1|d0\(0),
	datab => \sub_ok1|d0\(2),
	datac => \sub_ok1|d0\(3),
	datad => \sub_ok1|d0\(1),
	combout => \sub_ok1|Add0~2_combout\);

-- Location: FF_X114_Y27_N5
\sub_ok1|d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok1|Add0~2_combout\,
	clrn => \ALT_INV_reset[1]~input_o\,
	ena => \commodity[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok1|d0\(3));

-- Location: LCCOMB_X114_Y27_N14
\mux2_1|y[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_1|y[3]~4_combout\ = (!\sub_ok1|d0\(3) & !\s~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok1|d0\(3),
	datad => \s~input_o\,
	combout => \mux2_1|y[3]~4_combout\);

-- Location: LCCOMB_X114_Y27_N16
\decoder0|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|WideOr1~0_combout\ = (\Algo0|Add4~2_combout\ & (\Algo0|Add4~4_combout\ & ((\Algo0|Add4~0_combout\) # (!\Algo0|Add4~5_combout\)))) # (!\Algo0|Add4~2_combout\ & ((\Algo0|Add4~5_combout\ & (!\Algo0|Add4~4_combout\)) # (!\Algo0|Add4~5_combout\ & 
-- (\Algo0|Add4~4_combout\ & \Algo0|Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~2_combout\,
	datab => \Algo0|Add4~5_combout\,
	datac => \Algo0|Add4~4_combout\,
	datad => \Algo0|Add4~0_combout\,
	combout => \decoder0|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y27_N28
\mux2_1|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_1|y[0]~0_combout\ = (\s~input_o\ & (\decoder0|WideOr1~0_combout\)) # (!\s~input_o\ & ((\sub_ok1|d0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder0|WideOr1~0_combout\,
	datac => \sub_ok1|d0\(0),
	datad => \s~input_o\,
	combout => \mux2_1|y[0]~0_combout\);

-- Location: LCCOMB_X114_Y27_N20
\sevenseg1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr6~0_combout\ = (\mux2_1|y[1]~2_combout\ & (((\mux2_1|y[3]~4_combout\)))) # (!\mux2_1|y[1]~2_combout\ & (\mux2_1|y[2]~3_combout\ $ (((!\mux2_1|y[3]~4_combout\ & \mux2_1|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_1|y[2]~3_combout\,
	datab => \mux2_1|y[1]~2_combout\,
	datac => \mux2_1|y[3]~4_combout\,
	datad => \mux2_1|y[0]~0_combout\,
	combout => \sevenseg1|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y26_N12
\sevenseg1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr5~0_combout\ = (\mux2_1|y[3]~4_combout\ & ((\mux2_1|y[2]~3_combout\) # ((\mux2_1|y[1]~2_combout\)))) # (!\mux2_1|y[3]~4_combout\ & (\mux2_1|y[2]~3_combout\ & (\mux2_1|y[1]~2_combout\ $ (\mux2_1|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_1|y[3]~4_combout\,
	datab => \mux2_1|y[2]~3_combout\,
	datac => \mux2_1|y[1]~2_combout\,
	datad => \mux2_1|y[0]~0_combout\,
	combout => \sevenseg1|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y26_N10
\sevenseg1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr4~0_combout\ = (\mux2_1|y[2]~3_combout\ & (\mux2_1|y[3]~4_combout\)) # (!\mux2_1|y[2]~3_combout\ & (\mux2_1|y[1]~2_combout\ & ((\mux2_1|y[3]~4_combout\) # (!\mux2_1|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_1|y[3]~4_combout\,
	datab => \mux2_1|y[2]~3_combout\,
	datac => \mux2_1|y[1]~2_combout\,
	datad => \mux2_1|y[0]~0_combout\,
	combout => \sevenseg1|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y26_N0
\sevenseg1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr3~0_combout\ = (\mux2_1|y[1]~2_combout\ & ((\mux2_1|y[3]~4_combout\) # ((\mux2_1|y[2]~3_combout\ & \mux2_1|y[0]~0_combout\)))) # (!\mux2_1|y[1]~2_combout\ & (\mux2_1|y[2]~3_combout\ $ (((!\mux2_1|y[3]~4_combout\ & 
-- \mux2_1|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_1|y[3]~4_combout\,
	datab => \mux2_1|y[2]~3_combout\,
	datac => \mux2_1|y[1]~2_combout\,
	datad => \mux2_1|y[0]~0_combout\,
	combout => \sevenseg1|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y26_N30
\sevenseg1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr2~0_combout\ = (\mux2_1|y[0]~0_combout\) # ((\mux2_1|y[1]~2_combout\ & (\mux2_1|y[3]~4_combout\)) # (!\mux2_1|y[1]~2_combout\ & ((\mux2_1|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_1|y[3]~4_combout\,
	datab => \mux2_1|y[2]~3_combout\,
	datac => \mux2_1|y[1]~2_combout\,
	datad => \mux2_1|y[0]~0_combout\,
	combout => \sevenseg1|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y26_N28
\sevenseg1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr1~0_combout\ = (\mux2_1|y[2]~3_combout\ & ((\mux2_1|y[3]~4_combout\) # ((\mux2_1|y[1]~2_combout\ & \mux2_1|y[0]~0_combout\)))) # (!\mux2_1|y[2]~3_combout\ & ((\mux2_1|y[1]~2_combout\) # ((!\mux2_1|y[3]~4_combout\ & 
-- \mux2_1|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_1|y[3]~4_combout\,
	datab => \mux2_1|y[2]~3_combout\,
	datac => \mux2_1|y[1]~2_combout\,
	datad => \mux2_1|y[0]~0_combout\,
	combout => \sevenseg1|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y27_N18
\sevenseg1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr0~0_combout\ = (\mux2_1|y[2]~3_combout\ & (!\mux2_1|y[3]~4_combout\ & ((!\mux2_1|y[0]~0_combout\) # (!\mux2_1|y[1]~2_combout\)))) # (!\mux2_1|y[2]~3_combout\ & (\mux2_1|y[1]~2_combout\ $ ((\mux2_1|y[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_1|y[2]~3_combout\,
	datab => \mux2_1|y[1]~2_combout\,
	datac => \mux2_1|y[3]~4_combout\,
	datad => \mux2_1|y[0]~0_combout\,
	combout => \sevenseg1|WideOr0~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y4_N22
\rmb10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rmb10,
	o => \rmb10~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\rmb5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rmb5,
	o => \rmb5~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\rmb1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rmb1,
	o => \rmb1~input_o\);

-- Location: LCCOMB_X108_Y12_N30
\money1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector15~0_combout\ = (!\rmb10~input_o\ & (!\rmb5~input_o\ & (\money1|state.S16~q\ & !\rmb1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S16~q\,
	datad => \rmb1~input_o\,
	combout => \money1|Selector15~0_combout\);

-- Location: LCCOMB_X108_Y12_N4
\money1|nextstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|nextstate~0_combout\ = (\rmb1~input_o\) # ((\rmb10~input_o\) # (\rmb5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datac => \rmb10~input_o\,
	datad => \rmb5~input_o\,
	combout => \money1|nextstate~0_combout\);

-- Location: LCCOMB_X113_Y12_N14
\money1|num[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|num[0]~6_combout\ = \money1|num\(0) $ (VCC)
-- \money1|num[0]~7\ = CARRY(\money1|num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|num\(0),
	datad => VCC,
	combout => \money1|num[0]~6_combout\,
	cout => \money1|num[0]~7\);

-- Location: IOIBUF_X115_Y16_N8
\reset1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset1,
	o => \reset1~input_o\);

-- Location: FF_X113_Y12_N15
\money1|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|num[0]~6_combout\,
	sclr => \money1|LessThan0~1_combout\,
	ena => \ALT_INV_reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|num\(0));

-- Location: LCCOMB_X113_Y12_N16
\money1|num[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|num[1]~8_combout\ = (\money1|num\(1) & (!\money1|num[0]~7\)) # (!\money1|num\(1) & ((\money1|num[0]~7\) # (GND)))
-- \money1|num[1]~9\ = CARRY((!\money1|num[0]~7\) # (!\money1|num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \money1|num\(1),
	datad => VCC,
	cin => \money1|num[0]~7\,
	combout => \money1|num[1]~8_combout\,
	cout => \money1|num[1]~9\);

-- Location: FF_X113_Y12_N17
\money1|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|num[1]~8_combout\,
	sclr => \money1|LessThan0~1_combout\,
	ena => \ALT_INV_reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|num\(1));

-- Location: LCCOMB_X113_Y12_N18
\money1|num[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|num[2]~10_combout\ = (\money1|num\(2) & (\money1|num[1]~9\ $ (GND))) # (!\money1|num\(2) & (!\money1|num[1]~9\ & VCC))
-- \money1|num[2]~11\ = CARRY((\money1|num\(2) & !\money1|num[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \money1|num\(2),
	datad => VCC,
	cin => \money1|num[1]~9\,
	combout => \money1|num[2]~10_combout\,
	cout => \money1|num[2]~11\);

-- Location: FF_X113_Y12_N19
\money1|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|num[2]~10_combout\,
	sclr => \money1|LessThan0~1_combout\,
	ena => \ALT_INV_reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|num\(2));

-- Location: LCCOMB_X113_Y12_N20
\money1|num[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|num[3]~12_combout\ = (\money1|num\(3) & (!\money1|num[2]~11\)) # (!\money1|num\(3) & ((\money1|num[2]~11\) # (GND)))
-- \money1|num[3]~13\ = CARRY((!\money1|num[2]~11\) # (!\money1|num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \money1|num\(3),
	datad => VCC,
	cin => \money1|num[2]~11\,
	combout => \money1|num[3]~12_combout\,
	cout => \money1|num[3]~13\);

-- Location: FF_X113_Y12_N21
\money1|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|num[3]~12_combout\,
	sclr => \money1|LessThan0~1_combout\,
	ena => \ALT_INV_reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|num\(3));

-- Location: LCCOMB_X113_Y12_N22
\money1|num[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|num[4]~14_combout\ = (\money1|num\(4) & (\money1|num[3]~13\ $ (GND))) # (!\money1|num\(4) & (!\money1|num[3]~13\ & VCC))
-- \money1|num[4]~15\ = CARRY((\money1|num\(4) & !\money1|num[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \money1|num\(4),
	datad => VCC,
	cin => \money1|num[3]~13\,
	combout => \money1|num[4]~14_combout\,
	cout => \money1|num[4]~15\);

-- Location: FF_X113_Y12_N23
\money1|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|num[4]~14_combout\,
	sclr => \money1|LessThan0~1_combout\,
	ena => \ALT_INV_reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|num\(4));

-- Location: LCCOMB_X113_Y12_N24
\money1|num[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|num[5]~16_combout\ = \money1|num[4]~15\ $ (\money1|num\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \money1|num\(5),
	cin => \money1|num[4]~15\,
	combout => \money1|num[5]~16_combout\);

-- Location: FF_X113_Y12_N25
\money1|num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|num[5]~16_combout\,
	sclr => \money1|LessThan0~1_combout\,
	ena => \ALT_INV_reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|num\(5));

-- Location: LCCOMB_X113_Y12_N2
\money1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|LessThan0~0_combout\ = (((!\money1|num\(3)) # (!\money1|num\(0))) # (!\money1|num\(1))) # (!\money1|num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|num\(2),
	datab => \money1|num\(1),
	datac => \money1|num\(0),
	datad => \money1|num\(3),
	combout => \money1|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y12_N4
\money1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|LessThan0~1_combout\ = (\money1|num\(5)) # ((\money1|num\(4) & !\money1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|num\(5),
	datac => \money1|num\(4),
	datad => \money1|LessThan0~0_combout\,
	combout => \money1|LessThan0~1_combout\);

-- Location: LCCOMB_X111_Y12_N24
\money1|state.S0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|state.S0~0_combout\ = (\money1|state.S0~q\) # ((\money1|nextstate~0_combout\ & \money1|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~0_combout\,
	datab => \money1|LessThan0~1_combout\,
	datac => \money1|state.S0~q\,
	combout => \money1|state.S0~0_combout\);

-- Location: FF_X111_Y12_N25
\money1|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|state.S0~0_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S0~q\);

-- Location: LCCOMB_X110_Y12_N6
\money1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector0~0_combout\ = (\money1|state.S1~q\ & (((\rmb1~input_o\ & !\money1|state.S0~q\)) # (!\money1|nextstate~0_combout\))) # (!\money1|state.S1~q\ & (\rmb1~input_o\ & ((!\money1|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S1~q\,
	datab => \rmb1~input_o\,
	datac => \money1|nextstate~0_combout\,
	datad => \money1|state.S0~q\,
	combout => \money1|Selector0~0_combout\);

-- Location: FF_X111_Y12_N21
\money1|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \money1|Selector0~0_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	sload => VCC,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S1~q\);

-- Location: LCCOMB_X108_Y12_N16
\money1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector1~0_combout\ = (\rmb1~input_o\ & ((\money1|state.S1~q\) # ((!\money1|nextstate~0_combout\ & \money1|state.S2~q\)))) # (!\rmb1~input_o\ & (!\money1|nextstate~0_combout\ & ((\money1|state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S1~q\,
	datad => \money1|state.S2~q\,
	combout => \money1|Selector1~0_combout\);

-- Location: FF_X112_Y12_N29
\money1|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \money1|Selector1~0_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	sload => VCC,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S2~q\);

-- Location: LCCOMB_X112_Y12_N24
\money1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector2~0_combout\ = (\rmb1~input_o\ & ((\money1|state.S2~q\) # ((!\money1|nextstate~0_combout\ & \money1|state.S3~q\)))) # (!\rmb1~input_o\ & (!\money1|nextstate~0_combout\ & (\money1|state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S3~q\,
	datad => \money1|state.S2~q\,
	combout => \money1|Selector2~0_combout\);

-- Location: FF_X112_Y12_N25
\money1|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector2~0_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S3~q\);

-- Location: LCCOMB_X110_Y12_N22
\money1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector3~0_combout\ = (\money1|state.S3~q\ & ((\rmb1~input_o\) # ((!\money1|nextstate~0_combout\ & \money1|state.S4~q\)))) # (!\money1|state.S3~q\ & (((!\money1|nextstate~0_combout\ & \money1|state.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S3~q\,
	datab => \rmb1~input_o\,
	datac => \money1|nextstate~0_combout\,
	datad => \money1|state.S4~q\,
	combout => \money1|Selector3~0_combout\);

-- Location: FF_X111_Y12_N23
\money1|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \money1|Selector3~0_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	sload => VCC,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S4~q\);

-- Location: LCCOMB_X110_Y12_N24
\money1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector4~0_combout\ = (\rmb1~input_o\ & (((\money1|state.S4~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & (!\money1|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb5~input_o\,
	datab => \money1|state.S0~q\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S4~q\,
	combout => \money1|Selector4~0_combout\);

-- Location: LCCOMB_X111_Y12_N26
\money1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector4~1_combout\ = (\money1|Selector4~0_combout\) # ((!\money1|nextstate~0_combout\ & \money1|state.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S5~q\,
	datad => \money1|Selector4~0_combout\,
	combout => \money1|Selector4~1_combout\);

-- Location: FF_X111_Y12_N27
\money1|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector4~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S5~q\);

-- Location: LCCOMB_X108_Y12_N14
\money1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector5~0_combout\ = (\rmb1~input_o\ & (((\money1|state.S5~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S5~q\,
	datad => \money1|state.S1~q\,
	combout => \money1|Selector5~0_combout\);

-- Location: LCCOMB_X112_Y12_N22
\money1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector5~1_combout\ = (\money1|Selector5~0_combout\) # ((!\money1|nextstate~0_combout\ & \money1|state.S6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S6~q\,
	datad => \money1|Selector5~0_combout\,
	combout => \money1|Selector5~1_combout\);

-- Location: FF_X112_Y12_N23
\money1|state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector5~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S6~q\);

-- Location: LCCOMB_X108_Y12_N6
\money1|nextstate~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|nextstate~1_combout\ = (!\rmb1~input_o\ & (\rmb10~input_o\ & !\rmb5~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datac => \rmb10~input_o\,
	datad => \rmb5~input_o\,
	combout => \money1|nextstate~1_combout\);

-- Location: LCCOMB_X109_Y12_N4
\money1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector9~0_combout\ = (!\rmb1~input_o\ & (!\rmb5~input_o\ & (\money1|state.S10~q\ & !\rmb10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S10~q\,
	datad => \rmb10~input_o\,
	combout => \money1|Selector9~0_combout\);

-- Location: LCCOMB_X108_Y12_N10
\money1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector6~0_combout\ = (\rmb1~input_o\ & (((\money1|state.S6~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S6~q\,
	datad => \money1|state.S2~q\,
	combout => \money1|Selector6~0_combout\);

-- Location: LCCOMB_X111_Y12_N30
\money1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector6~1_combout\ = (\money1|Selector6~0_combout\) # ((!\money1|nextstate~0_combout\ & \money1|state.S7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S7~q\,
	datad => \money1|Selector6~0_combout\,
	combout => \money1|Selector6~1_combout\);

-- Location: FF_X111_Y12_N31
\money1|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector6~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S7~q\);

-- Location: LCCOMB_X109_Y12_N10
\money1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector7~0_combout\ = (\rmb1~input_o\ & (((\money1|state.S7~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S7~q\,
	datad => \money1|state.S3~q\,
	combout => \money1|Selector7~0_combout\);

-- Location: LCCOMB_X110_Y12_N16
\money1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector7~1_combout\ = (\money1|Selector7~0_combout\) # ((!\money1|nextstate~0_combout\ & \money1|state.S8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S8~q\,
	datad => \money1|Selector7~0_combout\,
	combout => \money1|Selector7~1_combout\);

-- Location: FF_X110_Y12_N17
\money1|state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector7~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S8~q\);

-- Location: LCCOMB_X109_Y12_N18
\money1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector8~0_combout\ = (\rmb1~input_o\ & (\money1|state.S8~q\)) # (!\rmb1~input_o\ & (((\rmb5~input_o\ & \money1|state.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S8~q\,
	datac => \rmb5~input_o\,
	datad => \money1|state.S4~q\,
	combout => \money1|Selector8~0_combout\);

-- Location: LCCOMB_X111_Y12_N28
\money1|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector8~1_combout\ = (\money1|Selector8~0_combout\) # ((!\money1|nextstate~0_combout\ & \money1|state.S9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S9~q\,
	datad => \money1|Selector8~0_combout\,
	combout => \money1|Selector8~1_combout\);

-- Location: FF_X111_Y12_N29
\money1|state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector8~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S9~q\);

-- Location: LCCOMB_X108_Y12_N24
\money1|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector9~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S9~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & (\money1|state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S5~q\,
	datad => \money1|state.S9~q\,
	combout => \money1|Selector9~1_combout\);

-- Location: LCCOMB_X110_Y12_N8
\money1|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector9~2_combout\ = (\money1|Selector9~0_combout\) # ((\money1|Selector9~1_combout\) # ((!\money1|state.S0~q\ & \money1|nextstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|Selector9~0_combout\,
	datab => \money1|state.S0~q\,
	datac => \money1|nextstate~1_combout\,
	datad => \money1|Selector9~1_combout\,
	combout => \money1|Selector9~2_combout\);

-- Location: FF_X110_Y12_N9
\money1|state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector9~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S10~q\);

-- Location: LCCOMB_X114_Y12_N0
\money1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector13~0_combout\ = (!\rmb10~input_o\ & (!\rmb5~input_o\ & (!\rmb1~input_o\ & \money1|state.S14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S14~q\,
	combout => \money1|Selector13~0_combout\);

-- Location: LCCOMB_X109_Y12_N0
\money1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector12~0_combout\ = (!\rmb1~input_o\ & (!\rmb10~input_o\ & (\money1|state.S13~q\ & !\rmb5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb10~input_o\,
	datac => \money1|state.S13~q\,
	datad => \rmb5~input_o\,
	combout => \money1|Selector12~0_combout\);

-- Location: LCCOMB_X109_Y12_N20
\money1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector11~0_combout\ = (!\rmb1~input_o\ & (!\rmb5~input_o\ & (\money1|state.S12~q\ & !\rmb10~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S12~q\,
	datad => \rmb10~input_o\,
	combout => \money1|Selector11~0_combout\);

-- Location: LCCOMB_X110_Y12_N14
\money1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector10~0_combout\ = (!\rmb10~input_o\ & (!\rmb5~input_o\ & (!\rmb1~input_o\ & \money1|state.S11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S11~q\,
	combout => \money1|Selector10~0_combout\);

-- Location: LCCOMB_X110_Y12_N20
\money1|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector10~1_combout\ = (\rmb1~input_o\ & (\money1|state.S10~q\)) # (!\rmb1~input_o\ & (((\money1|state.S6~q\ & \rmb5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S10~q\,
	datac => \money1|state.S6~q\,
	datad => \rmb5~input_o\,
	combout => \money1|Selector10~1_combout\);

-- Location: LCCOMB_X110_Y12_N26
\money1|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector10~2_combout\ = (\money1|Selector10~0_combout\) # ((\money1|Selector10~1_combout\) # ((\money1|state.S1~q\ & \money1|nextstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S1~q\,
	datab => \money1|nextstate~1_combout\,
	datac => \money1|Selector10~0_combout\,
	datad => \money1|Selector10~1_combout\,
	combout => \money1|Selector10~2_combout\);

-- Location: FF_X111_Y12_N17
\money1|state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \money1|Selector10~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	sload => VCC,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S11~q\);

-- Location: LCCOMB_X109_Y12_N2
\money1|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector11~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S11~q\)))) # (!\rmb1~input_o\ & (\money1|state.S7~q\ & (\rmb5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S7~q\,
	datac => \rmb5~input_o\,
	datad => \money1|state.S11~q\,
	combout => \money1|Selector11~1_combout\);

-- Location: LCCOMB_X110_Y12_N10
\money1|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector11~2_combout\ = (\money1|Selector11~0_combout\) # ((\money1|Selector11~1_combout\) # ((\money1|state.S2~q\ & \money1|nextstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S2~q\,
	datab => \money1|Selector11~0_combout\,
	datac => \money1|nextstate~1_combout\,
	datad => \money1|Selector11~1_combout\,
	combout => \money1|Selector11~2_combout\);

-- Location: FF_X110_Y12_N11
\money1|state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector11~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S12~q\);

-- Location: LCCOMB_X109_Y12_N14
\money1|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector12~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S12~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S12~q\,
	datad => \money1|state.S8~q\,
	combout => \money1|Selector12~1_combout\);

-- Location: LCCOMB_X110_Y12_N12
\money1|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector12~2_combout\ = (\money1|Selector12~0_combout\) # ((\money1|Selector12~1_combout\) # ((\money1|state.S3~q\ & \money1|nextstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|Selector12~0_combout\,
	datab => \money1|state.S3~q\,
	datac => \money1|nextstate~1_combout\,
	datad => \money1|Selector12~1_combout\,
	combout => \money1|Selector12~2_combout\);

-- Location: FF_X110_Y12_N13
\money1|state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector12~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S13~q\);

-- Location: LCCOMB_X114_Y12_N18
\money1|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector13~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S13~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S13~q\,
	datad => \money1|state.S9~q\,
	combout => \money1|Selector13~1_combout\);

-- Location: LCCOMB_X113_Y12_N0
\money1|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector13~2_combout\ = (\money1|Selector13~0_combout\) # ((\money1|Selector13~1_combout\) # ((\money1|nextstate~1_combout\ & \money1|state.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~1_combout\,
	datab => \money1|state.S4~q\,
	datac => \money1|Selector13~0_combout\,
	datad => \money1|Selector13~1_combout\,
	combout => \money1|Selector13~2_combout\);

-- Location: FF_X113_Y12_N1
\money1|state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector13~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S14~q\);

-- Location: LCCOMB_X109_Y12_N16
\money1|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector14~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S14~q\)))) # (!\rmb1~input_o\ & (\money1|state.S10~q\ & ((\rmb5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S10~q\,
	datac => \money1|state.S14~q\,
	datad => \rmb5~input_o\,
	combout => \money1|Selector14~1_combout\);

-- Location: LCCOMB_X108_Y12_N28
\money1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector14~0_combout\ = (!\rmb1~input_o\ & (!\rmb5~input_o\ & (!\rmb10~input_o\ & \money1|state.S15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb10~input_o\,
	datad => \money1|state.S15~q\,
	combout => \money1|Selector14~0_combout\);

-- Location: LCCOMB_X109_Y12_N6
\money1|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector14~2_combout\ = (\money1|Selector14~1_combout\) # ((\money1|Selector14~0_combout\) # ((\money1|nextstate~1_combout\ & \money1|state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~1_combout\,
	datab => \money1|Selector14~1_combout\,
	datac => \money1|state.S5~q\,
	datad => \money1|Selector14~0_combout\,
	combout => \money1|Selector14~2_combout\);

-- Location: FF_X109_Y12_N7
\money1|state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector14~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S15~q\);

-- Location: LCCOMB_X108_Y12_N0
\money1|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector15~1_combout\ = (\rmb1~input_o\ & (\money1|state.S15~q\)) # (!\rmb1~input_o\ & (((\rmb5~input_o\ & \money1|state.S11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S15~q\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S11~q\,
	datad => \rmb1~input_o\,
	combout => \money1|Selector15~1_combout\);

-- Location: LCCOMB_X111_Y12_N2
\money1|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector15~2_combout\ = (\money1|Selector15~0_combout\) # ((\money1|Selector15~1_combout\) # ((\money1|state.S6~q\ & \money1|nextstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|Selector15~0_combout\,
	datab => \money1|state.S6~q\,
	datac => \money1|nextstate~1_combout\,
	datad => \money1|Selector15~1_combout\,
	combout => \money1|Selector15~2_combout\);

-- Location: FF_X111_Y12_N3
\money1|state.S16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector15~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S16~q\);

-- Location: LCCOMB_X114_Y12_N6
\money1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector18~0_combout\ = (!\rmb10~input_o\ & (!\rmb5~input_o\ & (!\rmb1~input_o\ & \money1|state.S19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S19~q\,
	combout => \money1|Selector18~0_combout\);

-- Location: LCCOMB_X114_Y12_N20
\money1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector17~0_combout\ = (!\rmb10~input_o\ & (\money1|state.S18~q\ & (!\rmb1~input_o\ & !\rmb5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \money1|state.S18~q\,
	datac => \rmb1~input_o\,
	datad => \rmb5~input_o\,
	combout => \money1|Selector17~0_combout\);

-- Location: LCCOMB_X108_Y12_N8
\money1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector16~0_combout\ = (!\rmb10~input_o\ & (!\rmb5~input_o\ & (\money1|state.S17~q\ & !\rmb1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S17~q\,
	datad => \rmb1~input_o\,
	combout => \money1|Selector16~0_combout\);

-- Location: LCCOMB_X108_Y12_N26
\money1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector16~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S16~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S16~q\,
	datad => \money1|state.S12~q\,
	combout => \money1|Selector16~1_combout\);

-- Location: LCCOMB_X111_Y12_N10
\money1|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector16~2_combout\ = (\money1|Selector16~0_combout\) # ((\money1|Selector16~1_combout\) # ((\money1|state.S7~q\ & \money1|nextstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S7~q\,
	datab => \money1|nextstate~1_combout\,
	datac => \money1|Selector16~0_combout\,
	datad => \money1|Selector16~1_combout\,
	combout => \money1|Selector16~2_combout\);

-- Location: FF_X111_Y12_N11
\money1|state.S17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector16~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S17~q\);

-- Location: LCCOMB_X114_Y12_N2
\money1|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector17~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S17~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & (\money1|state.S13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S13~q\,
	datad => \money1|state.S17~q\,
	combout => \money1|Selector17~1_combout\);

-- Location: LCCOMB_X113_Y12_N6
\money1|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector17~2_combout\ = (\money1|Selector17~0_combout\) # ((\money1|Selector17~1_combout\) # ((\money1|nextstate~1_combout\ & \money1|state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~1_combout\,
	datab => \money1|state.S8~q\,
	datac => \money1|Selector17~0_combout\,
	datad => \money1|Selector17~1_combout\,
	combout => \money1|Selector17~2_combout\);

-- Location: FF_X113_Y12_N7
\money1|state.S18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector17~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S18~q\);

-- Location: LCCOMB_X114_Y12_N4
\money1|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector18~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S18~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S18~q\,
	datad => \money1|state.S14~q\,
	combout => \money1|Selector18~1_combout\);

-- Location: LCCOMB_X113_Y12_N10
\money1|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector18~2_combout\ = (\money1|Selector18~0_combout\) # ((\money1|Selector18~1_combout\) # ((\money1|nextstate~1_combout\ & \money1|state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|Selector18~0_combout\,
	datab => \money1|nextstate~1_combout\,
	datac => \money1|state.S9~q\,
	datad => \money1|Selector18~1_combout\,
	combout => \money1|Selector18~2_combout\);

-- Location: FF_X113_Y12_N11
\money1|state.S19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector18~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S19~q\);

-- Location: LCCOMB_X112_Y12_N30
\money1|WideOr32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr32~1_combout\ = (!\money1|state.S16~q\ & (!\money1|state.S19~q\ & (!\money1|state.S17~q\ & !\money1|state.S18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S16~q\,
	datab => \money1|state.S19~q\,
	datac => \money1|state.S17~q\,
	datad => \money1|state.S18~q\,
	combout => \money1|WideOr32~1_combout\);

-- Location: LCCOMB_X112_Y12_N28
\money1|WideOr32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr32~0_combout\ = (!\money1|state.S3~q\ & (!\money1|state.S1~q\ & (!\money1|state.S2~q\ & \money1|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S3~q\,
	datab => \money1|state.S1~q\,
	datac => \money1|state.S2~q\,
	datad => \money1|state.S0~q\,
	combout => \money1|WideOr32~0_combout\);

-- Location: LCCOMB_X108_Y12_N2
\money1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector19~0_combout\ = (!\rmb10~input_o\ & (!\rmb5~input_o\ & (\money1|state.S20~q\ & !\rmb1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S20~q\,
	datad => \rmb1~input_o\,
	combout => \money1|Selector19~0_combout\);

-- Location: LCCOMB_X108_Y12_N20
\money1|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector19~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S19~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S19~q\,
	datad => \money1|state.S15~q\,
	combout => \money1|Selector19~1_combout\);

-- Location: LCCOMB_X111_Y12_N12
\money1|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector19~2_combout\ = (\money1|Selector19~0_combout\) # ((\money1|Selector19~1_combout\) # ((\money1|state.S10~q\ & \money1|nextstate~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S10~q\,
	datab => \money1|nextstate~1_combout\,
	datac => \money1|Selector19~0_combout\,
	datad => \money1|Selector19~1_combout\,
	combout => \money1|Selector19~2_combout\);

-- Location: FF_X111_Y12_N13
\money1|state.S20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector19~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S20~q\);

-- Location: LCCOMB_X108_Y12_N12
\money1|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector20~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S20~q\)))) # (!\rmb1~input_o\ & (\money1|state.S16~q\ & (\rmb5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S16~q\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S20~q\,
	datad => \rmb1~input_o\,
	combout => \money1|Selector20~1_combout\);

-- Location: LCCOMB_X109_Y12_N22
\money1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector20~0_combout\ = (!\rmb1~input_o\ & (!\rmb10~input_o\ & (!\rmb5~input_o\ & \money1|state.S21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb10~input_o\,
	datac => \rmb5~input_o\,
	datad => \money1|state.S21~q\,
	combout => \money1|Selector20~0_combout\);

-- Location: LCCOMB_X110_Y12_N2
\money1|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector20~2_combout\ = (\money1|Selector20~1_combout\) # ((\money1|Selector20~0_combout\) # ((\money1|nextstate~1_combout\ & \money1|state.S11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~1_combout\,
	datab => \money1|state.S11~q\,
	datac => \money1|Selector20~1_combout\,
	datad => \money1|Selector20~0_combout\,
	combout => \money1|Selector20~2_combout\);

-- Location: FF_X110_Y12_N3
\money1|state.S21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector20~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S21~q\);

-- Location: LCCOMB_X114_Y12_N12
\money1|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector21~1_combout\ = (!\rmb1~input_o\ & ((\rmb5~input_o\ & ((\money1|state.S17~q\))) # (!\rmb5~input_o\ & (\money1|state.S22~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S22~q\,
	datad => \money1|state.S17~q\,
	combout => \money1|Selector21~1_combout\);

-- Location: LCCOMB_X108_Y12_N18
\money1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector29~0_combout\ = (!\rmb1~input_o\ & (\money1|state.S30~q\ & ((\rmb10~input_o\) # (\rmb5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S30~q\,
	combout => \money1|Selector29~0_combout\);

-- Location: LCCOMB_X114_Y12_N8
\money1|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector22~1_combout\ = (!\rmb1~input_o\ & ((\rmb5~input_o\ & (\money1|state.S18~q\)) # (!\rmb5~input_o\ & ((\money1|state.S23~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S18~q\,
	datad => \money1|state.S23~q\,
	combout => \money1|Selector22~1_combout\);

-- Location: LCCOMB_X109_Y12_N30
\money1|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector30~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S30~q\)))) # (!\rmb1~input_o\ & (\money1|state.S26~q\ & (\rmb5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S26~q\,
	datac => \rmb5~input_o\,
	datad => \money1|state.S30~q\,
	combout => \money1|Selector30~1_combout\);

-- Location: LCCOMB_X114_Y12_N22
\money1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector30~0_combout\ = (\money1|state.S31~q\ & ((\rmb10~input_o\) # ((\rmb5~input_o\) # (\rmb1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S31~q\,
	combout => \money1|Selector30~0_combout\);

-- Location: LCCOMB_X113_Y12_N30
\money1|Selector30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector30~2_combout\ = (\money1|Selector30~1_combout\) # ((\money1|Selector30~0_combout\) # ((\money1|nextstate~1_combout\ & \money1|state.S21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~1_combout\,
	datab => \money1|state.S21~q\,
	datac => \money1|Selector30~1_combout\,
	datad => \money1|Selector30~0_combout\,
	combout => \money1|Selector30~2_combout\);

-- Location: FF_X113_Y12_N31
\money1|state.S31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector30~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S31~q\);

-- Location: LCCOMB_X114_Y12_N10
\money1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector22~0_combout\ = (\money1|nextstate~0_combout\ & (\money1|nextstate~1_combout\ & (\money1|state.S13~q\))) # (!\money1|nextstate~0_combout\ & ((\money1|state.S31~q\) # ((\money1|nextstate~1_combout\ & \money1|state.S13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~0_combout\,
	datab => \money1|nextstate~1_combout\,
	datac => \money1|state.S13~q\,
	datad => \money1|state.S31~q\,
	combout => \money1|Selector22~0_combout\);

-- Location: LCCOMB_X113_Y12_N12
\money1|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector22~2_combout\ = (\money1|Selector22~1_combout\) # ((\money1|Selector22~0_combout\) # ((\rmb1~input_o\ & \money1|state.S22~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|Selector22~1_combout\,
	datac => \money1|Selector22~0_combout\,
	datad => \money1|state.S22~q\,
	combout => \money1|Selector22~2_combout\);

-- Location: FF_X113_Y12_N13
\money1|state.S23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector22~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S23~q\);

-- Location: LCCOMB_X114_Y12_N14
\money1|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector23~1_combout\ = (!\rmb1~input_o\ & ((\rmb5~input_o\ & (\money1|state.S19~q\)) # (!\rmb5~input_o\ & ((\money1|state.S24~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S19~q\,
	datad => \money1|state.S24~q\,
	combout => \money1|Selector23~1_combout\);

-- Location: LCCOMB_X114_Y12_N16
\money1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector23~0_combout\ = (!\rmb1~input_o\ & (!\rmb5~input_o\ & (\rmb10~input_o\ & \money1|state.S14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb10~input_o\,
	datad => \money1|state.S14~q\,
	combout => \money1|Selector23~0_combout\);

-- Location: LCCOMB_X111_Y12_N14
\money1|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector23~2_combout\ = (\money1|Selector23~1_combout\) # ((\money1|Selector23~0_combout\) # ((\rmb1~input_o\ & \money1|state.S23~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S23~q\,
	datac => \money1|Selector23~1_combout\,
	datad => \money1|Selector23~0_combout\,
	combout => \money1|Selector23~2_combout\);

-- Location: FF_X111_Y12_N15
\money1|state.S24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector23~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S24~q\);

-- Location: LCCOMB_X110_Y12_N30
\money1|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector24~1_combout\ = (!\rmb1~input_o\ & ((\rmb5~input_o\ & ((\money1|state.S20~q\))) # (!\rmb5~input_o\ & (\money1|state.S25~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S25~q\,
	datad => \money1|state.S20~q\,
	combout => \money1|Selector24~1_combout\);

-- Location: LCCOMB_X109_Y12_N8
\money1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector24~0_combout\ = (!\rmb1~input_o\ & (\rmb10~input_o\ & (!\rmb5~input_o\ & \money1|state.S15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb10~input_o\,
	datac => \rmb5~input_o\,
	datad => \money1|state.S15~q\,
	combout => \money1|Selector24~0_combout\);

-- Location: LCCOMB_X110_Y12_N0
\money1|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector24~2_combout\ = (\money1|Selector24~1_combout\) # ((\money1|Selector24~0_combout\) # ((\money1|state.S24~q\ & \rmb1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S24~q\,
	datab => \rmb1~input_o\,
	datac => \money1|Selector24~1_combout\,
	datad => \money1|Selector24~0_combout\,
	combout => \money1|Selector24~2_combout\);

-- Location: FF_X111_Y12_N9
\money1|state.S25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \money1|Selector24~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	sload => VCC,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S25~q\);

-- Location: LCCOMB_X110_Y12_N4
\money1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector25~0_combout\ = (\rmb10~input_o\ & (!\rmb5~input_o\ & (!\rmb1~input_o\ & \money1|state.S16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S16~q\,
	combout => \money1|Selector25~0_combout\);

-- Location: LCCOMB_X110_Y12_N18
\money1|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector25~1_combout\ = (!\rmb1~input_o\ & ((\rmb5~input_o\ & (\money1|state.S21~q\)) # (!\rmb5~input_o\ & ((\money1|state.S26~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb5~input_o\,
	datab => \money1|state.S21~q\,
	datac => \rmb1~input_o\,
	datad => \money1|state.S26~q\,
	combout => \money1|Selector25~1_combout\);

-- Location: LCCOMB_X110_Y12_N28
\money1|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector25~2_combout\ = (\money1|Selector25~0_combout\) # ((\money1|Selector25~1_combout\) # ((\rmb1~input_o\ & \money1|state.S25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S25~q\,
	datac => \money1|Selector25~0_combout\,
	datad => \money1|Selector25~1_combout\,
	combout => \money1|Selector25~2_combout\);

-- Location: FF_X112_Y12_N17
\money1|state.S26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \money1|Selector25~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	sload => VCC,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S26~q\);

-- Location: LCCOMB_X114_Y12_N24
\money1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector26~0_combout\ = (\rmb5~input_o\ & (((\money1|state.S22~q\)))) # (!\rmb5~input_o\ & (\rmb10~input_o\ & ((\money1|state.S17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S22~q\,
	datad => \money1|state.S17~q\,
	combout => \money1|Selector26~0_combout\);

-- Location: LCCOMB_X113_Y12_N26
\money1|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector26~1_combout\ = (\rmb1~input_o\ & (\money1|state.S26~q\)) # (!\rmb1~input_o\ & (((\money1|state.S27~q\) # (\money1|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S26~q\,
	datab => \rmb1~input_o\,
	datac => \money1|state.S27~q\,
	datad => \money1|Selector26~0_combout\,
	combout => \money1|Selector26~1_combout\);

-- Location: FF_X113_Y12_N27
\money1|state.S27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector26~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S27~q\);

-- Location: LCCOMB_X114_Y12_N28
\money1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector27~0_combout\ = (\rmb5~input_o\ & (((\money1|state.S23~q\)))) # (!\rmb5~input_o\ & (\rmb10~input_o\ & (\money1|state.S18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S18~q\,
	datad => \money1|state.S23~q\,
	combout => \money1|Selector27~0_combout\);

-- Location: LCCOMB_X114_Y12_N26
\money1|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector27~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S27~q\)))) # (!\rmb1~input_o\ & ((\money1|state.S28~q\) # ((\money1|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S28~q\,
	datac => \money1|state.S27~q\,
	datad => \money1|Selector27~0_combout\,
	combout => \money1|Selector27~1_combout\);

-- Location: FF_X111_Y12_N1
\money1|state.S28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \money1|Selector27~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	sload => VCC,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S28~q\);

-- Location: LCCOMB_X114_Y12_N30
\money1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector28~0_combout\ = (\rmb5~input_o\ & (((\money1|state.S24~q\)))) # (!\rmb5~input_o\ & (\rmb10~input_o\ & (\money1|state.S19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb10~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S19~q\,
	datad => \money1|state.S24~q\,
	combout => \money1|Selector28~0_combout\);

-- Location: LCCOMB_X111_Y12_N18
\money1|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector28~1_combout\ = (\rmb1~input_o\ & (\money1|state.S28~q\)) # (!\rmb1~input_o\ & (((\money1|state.S29~q\) # (\money1|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S28~q\,
	datab => \rmb1~input_o\,
	datac => \money1|state.S29~q\,
	datad => \money1|Selector28~0_combout\,
	combout => \money1|Selector28~1_combout\);

-- Location: FF_X111_Y12_N19
\money1|state.S29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector28~1_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S29~q\);

-- Location: LCCOMB_X109_Y12_N12
\money1|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector29~1_combout\ = (\rmb1~input_o\ & (((\money1|state.S29~q\)))) # (!\rmb1~input_o\ & (\rmb5~input_o\ & ((\money1|state.S25~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \rmb5~input_o\,
	datac => \money1|state.S29~q\,
	datad => \money1|state.S25~q\,
	combout => \money1|Selector29~1_combout\);

-- Location: LCCOMB_X109_Y12_N24
\money1|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector29~2_combout\ = (\money1|Selector29~0_combout\) # ((\money1|Selector29~1_combout\) # ((\money1|nextstate~1_combout\ & \money1|state.S20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~1_combout\,
	datab => \money1|Selector29~0_combout\,
	datac => \money1|state.S20~q\,
	datad => \money1|Selector29~1_combout\,
	combout => \money1|Selector29~2_combout\);

-- Location: FF_X109_Y12_N25
\money1|state.S30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector29~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S30~q\);

-- Location: LCCOMB_X109_Y12_N26
\money1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector21~0_combout\ = (\money1|nextstate~1_combout\ & ((\money1|state.S12~q\) # ((!\money1|nextstate~0_combout\ & \money1|state.S30~q\)))) # (!\money1|nextstate~1_combout\ & (!\money1|nextstate~0_combout\ & ((\money1|state.S30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|nextstate~1_combout\,
	datab => \money1|nextstate~0_combout\,
	datac => \money1|state.S12~q\,
	datad => \money1|state.S30~q\,
	combout => \money1|Selector21~0_combout\);

-- Location: LCCOMB_X113_Y12_N8
\money1|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|Selector21~2_combout\ = (\money1|Selector21~1_combout\) # ((\money1|Selector21~0_combout\) # ((\rmb1~input_o\ & \money1|state.S21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rmb1~input_o\,
	datab => \money1|state.S21~q\,
	datac => \money1|Selector21~1_combout\,
	datad => \money1|Selector21~0_combout\,
	combout => \money1|Selector21~2_combout\);

-- Location: FF_X113_Y12_N9
\money1|state.S22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \money1|Selector21~2_combout\,
	clrn => \ALT_INV_reset1~input_o\,
	ena => \money1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \money1|state.S22~q\);

-- Location: LCCOMB_X112_Y12_N26
\money1|WideOr32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr32~3_combout\ = (\money1|state.S20~q\) # ((\money1|state.S22~q\) # ((\money1|state.S23~q\) # (\money1|state.S21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S20~q\,
	datab => \money1|state.S22~q\,
	datac => \money1|state.S23~q\,
	datad => \money1|state.S21~q\,
	combout => \money1|WideOr32~3_combout\);

-- Location: LCCOMB_X111_Y12_N22
\money1|WideOr32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr32~2_combout\ = (\money1|state.S5~q\) # ((\money1|state.S7~q\) # ((\money1|state.S4~q\) # (\money1|state.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S5~q\,
	datab => \money1|state.S7~q\,
	datac => \money1|state.S4~q\,
	datad => \money1|state.S6~q\,
	combout => \money1|WideOr32~2_combout\);

-- Location: LCCOMB_X112_Y12_N0
\money1|WideOr32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr32~4_combout\ = (((\money1|WideOr32~3_combout\) # (\money1|WideOr32~2_combout\)) # (!\money1|WideOr32~0_combout\)) # (!\money1|WideOr32~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr32~1_combout\,
	datab => \money1|WideOr32~0_combout\,
	datac => \money1|WideOr32~3_combout\,
	datad => \money1|WideOr32~2_combout\,
	combout => \money1|WideOr32~4_combout\);

-- Location: LCCOMB_X111_Y12_N16
\money1|WideOr33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr33~0_combout\ = (\money1|state.S8~q\) # ((\money1|state.S9~q\) # ((\money1|state.S11~q\) # (\money1|state.S10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S8~q\,
	datab => \money1|state.S9~q\,
	datac => \money1|state.S11~q\,
	datad => \money1|state.S10~q\,
	combout => \money1|WideOr33~0_combout\);

-- Location: LCCOMB_X113_Y12_N28
\money1|WideOr33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr33~1_combout\ = (\money1|state.S26~q\) # ((\money1|state.S27~q\) # ((\money1|state.S24~q\) # (\money1|state.S25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S26~q\,
	datab => \money1|state.S27~q\,
	datac => \money1|state.S24~q\,
	datad => \money1|state.S25~q\,
	combout => \money1|WideOr33~1_combout\);

-- Location: LCCOMB_X112_Y12_N20
\money1|WideOr33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr33~2_combout\ = (((\money1|WideOr33~0_combout\) # (\money1|WideOr33~1_combout\)) # (!\money1|WideOr32~0_combout\)) # (!\money1|WideOr32~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr32~1_combout\,
	datab => \money1|WideOr32~0_combout\,
	datac => \money1|WideOr33~0_combout\,
	datad => \money1|WideOr33~1_combout\,
	combout => \money1|WideOr33~2_combout\);

-- Location: LCCOMB_X111_Y12_N8
\money1|WideOr34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr34~1_combout\ = (\money1|state.S17~q\) # ((\money1|state.S29~q\) # ((\money1|state.S25~q\) # (\money1|state.S21~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S17~q\,
	datab => \money1|state.S29~q\,
	datac => \money1|state.S25~q\,
	datad => \money1|state.S21~q\,
	combout => \money1|WideOr34~1_combout\);

-- Location: LCCOMB_X111_Y12_N0
\money1|WideOr35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr35~1_combout\ = (!\money1|state.S20~q\ & (!\money1|state.S24~q\ & (!\money1|state.S28~q\ & !\money1|state.S16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S20~q\,
	datab => \money1|state.S24~q\,
	datac => \money1|state.S28~q\,
	datad => \money1|state.S16~q\,
	combout => \money1|WideOr35~1_combout\);

-- Location: LCCOMB_X111_Y12_N4
\money1|WideOr34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr34~0_combout\ = (!\money1|state.S4~q\ & (\money1|state.S0~q\ & (!\money1|state.S8~q\ & !\money1|state.S12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S4~q\,
	datab => \money1|state.S0~q\,
	datac => \money1|state.S8~q\,
	datad => \money1|state.S12~q\,
	combout => \money1|WideOr34~0_combout\);

-- Location: LCCOMB_X111_Y12_N20
\money1|WideOr31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr31~0_combout\ = (!\money1|state.S5~q\ & (!\money1|state.S9~q\ & (!\money1|state.S1~q\ & !\money1|state.S13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S5~q\,
	datab => \money1|state.S9~q\,
	datac => \money1|state.S1~q\,
	datad => \money1|state.S13~q\,
	combout => \money1|WideOr31~0_combout\);

-- Location: LCCOMB_X111_Y12_N6
\money1|WideOr34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr34~2_combout\ = (\money1|WideOr34~1_combout\) # (((!\money1|WideOr31~0_combout\) # (!\money1|WideOr34~0_combout\)) # (!\money1|WideOr35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr34~1_combout\,
	datab => \money1|WideOr35~1_combout\,
	datac => \money1|WideOr34~0_combout\,
	datad => \money1|WideOr31~0_combout\,
	combout => \money1|WideOr34~2_combout\);

-- Location: LCCOMB_X112_Y13_N4
\Algo0|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Algo0|Add4~6_combout\ = \commodity[2]~input_o\ $ (\commodity[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \commodity[2]~input_o\,
	datad => \commodity[5]~input_o\,
	combout => \Algo0|Add4~6_combout\);

-- Location: LCCOMB_X112_Y12_N4
\money1|WideOr35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr35~0_combout\ = (!\money1|state.S6~q\ & (!\money1|state.S2~q\ & (!\money1|state.S14~q\ & !\money1|state.S10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S6~q\,
	datab => \money1|state.S2~q\,
	datac => \money1|state.S14~q\,
	datad => \money1|state.S10~q\,
	combout => \money1|WideOr35~0_combout\);

-- Location: LCCOMB_X112_Y12_N16
\money1|WideOr35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr35~2_combout\ = (!\money1|state.S18~q\ & (!\money1|state.S22~q\ & (!\money1|state.S26~q\ & !\money1|state.S30~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S18~q\,
	datab => \money1|state.S22~q\,
	datac => \money1|state.S26~q\,
	datad => \money1|state.S30~q\,
	combout => \money1|WideOr35~2_combout\);

-- Location: LCCOMB_X112_Y12_N18
\money1|WideOr35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr35~3_combout\ = (\money1|WideOr35~1_combout\ & (\money1|WideOr35~0_combout\ & (\money1|WideOr34~0_combout\ & \money1|WideOr35~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr35~1_combout\,
	datab => \money1|WideOr35~0_combout\,
	datac => \money1|WideOr34~0_combout\,
	datad => \money1|WideOr35~2_combout\,
	combout => \money1|WideOr35~3_combout\);

-- Location: LCCOMB_X112_Y12_N6
\sub_rmb0|a1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_rmb0|a1[0]~5_combout\ = (\Algo0|Add4~6_combout\ & (\money1|WideOr35~3_combout\ $ (VCC))) # (!\Algo0|Add4~6_combout\ & ((\money1|WideOr35~3_combout\) # (GND)))
-- \sub_rmb0|a1[0]~6\ = CARRY((\money1|WideOr35~3_combout\) # (!\Algo0|Add4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~6_combout\,
	datab => \money1|WideOr35~3_combout\,
	datad => VCC,
	combout => \sub_rmb0|a1[0]~5_combout\,
	cout => \sub_rmb0|a1[0]~6\);

-- Location: LCCOMB_X112_Y12_N8
\sub_rmb0|a1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_rmb0|a1[1]~7_combout\ = (\Algo0|Add4~0_combout\ & ((\money1|WideOr34~2_combout\ & ((\sub_rmb0|a1[0]~6\) # (GND))) # (!\money1|WideOr34~2_combout\ & (!\sub_rmb0|a1[0]~6\)))) # (!\Algo0|Add4~0_combout\ & ((\money1|WideOr34~2_combout\ & 
-- (!\sub_rmb0|a1[0]~6\)) # (!\money1|WideOr34~2_combout\ & (\sub_rmb0|a1[0]~6\ & VCC))))
-- \sub_rmb0|a1[1]~8\ = CARRY((\Algo0|Add4~0_combout\ & ((\money1|WideOr34~2_combout\) # (!\sub_rmb0|a1[0]~6\))) # (!\Algo0|Add4~0_combout\ & (\money1|WideOr34~2_combout\ & !\sub_rmb0|a1[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~0_combout\,
	datab => \money1|WideOr34~2_combout\,
	datad => VCC,
	cin => \sub_rmb0|a1[0]~6\,
	combout => \sub_rmb0|a1[1]~7_combout\,
	cout => \sub_rmb0|a1[1]~8\);

-- Location: LCCOMB_X112_Y12_N10
\sub_rmb0|a1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_rmb0|a1[2]~9_combout\ = ((\Algo0|Add4~2_combout\ $ (\money1|WideOr33~2_combout\ $ (!\sub_rmb0|a1[1]~8\)))) # (GND)
-- \sub_rmb0|a1[2]~10\ = CARRY((\Algo0|Add4~2_combout\ & (!\money1|WideOr33~2_combout\ & !\sub_rmb0|a1[1]~8\)) # (!\Algo0|Add4~2_combout\ & ((!\sub_rmb0|a1[1]~8\) # (!\money1|WideOr33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~2_combout\,
	datab => \money1|WideOr33~2_combout\,
	datad => VCC,
	cin => \sub_rmb0|a1[1]~8\,
	combout => \sub_rmb0|a1[2]~9_combout\,
	cout => \sub_rmb0|a1[2]~10\);

-- Location: LCCOMB_X112_Y12_N12
\sub_rmb0|a1[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_rmb0|a1[3]~11_combout\ = (\Algo0|Add4~4_combout\ & ((\money1|WideOr32~4_combout\ & ((\sub_rmb0|a1[2]~10\) # (GND))) # (!\money1|WideOr32~4_combout\ & (!\sub_rmb0|a1[2]~10\)))) # (!\Algo0|Add4~4_combout\ & ((\money1|WideOr32~4_combout\ & 
-- (!\sub_rmb0|a1[2]~10\)) # (!\money1|WideOr32~4_combout\ & (\sub_rmb0|a1[2]~10\ & VCC))))
-- \sub_rmb0|a1[3]~12\ = CARRY((\Algo0|Add4~4_combout\ & ((\money1|WideOr32~4_combout\) # (!\sub_rmb0|a1[2]~10\))) # (!\Algo0|Add4~4_combout\ & (\money1|WideOr32~4_combout\ & !\sub_rmb0|a1[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Algo0|Add4~4_combout\,
	datab => \money1|WideOr32~4_combout\,
	datad => VCC,
	cin => \sub_rmb0|a1[2]~10\,
	combout => \sub_rmb0|a1[3]~11_combout\,
	cout => \sub_rmb0|a1[3]~12\);

-- Location: FF_X112_Y12_N13
\sub_rmb0|a1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_rmb0|a1[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_rmb0|a1\(3));

-- Location: FF_X112_Y12_N9
\sub_rmb0|a1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_rmb0|a1[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_rmb0|a1\(1));

-- Location: LCCOMB_X109_Y12_N28
\money1|WideOr31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr31~1_combout\ = (\money1|state.S15~q\) # ((\money1|state.S7~q\) # ((\money1|state.S11~q\) # (\money1|state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|state.S15~q\,
	datab => \money1|state.S7~q\,
	datac => \money1|state.S11~q\,
	datad => \money1|state.S3~q\,
	combout => \money1|WideOr31~1_combout\);

-- Location: LCCOMB_X112_Y12_N2
\money1|WideOr31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \money1|WideOr31~2_combout\ = (\money1|WideOr31~1_combout\) # (((!\money1|WideOr31~0_combout\) # (!\money1|WideOr34~0_combout\)) # (!\money1|WideOr35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr31~1_combout\,
	datab => \money1|WideOr35~0_combout\,
	datac => \money1|WideOr34~0_combout\,
	datad => \money1|WideOr31~0_combout\,
	combout => \money1|WideOr31~2_combout\);

-- Location: LCCOMB_X112_Y12_N14
\sub_rmb0|a1[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_rmb0|a1[4]~13_combout\ = \Algo0|Add4~5_combout\ $ (\sub_rmb0|a1[3]~12\ $ (!\money1|WideOr31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Algo0|Add4~5_combout\,
	datad => \money1|WideOr31~2_combout\,
	cin => \sub_rmb0|a1[3]~12\,
	combout => \sub_rmb0|a1[4]~13_combout\);

-- Location: FF_X112_Y12_N15
\sub_rmb0|a1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_rmb0|a1[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_rmb0|a1\(4));

-- Location: FF_X112_Y12_N11
\sub_rmb0|a1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_rmb0|a1[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_rmb0|a1\(2));

-- Location: LCCOMB_X111_Y24_N22
\decoder1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|WideOr2~0_combout\ = (\sub_rmb0|a1\(3) & (!\sub_rmb0|a1\(1) & (\sub_rmb0|a1\(4) $ (!\sub_rmb0|a1\(2))))) # (!\sub_rmb0|a1\(3) & (\sub_rmb0|a1\(1) & (\sub_rmb0|a1\(4) & !\sub_rmb0|a1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_rmb0|a1\(3),
	datab => \sub_rmb0|a1\(1),
	datac => \sub_rmb0|a1\(4),
	datad => \sub_rmb0|a1\(2),
	combout => \decoder1|WideOr2~0_combout\);

-- Location: LCCOMB_X111_Y24_N12
\sub_ok2|d0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok2|d0[0]~0_combout\ = !\sub_ok2|d0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok2|d0\(0),
	combout => \sub_ok2|d0[0]~0_combout\);

-- Location: IOIBUF_X115_Y15_N8
\reset[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset(2),
	o => \reset[2]~input_o\);

-- Location: FF_X111_Y24_N13
\sub_ok2|d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok2|d0[0]~0_combout\,
	clrn => \ALT_INV_reset[2]~input_o\,
	ena => \commodity[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok2|d0\(0));

-- Location: LCCOMB_X111_Y24_N28
\sub_ok2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok2|Add0~0_combout\ = \sub_ok2|d0\(1) $ (!\sub_ok2|d0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok2|d0\(1),
	datad => \sub_ok2|d0\(0),
	combout => \sub_ok2|Add0~0_combout\);

-- Location: FF_X111_Y24_N29
\sub_ok2|d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok2|Add0~0_combout\,
	clrn => \ALT_INV_reset[2]~input_o\,
	ena => \commodity[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok2|d0\(1));

-- Location: LCCOMB_X111_Y24_N18
\sub_ok2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok2|Add0~1_combout\ = \sub_ok2|d0\(2) $ (((!\sub_ok2|d0\(0) & !\sub_ok2|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok2|d0\(0),
	datac => \sub_ok2|d0\(2),
	datad => \sub_ok2|d0\(1),
	combout => \sub_ok2|Add0~1_combout\);

-- Location: FF_X111_Y24_N19
\sub_ok2|d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok2|Add0~1_combout\,
	clrn => \ALT_INV_reset[2]~input_o\,
	ena => \commodity[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok2|d0\(2));

-- Location: LCCOMB_X111_Y24_N4
\sub_ok2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok2|Add0~2_combout\ = \sub_ok2|d0\(3) $ (((!\sub_ok2|d0\(0) & (!\sub_ok2|d0\(2) & !\sub_ok2|d0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok2|d0\(0),
	datab => \sub_ok2|d0\(2),
	datac => \sub_ok2|d0\(3),
	datad => \sub_ok2|d0\(1),
	combout => \sub_ok2|Add0~2_combout\);

-- Location: FF_X111_Y24_N5
\sub_ok2|d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok2|Add0~2_combout\,
	clrn => \ALT_INV_reset[2]~input_o\,
	ena => \commodity[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok2|d0\(3));

-- Location: LCCOMB_X111_Y24_N30
\mux2_2|y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_2|y[3]~3_combout\ = (\s~input_o\ & (\decoder1|WideOr2~0_combout\)) # (!\s~input_o\ & ((!\sub_ok2|d0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder1|WideOr2~0_combout\,
	datab => \s~input_o\,
	datac => \sub_ok2|d0\(3),
	combout => \mux2_2|y[3]~3_combout\);

-- Location: LCCOMB_X111_Y24_N8
\decoder1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|WideOr3~0_combout\ = (\sub_rmb0|a1\(4) & (!\sub_rmb0|a1\(2) & ((\sub_rmb0|a1\(3)) # (!\sub_rmb0|a1\(1))))) # (!\sub_rmb0|a1\(4) & (\sub_rmb0|a1\(2) & ((\sub_rmb0|a1\(1)) # (!\sub_rmb0|a1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_rmb0|a1\(3),
	datab => \sub_rmb0|a1\(1),
	datac => \sub_rmb0|a1\(4),
	datad => \sub_rmb0|a1\(2),
	combout => \decoder1|WideOr3~0_combout\);

-- Location: LCCOMB_X111_Y24_N20
\mux2_2|y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_2|y[2]~2_combout\ = (\s~input_o\ & ((\decoder1|WideOr3~0_combout\))) # (!\s~input_o\ & (\sub_ok2|d0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok2|d0\(2),
	datab => \s~input_o\,
	datac => \decoder1|WideOr3~0_combout\,
	combout => \mux2_2|y[2]~2_combout\);

-- Location: LCCOMB_X111_Y24_N26
\decoder1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|WideOr4~0_combout\ = (\sub_rmb0|a1\(3) & ((\sub_rmb0|a1\(1) & (\sub_rmb0|a1\(4) & !\sub_rmb0|a1\(2))) # (!\sub_rmb0|a1\(1) & (!\sub_rmb0|a1\(4) & \sub_rmb0|a1\(2))))) # (!\sub_rmb0|a1\(3) & (\sub_rmb0|a1\(1) $ (((\sub_rmb0|a1\(4) & 
-- !\sub_rmb0|a1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_rmb0|a1\(3),
	datab => \sub_rmb0|a1\(1),
	datac => \sub_rmb0|a1\(4),
	datad => \sub_rmb0|a1\(2),
	combout => \decoder1|WideOr4~0_combout\);

-- Location: LCCOMB_X111_Y24_N14
\mux2_2|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_2|y[1]~1_combout\ = (\s~input_o\ & (\decoder1|WideOr4~0_combout\)) # (!\s~input_o\ & ((\sub_ok2|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder1|WideOr4~0_combout\,
	datac => \s~input_o\,
	datad => \sub_ok2|d0\(1),
	combout => \mux2_2|y[1]~1_combout\);

-- Location: FF_X112_Y12_N7
\sub_rmb0|a1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_rmb0|a1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_rmb0|a1\(0));

-- Location: LCCOMB_X111_Y16_N16
\mux2_2|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_2|y[0]~0_combout\ = (\s~input_o\ & (\sub_rmb0|a1\(0))) # (!\s~input_o\ & ((\sub_ok2|d0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_rmb0|a1\(0),
	datac => \sub_ok2|d0\(0),
	datad => \s~input_o\,
	combout => \mux2_2|y[0]~0_combout\);

-- Location: LCCOMB_X95_Y4_N0
\sevenseg2|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr6~0_combout\ = (\mux2_2|y[1]~1_combout\ & (\mux2_2|y[3]~3_combout\)) # (!\mux2_2|y[1]~1_combout\ & (\mux2_2|y[2]~2_combout\ $ (((!\mux2_2|y[3]~3_combout\ & \mux2_2|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_2|y[3]~3_combout\,
	datab => \mux2_2|y[2]~2_combout\,
	datac => \mux2_2|y[1]~1_combout\,
	datad => \mux2_2|y[0]~0_combout\,
	combout => \sevenseg2|WideOr6~0_combout\);

-- Location: LCCOMB_X95_Y4_N10
\sevenseg2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr5~0_combout\ = (\mux2_2|y[3]~3_combout\ & ((\mux2_2|y[2]~2_combout\) # ((\mux2_2|y[1]~1_combout\)))) # (!\mux2_2|y[3]~3_combout\ & (\mux2_2|y[2]~2_combout\ & (\mux2_2|y[1]~1_combout\ $ (\mux2_2|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_2|y[3]~3_combout\,
	datab => \mux2_2|y[2]~2_combout\,
	datac => \mux2_2|y[1]~1_combout\,
	datad => \mux2_2|y[0]~0_combout\,
	combout => \sevenseg2|WideOr5~0_combout\);

-- Location: LCCOMB_X95_Y4_N28
\sevenseg2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr4~0_combout\ = (\mux2_2|y[2]~2_combout\ & (\mux2_2|y[3]~3_combout\)) # (!\mux2_2|y[2]~2_combout\ & (\mux2_2|y[1]~1_combout\ & ((\mux2_2|y[3]~3_combout\) # (!\mux2_2|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_2|y[3]~3_combout\,
	datab => \mux2_2|y[2]~2_combout\,
	datac => \mux2_2|y[1]~1_combout\,
	datad => \mux2_2|y[0]~0_combout\,
	combout => \sevenseg2|WideOr4~0_combout\);

-- Location: LCCOMB_X95_Y4_N14
\sevenseg2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr3~0_combout\ = (\mux2_2|y[1]~1_combout\ & ((\mux2_2|y[3]~3_combout\) # ((\mux2_2|y[2]~2_combout\ & \mux2_2|y[0]~0_combout\)))) # (!\mux2_2|y[1]~1_combout\ & (\mux2_2|y[2]~2_combout\ $ (((!\mux2_2|y[3]~3_combout\ & 
-- \mux2_2|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_2|y[3]~3_combout\,
	datab => \mux2_2|y[2]~2_combout\,
	datac => \mux2_2|y[1]~1_combout\,
	datad => \mux2_2|y[0]~0_combout\,
	combout => \sevenseg2|WideOr3~0_combout\);

-- Location: LCCOMB_X95_Y4_N12
\sevenseg2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr2~0_combout\ = (\mux2_2|y[0]~0_combout\) # ((\mux2_2|y[1]~1_combout\ & (\mux2_2|y[3]~3_combout\)) # (!\mux2_2|y[1]~1_combout\ & ((\mux2_2|y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_2|y[3]~3_combout\,
	datab => \mux2_2|y[2]~2_combout\,
	datac => \mux2_2|y[1]~1_combout\,
	datad => \mux2_2|y[0]~0_combout\,
	combout => \sevenseg2|WideOr2~0_combout\);

-- Location: LCCOMB_X95_Y4_N22
\sevenseg2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr1~0_combout\ = (\mux2_2|y[2]~2_combout\ & ((\mux2_2|y[3]~3_combout\) # ((\mux2_2|y[1]~1_combout\ & \mux2_2|y[0]~0_combout\)))) # (!\mux2_2|y[2]~2_combout\ & ((\mux2_2|y[1]~1_combout\) # ((!\mux2_2|y[3]~3_combout\ & 
-- \mux2_2|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_2|y[3]~3_combout\,
	datab => \mux2_2|y[2]~2_combout\,
	datac => \mux2_2|y[1]~1_combout\,
	datad => \mux2_2|y[0]~0_combout\,
	combout => \sevenseg2|WideOr1~0_combout\);

-- Location: LCCOMB_X95_Y4_N24
\sevenseg2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr0~0_combout\ = (\mux2_2|y[2]~2_combout\ & (!\mux2_2|y[3]~3_combout\ & ((!\mux2_2|y[0]~0_combout\) # (!\mux2_2|y[1]~1_combout\)))) # (!\mux2_2|y[2]~2_combout\ & (\mux2_2|y[3]~3_combout\ $ ((\mux2_2|y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_2|y[3]~3_combout\,
	datab => \mux2_2|y[2]~2_combout\,
	datac => \mux2_2|y[1]~1_combout\,
	datad => \mux2_2|y[0]~0_combout\,
	combout => \sevenseg2|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y31_N12
\sub_ok3|d0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok3|d0[0]~0_combout\ = !\sub_ok3|d0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok3|d0\(0),
	combout => \sub_ok3|d0[0]~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\reset[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset(3),
	o => \reset[3]~input_o\);

-- Location: FF_X114_Y31_N13
\sub_ok3|d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok3|d0[0]~0_combout\,
	clrn => \ALT_INV_reset[3]~input_o\,
	ena => \commodity[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok3|d0\(0));

-- Location: LCCOMB_X114_Y31_N28
\sub_ok3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok3|Add0~0_combout\ = \sub_ok3|d0\(1) $ (!\sub_ok3|d0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok3|d0\(1),
	datad => \sub_ok3|d0\(0),
	combout => \sub_ok3|Add0~0_combout\);

-- Location: FF_X114_Y31_N29
\sub_ok3|d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok3|Add0~0_combout\,
	clrn => \ALT_INV_reset[3]~input_o\,
	ena => \commodity[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok3|d0\(1));

-- Location: LCCOMB_X114_Y31_N0
\sub_ok3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok3|Add0~1_combout\ = \sub_ok3|d0\(2) $ (((!\sub_ok3|d0\(0) & !\sub_ok3|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok3|d0\(0),
	datac => \sub_ok3|d0\(2),
	datad => \sub_ok3|d0\(1),
	combout => \sub_ok3|Add0~1_combout\);

-- Location: FF_X114_Y31_N1
\sub_ok3|d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok3|Add0~1_combout\,
	clrn => \ALT_INV_reset[3]~input_o\,
	ena => \commodity[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok3|d0\(2));

-- Location: LCCOMB_X114_Y31_N10
\mux2_3|y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_3|y[2]~3_combout\ = (\sub_ok3|d0\(2) & !\s~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok3|d0\(2),
	datad => \s~input_o\,
	combout => \mux2_3|y[2]~3_combout\);

-- Location: LCCOMB_X111_Y24_N10
\mux2_3|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_3|y[1]~1_combout\ = (\s~input_o\ & (\sub_rmb0|a1\(4) & ((\sub_rmb0|a1\(3)) # (\sub_rmb0|a1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_rmb0|a1\(3),
	datab => \s~input_o\,
	datac => \sub_rmb0|a1\(4),
	datad => \sub_rmb0|a1\(2),
	combout => \mux2_3|y[1]~1_combout\);

-- Location: LCCOMB_X114_Y31_N14
\mux2_3|y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_3|y[1]~2_combout\ = (\mux2_3|y[1]~1_combout\) # ((\sub_ok3|d0\(1) & !\s~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub_ok3|d0\(1),
	datac => \mux2_3|y[1]~1_combout\,
	datad => \s~input_o\,
	combout => \mux2_3|y[1]~2_combout\);

-- Location: LCCOMB_X114_Y31_N20
\sub_ok3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok3|Add0~2_combout\ = \sub_ok3|d0\(3) $ (((!\sub_ok3|d0\(0) & (!\sub_ok3|d0\(2) & !\sub_ok3|d0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok3|d0\(0),
	datab => \sub_ok3|d0\(2),
	datac => \sub_ok3|d0\(3),
	datad => \sub_ok3|d0\(1),
	combout => \sub_ok3|Add0~2_combout\);

-- Location: FF_X114_Y31_N21
\sub_ok3|d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok3|Add0~2_combout\,
	clrn => \ALT_INV_reset[3]~input_o\,
	ena => \commodity[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok3|d0\(3));

-- Location: LCCOMB_X114_Y31_N22
\mux2_3|y[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_3|y[3]~4_combout\ = (!\sub_ok3|d0\(3) & !\s~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok3|d0\(3),
	datad => \s~input_o\,
	combout => \mux2_3|y[3]~4_combout\);

-- Location: LCCOMB_X111_Y24_N24
\decoder1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|WideOr1~0_combout\ = (\sub_rmb0|a1\(3) & ((\sub_rmb0|a1\(1) & ((\sub_rmb0|a1\(2)) # (!\sub_rmb0|a1\(4)))) # (!\sub_rmb0|a1\(1) & (!\sub_rmb0|a1\(4) & \sub_rmb0|a1\(2))))) # (!\sub_rmb0|a1\(3) & (((\sub_rmb0|a1\(4) & !\sub_rmb0|a1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_rmb0|a1\(3),
	datab => \sub_rmb0|a1\(1),
	datac => \sub_rmb0|a1\(4),
	datad => \sub_rmb0|a1\(2),
	combout => \decoder1|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y31_N18
\mux2_3|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_3|y[0]~0_combout\ = (\s~input_o\ & ((\decoder1|WideOr1~0_combout\))) # (!\s~input_o\ & (\sub_ok3|d0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub_ok3|d0\(0),
	datac => \decoder1|WideOr1~0_combout\,
	datad => \s~input_o\,
	combout => \mux2_3|y[0]~0_combout\);

-- Location: LCCOMB_X114_Y31_N16
\sevenseg3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr6~0_combout\ = (\mux2_3|y[1]~2_combout\ & (((\mux2_3|y[3]~4_combout\)))) # (!\mux2_3|y[1]~2_combout\ & (\mux2_3|y[2]~3_combout\ $ (((!\mux2_3|y[3]~4_combout\ & \mux2_3|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_3|y[2]~3_combout\,
	datab => \mux2_3|y[1]~2_combout\,
	datac => \mux2_3|y[3]~4_combout\,
	datad => \mux2_3|y[0]~0_combout\,
	combout => \sevenseg3|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y31_N30
\sevenseg3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr5~0_combout\ = (\mux2_3|y[2]~3_combout\ & ((\mux2_3|y[3]~4_combout\) # (\mux2_3|y[1]~2_combout\ $ (\mux2_3|y[0]~0_combout\)))) # (!\mux2_3|y[2]~3_combout\ & (\mux2_3|y[1]~2_combout\ & (\mux2_3|y[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_3|y[2]~3_combout\,
	datab => \mux2_3|y[1]~2_combout\,
	datac => \mux2_3|y[3]~4_combout\,
	datad => \mux2_3|y[0]~0_combout\,
	combout => \sevenseg3|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y31_N4
\sevenseg3|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr4~0_combout\ = (\mux2_3|y[2]~3_combout\ & (((\mux2_3|y[3]~4_combout\)))) # (!\mux2_3|y[2]~3_combout\ & (\mux2_3|y[1]~2_combout\ & ((\mux2_3|y[3]~4_combout\) # (!\mux2_3|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_3|y[2]~3_combout\,
	datab => \mux2_3|y[1]~2_combout\,
	datac => \mux2_3|y[3]~4_combout\,
	datad => \mux2_3|y[0]~0_combout\,
	combout => \sevenseg3|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y31_N6
\sevenseg3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr3~0_combout\ = (\mux2_3|y[1]~2_combout\ & ((\mux2_3|y[3]~4_combout\) # ((\mux2_3|y[2]~3_combout\ & \mux2_3|y[0]~0_combout\)))) # (!\mux2_3|y[1]~2_combout\ & (\mux2_3|y[2]~3_combout\ $ (((!\mux2_3|y[3]~4_combout\ & 
-- \mux2_3|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_3|y[2]~3_combout\,
	datab => \mux2_3|y[1]~2_combout\,
	datac => \mux2_3|y[3]~4_combout\,
	datad => \mux2_3|y[0]~0_combout\,
	combout => \sevenseg3|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y31_N24
\sevenseg3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr2~0_combout\ = (\mux2_3|y[0]~0_combout\) # ((\mux2_3|y[1]~2_combout\ & ((\mux2_3|y[3]~4_combout\))) # (!\mux2_3|y[1]~2_combout\ & (\mux2_3|y[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_3|y[2]~3_combout\,
	datab => \mux2_3|y[1]~2_combout\,
	datac => \mux2_3|y[3]~4_combout\,
	datad => \mux2_3|y[0]~0_combout\,
	combout => \sevenseg3|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y31_N26
\sevenseg3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr1~0_combout\ = (\mux2_3|y[2]~3_combout\ & ((\mux2_3|y[3]~4_combout\) # ((\mux2_3|y[1]~2_combout\ & \mux2_3|y[0]~0_combout\)))) # (!\mux2_3|y[2]~3_combout\ & ((\mux2_3|y[1]~2_combout\) # ((!\mux2_3|y[3]~4_combout\ & 
-- \mux2_3|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_3|y[2]~3_combout\,
	datab => \mux2_3|y[1]~2_combout\,
	datac => \mux2_3|y[3]~4_combout\,
	datad => \mux2_3|y[0]~0_combout\,
	combout => \sevenseg3|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y31_N8
\sevenseg3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr0~0_combout\ = (\mux2_3|y[2]~3_combout\ & (!\mux2_3|y[3]~4_combout\ & ((!\mux2_3|y[0]~0_combout\) # (!\mux2_3|y[1]~2_combout\)))) # (!\mux2_3|y[2]~3_combout\ & (\mux2_3|y[1]~2_combout\ $ ((\mux2_3|y[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_3|y[2]~3_combout\,
	datab => \mux2_3|y[1]~2_combout\,
	datac => \mux2_3|y[3]~4_combout\,
	datad => \mux2_3|y[0]~0_combout\,
	combout => \sevenseg3|WideOr0~0_combout\);

-- Location: LCCOMB_X112_Y24_N26
\decoder2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|WideOr4~0_combout\ = (\money1|WideOr32~4_combout\ & (\money1|WideOr34~2_combout\ $ (((\money1|WideOr31~2_combout\) # (!\money1|WideOr33~2_combout\))))) # (!\money1|WideOr32~4_combout\ & ((\money1|WideOr34~2_combout\ & 
-- (!\money1|WideOr33~2_combout\ & \money1|WideOr31~2_combout\)) # (!\money1|WideOr34~2_combout\ & (\money1|WideOr33~2_combout\ & !\money1|WideOr31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr32~4_combout\,
	datab => \money1|WideOr34~2_combout\,
	datac => \money1|WideOr33~2_combout\,
	datad => \money1|WideOr31~2_combout\,
	combout => \decoder2|WideOr4~0_combout\);

-- Location: LCCOMB_X112_Y24_N12
\sub_ok4|d0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok4|d0[0]~0_combout\ = !\sub_ok4|d0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok4|d0\(0),
	combout => \sub_ok4|d0[0]~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\reset[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset(4),
	o => \reset[4]~input_o\);

-- Location: FF_X112_Y24_N13
\sub_ok4|d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok4|d0[0]~0_combout\,
	clrn => \ALT_INV_reset[4]~input_o\,
	ena => \commodity[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok4|d0\(0));

-- Location: LCCOMB_X112_Y24_N28
\sub_ok4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok4|Add0~0_combout\ = \sub_ok4|d0\(1) $ (!\sub_ok4|d0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok4|d0\(1),
	datad => \sub_ok4|d0\(0),
	combout => \sub_ok4|Add0~0_combout\);

-- Location: FF_X112_Y24_N29
\sub_ok4|d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok4|Add0~0_combout\,
	clrn => \ALT_INV_reset[4]~input_o\,
	ena => \commodity[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok4|d0\(1));

-- Location: LCCOMB_X112_Y24_N6
\mux2_4|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_4|y[1]~1_combout\ = (\s~input_o\ & (\decoder2|WideOr4~0_combout\)) # (!\s~input_o\ & ((\sub_ok4|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datac => \decoder2|WideOr4~0_combout\,
	datad => \sub_ok4|d0\(1),
	combout => \mux2_4|y[1]~1_combout\);

-- Location: LCCOMB_X112_Y15_N4
\mux2_4|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_4|y[0]~0_combout\ = (\s~input_o\ & (\money1|WideOr35~3_combout\)) # (!\s~input_o\ & ((\sub_ok4|d0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \money1|WideOr35~3_combout\,
	datac => \sub_ok4|d0\(0),
	datad => \s~input_o\,
	combout => \mux2_4|y[0]~0_combout\);

-- Location: LCCOMB_X112_Y24_N18
\sub_ok4|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok4|Add0~1_combout\ = \sub_ok4|d0\(2) $ (((!\sub_ok4|d0\(0) & !\sub_ok4|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok4|d0\(0),
	datac => \sub_ok4|d0\(2),
	datad => \sub_ok4|d0\(1),
	combout => \sub_ok4|Add0~1_combout\);

-- Location: FF_X112_Y24_N19
\sub_ok4|d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok4|Add0~1_combout\,
	clrn => \ALT_INV_reset[4]~input_o\,
	ena => \commodity[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok4|d0\(2));

-- Location: LCCOMB_X112_Y24_N8
\decoder2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|WideOr3~0_combout\ = (\money1|WideOr33~2_combout\ & (!\money1|WideOr31~2_combout\ & ((\money1|WideOr34~2_combout\) # (!\money1|WideOr32~4_combout\)))) # (!\money1|WideOr33~2_combout\ & (\money1|WideOr31~2_combout\ & 
-- ((\money1|WideOr32~4_combout\) # (!\money1|WideOr34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr32~4_combout\,
	datab => \money1|WideOr34~2_combout\,
	datac => \money1|WideOr33~2_combout\,
	datad => \money1|WideOr31~2_combout\,
	combout => \decoder2|WideOr3~0_combout\);

-- Location: LCCOMB_X112_Y24_N24
\mux2_4|y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_4|y[2]~2_combout\ = (\s~input_o\ & ((\decoder2|WideOr3~0_combout\))) # (!\s~input_o\ & (\sub_ok4|d0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok4|d0\(2),
	datac => \s~input_o\,
	datad => \decoder2|WideOr3~0_combout\,
	combout => \mux2_4|y[2]~2_combout\);

-- Location: LCCOMB_X112_Y24_N22
\decoder2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|WideOr2~0_combout\ = (\money1|WideOr32~4_combout\ & (!\money1|WideOr34~2_combout\ & (\money1|WideOr33~2_combout\ & !\money1|WideOr31~2_combout\))) # (!\money1|WideOr32~4_combout\ & (\money1|WideOr34~2_combout\ & (\money1|WideOr33~2_combout\ $ 
-- (!\money1|WideOr31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr32~4_combout\,
	datab => \money1|WideOr34~2_combout\,
	datac => \money1|WideOr33~2_combout\,
	datad => \money1|WideOr31~2_combout\,
	combout => \decoder2|WideOr2~0_combout\);

-- Location: LCCOMB_X112_Y24_N20
\sub_ok4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok4|Add0~2_combout\ = \sub_ok4|d0\(3) $ (((!\sub_ok4|d0\(0) & (!\sub_ok4|d0\(2) & !\sub_ok4|d0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok4|d0\(0),
	datab => \sub_ok4|d0\(2),
	datac => \sub_ok4|d0\(3),
	datad => \sub_ok4|d0\(1),
	combout => \sub_ok4|Add0~2_combout\);

-- Location: FF_X112_Y24_N21
\sub_ok4|d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok4|Add0~2_combout\,
	clrn => \ALT_INV_reset[4]~input_o\,
	ena => \commodity[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok4|d0\(3));

-- Location: LCCOMB_X112_Y24_N14
\mux2_4|y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_4|y[3]~3_combout\ = (\s~input_o\ & (\decoder2|WideOr2~0_combout\)) # (!\s~input_o\ & ((!\sub_ok4|d0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s~input_o\,
	datac => \decoder2|WideOr2~0_combout\,
	datad => \sub_ok4|d0\(3),
	combout => \mux2_4|y[3]~3_combout\);

-- Location: LCCOMB_X84_Y4_N4
\sevenseg4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr6~0_combout\ = (\mux2_4|y[1]~1_combout\ & (((\mux2_4|y[3]~3_combout\)))) # (!\mux2_4|y[1]~1_combout\ & (\mux2_4|y[2]~2_combout\ $ (((\mux2_4|y[0]~0_combout\ & !\mux2_4|y[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_4|y[1]~1_combout\,
	datab => \mux2_4|y[0]~0_combout\,
	datac => \mux2_4|y[2]~2_combout\,
	datad => \mux2_4|y[3]~3_combout\,
	combout => \sevenseg4|WideOr6~0_combout\);

-- Location: LCCOMB_X84_Y4_N10
\sevenseg4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr5~0_combout\ = (\mux2_4|y[2]~2_combout\ & ((\mux2_4|y[3]~3_combout\) # (\mux2_4|y[1]~1_combout\ $ (\mux2_4|y[0]~0_combout\)))) # (!\mux2_4|y[2]~2_combout\ & (\mux2_4|y[1]~1_combout\ & ((\mux2_4|y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_4|y[1]~1_combout\,
	datab => \mux2_4|y[0]~0_combout\,
	datac => \mux2_4|y[2]~2_combout\,
	datad => \mux2_4|y[3]~3_combout\,
	combout => \sevenseg4|WideOr5~0_combout\);

-- Location: LCCOMB_X84_Y4_N28
\sevenseg4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr4~0_combout\ = (\mux2_4|y[2]~2_combout\ & (((\mux2_4|y[3]~3_combout\)))) # (!\mux2_4|y[2]~2_combout\ & (\mux2_4|y[1]~1_combout\ & ((\mux2_4|y[3]~3_combout\) # (!\mux2_4|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_4|y[1]~1_combout\,
	datab => \mux2_4|y[0]~0_combout\,
	datac => \mux2_4|y[2]~2_combout\,
	datad => \mux2_4|y[3]~3_combout\,
	combout => \sevenseg4|WideOr4~0_combout\);

-- Location: LCCOMB_X84_Y4_N2
\sevenseg4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr3~0_combout\ = (\mux2_4|y[1]~1_combout\ & ((\mux2_4|y[3]~3_combout\) # ((\mux2_4|y[0]~0_combout\ & \mux2_4|y[2]~2_combout\)))) # (!\mux2_4|y[1]~1_combout\ & (\mux2_4|y[2]~2_combout\ $ (((\mux2_4|y[0]~0_combout\ & 
-- !\mux2_4|y[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_4|y[1]~1_combout\,
	datab => \mux2_4|y[0]~0_combout\,
	datac => \mux2_4|y[2]~2_combout\,
	datad => \mux2_4|y[3]~3_combout\,
	combout => \sevenseg4|WideOr3~0_combout\);

-- Location: LCCOMB_X84_Y4_N12
\sevenseg4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr2~0_combout\ = (\mux2_4|y[0]~0_combout\) # ((\mux2_4|y[1]~1_combout\ & ((\mux2_4|y[3]~3_combout\))) # (!\mux2_4|y[1]~1_combout\ & (\mux2_4|y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_4|y[1]~1_combout\,
	datab => \mux2_4|y[0]~0_combout\,
	datac => \mux2_4|y[2]~2_combout\,
	datad => \mux2_4|y[3]~3_combout\,
	combout => \sevenseg4|WideOr2~0_combout\);

-- Location: LCCOMB_X84_Y4_N22
\sevenseg4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr1~0_combout\ = (\mux2_4|y[0]~0_combout\ & ((\mux2_4|y[1]~1_combout\) # (\mux2_4|y[2]~2_combout\ $ (!\mux2_4|y[3]~3_combout\)))) # (!\mux2_4|y[0]~0_combout\ & ((\mux2_4|y[2]~2_combout\ & ((\mux2_4|y[3]~3_combout\))) # 
-- (!\mux2_4|y[2]~2_combout\ & (\mux2_4|y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_4|y[1]~1_combout\,
	datab => \mux2_4|y[0]~0_combout\,
	datac => \mux2_4|y[2]~2_combout\,
	datad => \mux2_4|y[3]~3_combout\,
	combout => \sevenseg4|WideOr1~0_combout\);

-- Location: LCCOMB_X84_Y4_N16
\sevenseg4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr0~0_combout\ = (\mux2_4|y[1]~1_combout\ & (!\mux2_4|y[3]~3_combout\ & ((!\mux2_4|y[2]~2_combout\) # (!\mux2_4|y[0]~0_combout\)))) # (!\mux2_4|y[1]~1_combout\ & ((\mux2_4|y[2]~2_combout\ $ (\mux2_4|y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_4|y[1]~1_combout\,
	datab => \mux2_4|y[0]~0_combout\,
	datac => \mux2_4|y[2]~2_combout\,
	datad => \mux2_4|y[3]~3_combout\,
	combout => \sevenseg4|WideOr0~0_combout\);

-- Location: LCCOMB_X112_Y24_N10
\mux2_5|y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_5|y[1]~1_combout\ = (\s~input_o\ & (!\money1|WideOr31~2_combout\ & ((!\money1|WideOr33~2_combout\) # (!\money1|WideOr32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr32~4_combout\,
	datab => \money1|WideOr33~2_combout\,
	datac => \s~input_o\,
	datad => \money1|WideOr31~2_combout\,
	combout => \mux2_5|y[1]~1_combout\);

-- Location: LCCOMB_X111_Y27_N12
\sub_ok5|d0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok5|d0[0]~0_combout\ = !\sub_ok5|d0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok5|d0\(0),
	combout => \sub_ok5|d0[0]~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\reset[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset(5),
	o => \reset[5]~input_o\);

-- Location: FF_X111_Y27_N13
\sub_ok5|d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok5|d0[0]~0_combout\,
	clrn => \ALT_INV_reset[5]~input_o\,
	ena => \commodity[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok5|d0\(0));

-- Location: LCCOMB_X111_Y27_N20
\sub_ok5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok5|Add0~0_combout\ = \sub_ok5|d0\(1) $ (!\sub_ok5|d0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sub_ok5|d0\(1),
	datad => \sub_ok5|d0\(0),
	combout => \sub_ok5|Add0~0_combout\);

-- Location: FF_X111_Y27_N21
\sub_ok5|d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok5|Add0~0_combout\,
	clrn => \ALT_INV_reset[5]~input_o\,
	ena => \commodity[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok5|d0\(1));

-- Location: LCCOMB_X111_Y27_N10
\mux2_5|y[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_5|y[1]~2_combout\ = (\mux2_5|y[1]~1_combout\) # ((!\s~input_o\ & \sub_ok5|d0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux2_5|y[1]~1_combout\,
	datac => \s~input_o\,
	datad => \sub_ok5|d0\(1),
	combout => \mux2_5|y[1]~2_combout\);

-- Location: LCCOMB_X111_Y27_N0
\sub_ok5|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok5|Add0~1_combout\ = \sub_ok5|d0\(2) $ (((!\sub_ok5|d0\(0) & !\sub_ok5|d0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok5|d0\(0),
	datac => \sub_ok5|d0\(2),
	datad => \sub_ok5|d0\(1),
	combout => \sub_ok5|Add0~1_combout\);

-- Location: FF_X111_Y27_N1
\sub_ok5|d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok5|Add0~1_combout\,
	clrn => \ALT_INV_reset[5]~input_o\,
	ena => \commodity[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok5|d0\(2));

-- Location: LCCOMB_X111_Y27_N8
\sub_ok5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_ok5|Add0~2_combout\ = \sub_ok5|d0\(3) $ (((!\sub_ok5|d0\(0) & (!\sub_ok5|d0\(2) & !\sub_ok5|d0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok5|d0\(0),
	datab => \sub_ok5|d0\(2),
	datac => \sub_ok5|d0\(3),
	datad => \sub_ok5|d0\(1),
	combout => \sub_ok5|Add0~2_combout\);

-- Location: FF_X111_Y27_N9
\sub_ok5|d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ok~input_o\,
	d => \sub_ok5|Add0~2_combout\,
	clrn => \ALT_INV_reset[5]~input_o\,
	ena => \commodity[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sub_ok5|d0\(3));

-- Location: LCCOMB_X111_Y27_N14
\mux2_5|y[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_5|y[3]~4_combout\ = (!\sub_ok5|d0\(3) & !\s~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub_ok5|d0\(3),
	datac => \s~input_o\,
	combout => \mux2_5|y[3]~4_combout\);

-- Location: LCCOMB_X111_Y27_N22
\mux2_5|y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_5|y[2]~3_combout\ = (\sub_ok5|d0\(2) & !\s~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_ok5|d0\(2),
	datac => \s~input_o\,
	combout => \mux2_5|y[2]~3_combout\);

-- Location: LCCOMB_X112_Y24_N16
\decoder2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|WideOr1~0_combout\ = (\money1|WideOr32~4_combout\ & (((\money1|WideOr31~2_combout\) # (!\money1|WideOr33~2_combout\)))) # (!\money1|WideOr32~4_combout\ & ((\money1|WideOr34~2_combout\ & ((\money1|WideOr33~2_combout\) # 
-- (!\money1|WideOr31~2_combout\))) # (!\money1|WideOr34~2_combout\ & (\money1|WideOr33~2_combout\ & !\money1|WideOr31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \money1|WideOr32~4_combout\,
	datab => \money1|WideOr34~2_combout\,
	datac => \money1|WideOr33~2_combout\,
	datad => \money1|WideOr31~2_combout\,
	combout => \decoder2|WideOr1~0_combout\);

-- Location: LCCOMB_X111_Y27_N18
\mux2_5|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2_5|y[0]~0_combout\ = (\s~input_o\ & ((!\decoder2|WideOr1~0_combout\))) # (!\s~input_o\ & (\sub_ok5|d0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub_ok5|d0\(0),
	datac => \s~input_o\,
	datad => \decoder2|WideOr1~0_combout\,
	combout => \mux2_5|y[0]~0_combout\);

-- Location: LCCOMB_X111_Y27_N16
\sevenseg5|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5|WideOr6~0_combout\ = (\mux2_5|y[1]~2_combout\ & (\mux2_5|y[3]~4_combout\)) # (!\mux2_5|y[1]~2_combout\ & (\mux2_5|y[2]~3_combout\ $ (((!\mux2_5|y[3]~4_combout\ & \mux2_5|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_5|y[1]~2_combout\,
	datab => \mux2_5|y[3]~4_combout\,
	datac => \mux2_5|y[2]~3_combout\,
	datad => \mux2_5|y[0]~0_combout\,
	combout => \sevenseg5|WideOr6~0_combout\);

-- Location: LCCOMB_X111_Y27_N2
\sevenseg5|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5|WideOr5~0_combout\ = (\mux2_5|y[3]~4_combout\ & ((\mux2_5|y[1]~2_combout\) # ((\mux2_5|y[2]~3_combout\)))) # (!\mux2_5|y[3]~4_combout\ & (\mux2_5|y[2]~3_combout\ & (\mux2_5|y[1]~2_combout\ $ (\mux2_5|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_5|y[1]~2_combout\,
	datab => \mux2_5|y[3]~4_combout\,
	datac => \mux2_5|y[2]~3_combout\,
	datad => \mux2_5|y[0]~0_combout\,
	combout => \sevenseg5|WideOr5~0_combout\);

-- Location: LCCOMB_X111_Y27_N24
\sevenseg5|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5|WideOr4~0_combout\ = (\mux2_5|y[2]~3_combout\ & (((\mux2_5|y[3]~4_combout\)))) # (!\mux2_5|y[2]~3_combout\ & (\mux2_5|y[1]~2_combout\ & ((\mux2_5|y[3]~4_combout\) # (!\mux2_5|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_5|y[1]~2_combout\,
	datab => \mux2_5|y[3]~4_combout\,
	datac => \mux2_5|y[2]~3_combout\,
	datad => \mux2_5|y[0]~0_combout\,
	combout => \sevenseg5|WideOr4~0_combout\);

-- Location: LCCOMB_X111_Y27_N6
\sevenseg5|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5|WideOr3~0_combout\ = (\mux2_5|y[1]~2_combout\ & ((\mux2_5|y[3]~4_combout\) # ((\mux2_5|y[2]~3_combout\ & \mux2_5|y[0]~0_combout\)))) # (!\mux2_5|y[1]~2_combout\ & (\mux2_5|y[2]~3_combout\ $ (((!\mux2_5|y[3]~4_combout\ & 
-- \mux2_5|y[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_5|y[1]~2_combout\,
	datab => \mux2_5|y[3]~4_combout\,
	datac => \mux2_5|y[2]~3_combout\,
	datad => \mux2_5|y[0]~0_combout\,
	combout => \sevenseg5|WideOr3~0_combout\);

-- Location: LCCOMB_X111_Y27_N4
\sevenseg5|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5|WideOr2~0_combout\ = (\mux2_5|y[0]~0_combout\) # ((\mux2_5|y[1]~2_combout\ & (\mux2_5|y[3]~4_combout\)) # (!\mux2_5|y[1]~2_combout\ & ((\mux2_5|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_5|y[1]~2_combout\,
	datab => \mux2_5|y[3]~4_combout\,
	datac => \mux2_5|y[2]~3_combout\,
	datad => \mux2_5|y[0]~0_combout\,
	combout => \sevenseg5|WideOr2~0_combout\);

-- Location: LCCOMB_X111_Y27_N30
\sevenseg5|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5|WideOr1~0_combout\ = (\mux2_5|y[2]~3_combout\ & ((\mux2_5|y[3]~4_combout\) # ((\mux2_5|y[1]~2_combout\ & \mux2_5|y[0]~0_combout\)))) # (!\mux2_5|y[2]~3_combout\ & ((\mux2_5|y[1]~2_combout\) # ((!\mux2_5|y[3]~4_combout\ & 
-- \mux2_5|y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_5|y[1]~2_combout\,
	datab => \mux2_5|y[3]~4_combout\,
	datac => \mux2_5|y[2]~3_combout\,
	datad => \mux2_5|y[0]~0_combout\,
	combout => \sevenseg5|WideOr1~0_combout\);

-- Location: LCCOMB_X111_Y27_N28
\sevenseg5|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg5|WideOr0~0_combout\ = (\mux2_5|y[1]~2_combout\ & (!\mux2_5|y[3]~4_combout\ & ((!\mux2_5|y[0]~0_combout\) # (!\mux2_5|y[2]~3_combout\)))) # (!\mux2_5|y[1]~2_combout\ & (\mux2_5|y[3]~4_combout\ $ ((\mux2_5|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2_5|y[1]~2_combout\,
	datab => \mux2_5|y[3]~4_combout\,
	datac => \mux2_5|y[2]~3_combout\,
	datad => \mux2_5|y[0]~0_combout\,
	combout => \sevenseg5|WideOr0~0_combout\);

ww_segments0(0) <= \segments0[0]~output_o\;

ww_segments0(1) <= \segments0[1]~output_o\;

ww_segments0(2) <= \segments0[2]~output_o\;

ww_segments0(3) <= \segments0[3]~output_o\;

ww_segments0(4) <= \segments0[4]~output_o\;

ww_segments0(5) <= \segments0[5]~output_o\;

ww_segments0(6) <= \segments0[6]~output_o\;

ww_segments1(0) <= \segments1[0]~output_o\;

ww_segments1(1) <= \segments1[1]~output_o\;

ww_segments1(2) <= \segments1[2]~output_o\;

ww_segments1(3) <= \segments1[3]~output_o\;

ww_segments1(4) <= \segments1[4]~output_o\;

ww_segments1(5) <= \segments1[5]~output_o\;

ww_segments1(6) <= \segments1[6]~output_o\;

ww_segments2(0) <= \segments2[0]~output_o\;

ww_segments2(1) <= \segments2[1]~output_o\;

ww_segments2(2) <= \segments2[2]~output_o\;

ww_segments2(3) <= \segments2[3]~output_o\;

ww_segments2(4) <= \segments2[4]~output_o\;

ww_segments2(5) <= \segments2[5]~output_o\;

ww_segments2(6) <= \segments2[6]~output_o\;

ww_segments3(0) <= \segments3[0]~output_o\;

ww_segments3(1) <= \segments3[1]~output_o\;

ww_segments3(2) <= \segments3[2]~output_o\;

ww_segments3(3) <= \segments3[3]~output_o\;

ww_segments3(4) <= \segments3[4]~output_o\;

ww_segments3(5) <= \segments3[5]~output_o\;

ww_segments3(6) <= \segments3[6]~output_o\;

ww_segments4(0) <= \segments4[0]~output_o\;

ww_segments4(1) <= \segments4[1]~output_o\;

ww_segments4(2) <= \segments4[2]~output_o\;

ww_segments4(3) <= \segments4[3]~output_o\;

ww_segments4(4) <= \segments4[4]~output_o\;

ww_segments4(5) <= \segments4[5]~output_o\;

ww_segments4(6) <= \segments4[6]~output_o\;

ww_segments5(0) <= \segments5[0]~output_o\;

ww_segments5(1) <= \segments5[1]~output_o\;

ww_segments5(2) <= \segments5[2]~output_o\;

ww_segments5(3) <= \segments5[3]~output_o\;

ww_segments5(4) <= \segments5[4]~output_o\;

ww_segments5(5) <= \segments5[5]~output_o\;

ww_segments5(6) <= \segments5[6]~output_o\;
END structure;


