-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/06/2016 19:01:42"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE2_115 IS
    PORT (
	CLOCK_50 : IN std_logic;
	CLOCK2_50 : IN std_logic;
	CLOCK3_50 : IN std_logic;
	ENETCLK_25 : IN std_logic;
	SMA_CLKIN : IN std_logic;
	SMA_CLKOUT : OUT std_logic;
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LCD_BLON : OUT std_logic;
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	LCD_EN : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_RW : OUT std_logic;
	UART_CTS : OUT std_logic;
	UART_RTS : IN std_logic;
	UART_RXD : IN std_logic;
	UART_TXD : OUT std_logic;
	PS2_CLK : INOUT std_logic;
	PS2_DAT : INOUT std_logic;
	PS2_CLK2 : INOUT std_logic;
	PS2_DAT2 : INOUT std_logic;
	SD_CLK : OUT std_logic;
	SD_CMD : INOUT std_logic;
	SD_DAT : INOUT std_logic_vector(3 DOWNTO 0);
	SD_WP_N : IN std_logic;
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_BLANK_N : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_SYNC_N : OUT std_logic;
	VGA_VS : OUT std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_ADCLRCK : INOUT std_logic;
	AUD_BCLK : INOUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_DACLRCK : INOUT std_logic;
	AUD_XCK : OUT std_logic;
	EEP_I2C_SCLK : OUT std_logic;
	EEP_I2C_SDAT : INOUT std_logic;
	I2C_SCLK : OUT std_logic;
	I2C_SDAT : INOUT std_logic;
	ENET0_GTX_CLK : OUT std_logic;
	ENET0_INT_N : IN std_logic;
	ENET0_MDC : OUT std_logic;
	ENET0_MDIO : IN std_logic;
	ENET0_RST_N : OUT std_logic;
	ENET0_RX_CLK : IN std_logic;
	ENET0_RX_COL : IN std_logic;
	ENET0_RX_CRS : IN std_logic;
	ENET0_RX_DATA : IN std_logic_vector(3 DOWNTO 0);
	ENET0_RX_DV : IN std_logic;
	ENET0_RX_ER : IN std_logic;
	ENET0_TX_CLK : IN std_logic;
	ENET0_TX_DATA : OUT std_logic_vector(3 DOWNTO 0);
	ENET0_TX_EN : OUT std_logic;
	ENET0_TX_ER : OUT std_logic;
	ENET0_LINK100 : IN std_logic;
	ENET1_GTX_CLK : OUT std_logic;
	ENET1_INT_N : IN std_logic;
	ENET1_MDC : OUT std_logic;
	ENET1_MDIO : IN std_logic;
	ENET1_RST_N : OUT std_logic;
	ENET1_RX_CLK : IN std_logic;
	ENET1_RX_COL : IN std_logic;
	ENET1_RX_CRS : IN std_logic;
	ENET1_RX_DATA : IN std_logic_vector(3 DOWNTO 0);
	ENET1_RX_DV : IN std_logic;
	ENET1_RX_ER : IN std_logic;
	ENET1_TX_CLK : IN std_logic;
	ENET1_TX_DATA : OUT std_logic_vector(3 DOWNTO 0);
	ENET1_TX_EN : OUT std_logic;
	ENET1_TX_ER : OUT std_logic;
	ENET1_LINK100 : IN std_logic;
	TD_CLK27 : IN std_logic;
	TD_DATA : IN std_logic_vector(7 DOWNTO 0);
	TD_HS : IN std_logic;
	TD_RESET_N : OUT std_logic;
	TD_VS : IN std_logic;
	OTG_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	OTG_ADDR : OUT std_logic_vector(1 DOWNTO 0);
	OTG_CS_N : OUT std_logic;
	OTG_WR_N : OUT std_logic;
	OTG_RD_N : OUT std_logic;
	OTG_INT : IN std_logic;
	OTG_RST_N : OUT std_logic;
	IRDA_RXD : IN std_logic;
	DRAM_ADDR : OUT std_logic_vector(12 DOWNTO 0);
	DRAM_BA : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_CLK : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_DQ : INOUT std_logic_vector(31 DOWNTO 0);
	DRAM_DQM : OUT std_logic_vector(3 DOWNTO 0);
	DRAM_RAS_N : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	SRAM_ADDR : OUT std_logic_vector(19 DOWNTO 0);
	SRAM_CE_N : OUT std_logic;
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_LB_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_UB_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	FL_ADDR : OUT std_logic_vector(22 DOWNTO 0);
	FL_CE_N : OUT std_logic;
	FL_DQ : INOUT std_logic_vector(7 DOWNTO 0);
	FL_OE_N : OUT std_logic;
	FL_RST_N : OUT std_logic;
	FL_RY : IN std_logic;
	FL_WE_N : OUT std_logic;
	FL_WP_N : OUT std_logic;
	GPIO : INOUT std_logic_vector(35 DOWNTO 0);
	HSMC_CLKIN_P1 : IN std_logic;
	HSMC_CLKIN_P2 : IN std_logic;
	HSMC_CLKIN0 : IN std_logic;
	HSMC_CLKOUT_P1 : OUT std_logic;
	HSMC_CLKOUT_P2 : OUT std_logic;
	HSMC_CLKOUT0 : OUT std_logic;
	HSMC_D : INOUT std_logic_vector(3 DOWNTO 0);
	HSMC_RX_D_P : IN std_logic_vector(16 DOWNTO 0);
	HSMC_TX_D_P : OUT std_logic_vector(16 DOWNTO 0);
	EX_IO : INOUT std_logic_vector(6 DOWNTO 0)
	);
END DE2_115;

-- Design Ports Information
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKOUT	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UART_CTS	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_CLK	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_XCK	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EEP_I2C_SCLK	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- I2C_SCLK	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ENET0_GTX_CLK	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_MDC	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RST_N	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_EN	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_ER	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_GTX_CLK	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_MDC	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RST_N	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[0]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[1]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[2]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[3]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_EN	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_ER	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_RESET_N	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_ADDR[0]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_ADDR[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_CS_N	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_WR_N	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_RD_N	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OTG_RST_N	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[1]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[2]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[4]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[5]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[6]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[7]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[8]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[9]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[10]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[11]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[12]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_BA[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_BA[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CAS_N	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CKE	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CLK	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CS_N	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQM[0]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQM[1]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQM[2]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQM[3]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_RAS_N	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_WE_N	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_CE_N	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_LB_N	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_OE_N	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_UB_N	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_WE_N	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[0]	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[1]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[2]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[4]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[5]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[6]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[7]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[8]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[9]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[10]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[11]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[12]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[13]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[14]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[15]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[16]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[17]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[18]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[19]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[20]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[21]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_ADDR[22]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_CE_N	=>  Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_OE_N	=>  Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_RST_N	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_WE_N	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_WP_N	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HSMC_CLKIN_P1	=>  Location: PIN_J27,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_CLKIN_P2	=>  Location: PIN_Y27,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKOUT_P1	=>  Location: PIN_G23,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_CLKOUT_P2	=>  Location: PIN_V23,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_CLKOUT0	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[0]	=>  Location: PIN_F24,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[1]	=>  Location: PIN_D26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[2]	=>  Location: PIN_F26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[3]	=>  Location: PIN_G25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[4]	=>  Location: PIN_H25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[5]	=>  Location: PIN_K25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[6]	=>  Location: PIN_L23,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[7]	=>  Location: PIN_M25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[8]	=>  Location: PIN_R25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[9]	=>  Location: PIN_T25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[10]	=>  Location: PIN_U25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[11]	=>  Location: PIN_L21,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[12]	=>  Location: PIN_N25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[13]	=>  Location: PIN_P25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[14]	=>  Location: PIN_P21,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[15]	=>  Location: PIN_R22,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[16]	=>  Location: PIN_T21,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_TX_D_P[0]	=>  Location: PIN_D27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[1]	=>  Location: PIN_E27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[2]	=>  Location: PIN_F27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[3]	=>  Location: PIN_G27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[4]	=>  Location: PIN_K27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[5]	=>  Location: PIN_M27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[6]	=>  Location: PIN_K21,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[7]	=>  Location: PIN_H23,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[8]	=>  Location: PIN_J23,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[9]	=>  Location: PIN_P27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[10]	=>  Location: PIN_J25,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[11]	=>  Location: PIN_L27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[12]	=>  Location: PIN_V25,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[13]	=>  Location: PIN_R27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[14]	=>  Location: PIN_U27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[15]	=>  Location: PIN_V27,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[16]	=>  Location: PIN_U22,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_CLK	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_DAT	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_CLK2	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- PS2_DAT2	=>  Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_CMD	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_DAT[0]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_DAT[1]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_DAT[2]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_DAT[3]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_ADCLRCK	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_BCLK	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AUD_DACLRCK	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EEP_I2C_SDAT	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- I2C_SDAT	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[1]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[2]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[3]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[6]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[7]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[8]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[9]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[10]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[11]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[12]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[13]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[14]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OTG_DATA[15]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[0]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[1]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[2]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[3]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[4]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[5]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[6]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[7]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[8]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[9]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[10]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[11]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[12]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[13]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[14]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[15]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[16]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[17]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[18]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[19]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[20]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[21]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[22]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[23]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[24]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[25]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[26]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[27]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[28]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[29]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[30]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[31]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[0]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[2]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[3]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[4]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[5]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[6]	=>  Location: PIN_AH6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[7]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[8]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[9]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[10]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[11]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[12]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[14]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[15]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[0]	=>  Location: PIN_AH8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[2]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[3]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[4]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[5]	=>  Location: PIN_AG11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[6]	=>  Location: PIN_AH11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FL_DQ[7]	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[13]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[22]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[24]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[25]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[26]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[27]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[28]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[29]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[30]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[31]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[32]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[33]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[34]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[35]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HSMC_D[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[3]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[3]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[5]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[6]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN_P1(n)	=>  Location: PIN_J28,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_CLKIN_P2(n)	=>  Location: PIN_Y28,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_CLKOUT_P1(n)	=>  Location: PIN_G24,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_CLKOUT_P2(n)	=>  Location: PIN_V24,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_RX_D_P[0](n)	=>  Location: PIN_F25,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[1](n)	=>  Location: PIN_C27,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[2](n)	=>  Location: PIN_E26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[3](n)	=>  Location: PIN_G26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[4](n)	=>  Location: PIN_H26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[5](n)	=>  Location: PIN_K26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[6](n)	=>  Location: PIN_L24,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[7](n)	=>  Location: PIN_M26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[8](n)	=>  Location: PIN_R26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[9](n)	=>  Location: PIN_T26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[10](n)	=>  Location: PIN_U26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[11](n)	=>  Location: PIN_L22,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[12](n)	=>  Location: PIN_N26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[13](n)	=>  Location: PIN_P26,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[14](n)	=>  Location: PIN_R21,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[15](n)	=>  Location: PIN_R23,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_RX_D_P[16](n)	=>  Location: PIN_T22,	 I/O Standard: LVDS,	 Current Strength: Default
-- HSMC_TX_D_P[0](n)	=>  Location: PIN_D28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[1](n)	=>  Location: PIN_E28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[2](n)	=>  Location: PIN_F28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[3](n)	=>  Location: PIN_G28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[4](n)	=>  Location: PIN_K28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[5](n)	=>  Location: PIN_M28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[6](n)	=>  Location: PIN_K22,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[7](n)	=>  Location: PIN_H24,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[8](n)	=>  Location: PIN_J24,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[9](n)	=>  Location: PIN_P28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[10](n)	=>  Location: PIN_J26,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[11](n)	=>  Location: PIN_L28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[12](n)	=>  Location: PIN_V26,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[13](n)	=>  Location: PIN_R28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[14](n)	=>  Location: PIN_U28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[15](n)	=>  Location: PIN_V28,	 I/O Standard: LVDS,	 Current Strength: Maximum Current
-- HSMC_TX_D_P[16](n)	=>  Location: PIN_V22,	 I/O Standard: LVDS,	 Current Strength: Maximum Current


ARCHITECTURE structure OF DE2_115 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_CLOCK2_50 : std_logic;
SIGNAL ww_CLOCK3_50 : std_logic;
SIGNAL ww_ENETCLK_25 : std_logic;
SIGNAL ww_SMA_CLKIN : std_logic;
SIGNAL ww_SMA_CLKOUT : std_logic;
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_UART_CTS : std_logic;
SIGNAL ww_UART_RTS : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_SD_CLK : std_logic;
SIGNAL ww_SD_WP_N : std_logic;
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_EEP_I2C_SCLK : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_ENET0_GTX_CLK : std_logic;
SIGNAL ww_ENET0_INT_N : std_logic;
SIGNAL ww_ENET0_MDC : std_logic;
SIGNAL ww_ENET0_MDIO : std_logic;
SIGNAL ww_ENET0_RST_N : std_logic;
SIGNAL ww_ENET0_RX_CLK : std_logic;
SIGNAL ww_ENET0_RX_COL : std_logic;
SIGNAL ww_ENET0_RX_CRS : std_logic;
SIGNAL ww_ENET0_RX_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENET0_RX_DV : std_logic;
SIGNAL ww_ENET0_RX_ER : std_logic;
SIGNAL ww_ENET0_TX_CLK : std_logic;
SIGNAL ww_ENET0_TX_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENET0_TX_EN : std_logic;
SIGNAL ww_ENET0_TX_ER : std_logic;
SIGNAL ww_ENET0_LINK100 : std_logic;
SIGNAL ww_ENET1_GTX_CLK : std_logic;
SIGNAL ww_ENET1_INT_N : std_logic;
SIGNAL ww_ENET1_MDC : std_logic;
SIGNAL ww_ENET1_MDIO : std_logic;
SIGNAL ww_ENET1_RST_N : std_logic;
SIGNAL ww_ENET1_RX_CLK : std_logic;
SIGNAL ww_ENET1_RX_COL : std_logic;
SIGNAL ww_ENET1_RX_CRS : std_logic;
SIGNAL ww_ENET1_RX_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENET1_RX_DV : std_logic;
SIGNAL ww_ENET1_RX_ER : std_logic;
SIGNAL ww_ENET1_TX_CLK : std_logic;
SIGNAL ww_ENET1_TX_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENET1_TX_EN : std_logic;
SIGNAL ww_ENET1_TX_ER : std_logic;
SIGNAL ww_ENET1_LINK100 : std_logic;
SIGNAL ww_TD_CLK27 : std_logic;
SIGNAL ww_TD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TD_HS : std_logic;
SIGNAL ww_TD_RESET_N : std_logic;
SIGNAL ww_TD_VS : std_logic;
SIGNAL ww_OTG_ADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OTG_CS_N : std_logic;
SIGNAL ww_OTG_WR_N : std_logic;
SIGNAL ww_OTG_RD_N : std_logic;
SIGNAL ww_OTG_INT : std_logic;
SIGNAL ww_OTG_RST_N : std_logic;
SIGNAL ww_IRDA_RXD : std_logic;
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_DQM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_FL_ADDR : std_logic_vector(22 DOWNTO 0);
SIGNAL ww_FL_CE_N : std_logic;
SIGNAL ww_FL_OE_N : std_logic;
SIGNAL ww_FL_RST_N : std_logic;
SIGNAL ww_FL_RY : std_logic;
SIGNAL ww_FL_WE_N : std_logic;
SIGNAL ww_FL_WP_N : std_logic;
SIGNAL ww_HSMC_CLKIN_P1 : std_logic;
SIGNAL ww_HSMC_CLKIN_P2 : std_logic;
SIGNAL ww_HSMC_CLKIN0 : std_logic;
SIGNAL ww_HSMC_CLKOUT_P1 : std_logic;
SIGNAL ww_HSMC_CLKOUT_P2 : std_logic;
SIGNAL ww_HSMC_CLKOUT0 : std_logic;
SIGNAL ww_HSMC_RX_D_P : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_HSMC_TX_D_P : std_logic_vector(16 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HSMC_CLKIN_P1(n)~padout\ : std_logic;
SIGNAL \HSMC_CLKIN_P2(n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[0](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[1](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[2](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[3](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[4](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[5](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[6](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[7](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[8](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[9](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[10](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[11](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[12](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[13](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[14](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[15](n)~padout\ : std_logic;
SIGNAL \HSMC_RX_D_P[16](n)~padout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~4\ : std_logic;
SIGNAL \CLOCK2_50~input_o\ : std_logic;
SIGNAL \CLOCK3_50~input_o\ : std_logic;
SIGNAL \ENETCLK_25~input_o\ : std_logic;
SIGNAL \SMA_CLKIN~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \UART_RTS~input_o\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \SD_WP_N~input_o\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \ENET0_INT_N~input_o\ : std_logic;
SIGNAL \ENET0_MDIO~input_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~input_o\ : std_logic;
SIGNAL \ENET0_RX_COL~input_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~input_o\ : std_logic;
SIGNAL \ENET0_RX_DV~input_o\ : std_logic;
SIGNAL \ENET0_RX_ER~input_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~input_o\ : std_logic;
SIGNAL \ENET0_LINK100~input_o\ : std_logic;
SIGNAL \ENET1_INT_N~input_o\ : std_logic;
SIGNAL \ENET1_MDIO~input_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~input_o\ : std_logic;
SIGNAL \ENET1_RX_COL~input_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~input_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~input_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~input_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~input_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~input_o\ : std_logic;
SIGNAL \ENET1_RX_DV~input_o\ : std_logic;
SIGNAL \ENET1_RX_ER~input_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~input_o\ : std_logic;
SIGNAL \ENET1_LINK100~input_o\ : std_logic;
SIGNAL \TD_CLK27~input_o\ : std_logic;
SIGNAL \TD_DATA[0]~input_o\ : std_logic;
SIGNAL \TD_DATA[1]~input_o\ : std_logic;
SIGNAL \TD_DATA[2]~input_o\ : std_logic;
SIGNAL \TD_DATA[3]~input_o\ : std_logic;
SIGNAL \TD_DATA[4]~input_o\ : std_logic;
SIGNAL \TD_DATA[5]~input_o\ : std_logic;
SIGNAL \TD_DATA[6]~input_o\ : std_logic;
SIGNAL \TD_DATA[7]~input_o\ : std_logic;
SIGNAL \TD_HS~input_o\ : std_logic;
SIGNAL \TD_VS~input_o\ : std_logic;
SIGNAL \OTG_INT~input_o\ : std_logic;
SIGNAL \IRDA_RXD~input_o\ : std_logic;
SIGNAL \FL_RY~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN_P1~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN_P2~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[0]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[1]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[2]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[3]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[4]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[5]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[6]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[7]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[8]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[9]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[10]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[11]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[12]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[13]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[14]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[15]~input_o\ : std_logic;
SIGNAL \HSMC_RX_D_P[16]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \PS2_CLK~input_o\ : std_logic;
SIGNAL \PS2_DAT~input_o\ : std_logic;
SIGNAL \PS2_CLK2~input_o\ : std_logic;
SIGNAL \PS2_DAT2~input_o\ : std_logic;
SIGNAL \SD_CMD~input_o\ : std_logic;
SIGNAL \SD_DAT[0]~input_o\ : std_logic;
SIGNAL \SD_DAT[1]~input_o\ : std_logic;
SIGNAL \SD_DAT[2]~input_o\ : std_logic;
SIGNAL \SD_DAT[3]~input_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \EEP_I2C_SDAT~input_o\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \OTG_DATA[0]~input_o\ : std_logic;
SIGNAL \OTG_DATA[1]~input_o\ : std_logic;
SIGNAL \OTG_DATA[2]~input_o\ : std_logic;
SIGNAL \OTG_DATA[3]~input_o\ : std_logic;
SIGNAL \OTG_DATA[4]~input_o\ : std_logic;
SIGNAL \OTG_DATA[5]~input_o\ : std_logic;
SIGNAL \OTG_DATA[6]~input_o\ : std_logic;
SIGNAL \OTG_DATA[7]~input_o\ : std_logic;
SIGNAL \OTG_DATA[8]~input_o\ : std_logic;
SIGNAL \OTG_DATA[9]~input_o\ : std_logic;
SIGNAL \OTG_DATA[10]~input_o\ : std_logic;
SIGNAL \OTG_DATA[11]~input_o\ : std_logic;
SIGNAL \OTG_DATA[12]~input_o\ : std_logic;
SIGNAL \OTG_DATA[13]~input_o\ : std_logic;
SIGNAL \OTG_DATA[14]~input_o\ : std_logic;
SIGNAL \OTG_DATA[15]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[16]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[17]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[18]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[19]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[20]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[21]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[22]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[23]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[24]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[25]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[26]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[27]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[28]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[29]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[30]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[31]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \FL_DQ[0]~input_o\ : std_logic;
SIGNAL \FL_DQ[1]~input_o\ : std_logic;
SIGNAL \FL_DQ[2]~input_o\ : std_logic;
SIGNAL \FL_DQ[3]~input_o\ : std_logic;
SIGNAL \FL_DQ[4]~input_o\ : std_logic;
SIGNAL \FL_DQ[5]~input_o\ : std_logic;
SIGNAL \FL_DQ[6]~input_o\ : std_logic;
SIGNAL \FL_DQ[7]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[13]~input_o\ : std_logic;
SIGNAL \GPIO[14]~input_o\ : std_logic;
SIGNAL \GPIO[15]~input_o\ : std_logic;
SIGNAL \GPIO[16]~input_o\ : std_logic;
SIGNAL \GPIO[17]~input_o\ : std_logic;
SIGNAL \GPIO[18]~input_o\ : std_logic;
SIGNAL \GPIO[19]~input_o\ : std_logic;
SIGNAL \GPIO[20]~input_o\ : std_logic;
SIGNAL \GPIO[21]~input_o\ : std_logic;
SIGNAL \GPIO[22]~input_o\ : std_logic;
SIGNAL \GPIO[23]~input_o\ : std_logic;
SIGNAL \GPIO[24]~input_o\ : std_logic;
SIGNAL \GPIO[25]~input_o\ : std_logic;
SIGNAL \GPIO[26]~input_o\ : std_logic;
SIGNAL \GPIO[27]~input_o\ : std_logic;
SIGNAL \GPIO[28]~input_o\ : std_logic;
SIGNAL \GPIO[29]~input_o\ : std_logic;
SIGNAL \GPIO[30]~input_o\ : std_logic;
SIGNAL \GPIO[31]~input_o\ : std_logic;
SIGNAL \GPIO[32]~input_o\ : std_logic;
SIGNAL \GPIO[33]~input_o\ : std_logic;
SIGNAL \GPIO[34]~input_o\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \HSMC_D[0]~input_o\ : std_logic;
SIGNAL \HSMC_D[1]~input_o\ : std_logic;
SIGNAL \HSMC_D[2]~input_o\ : std_logic;
SIGNAL \HSMC_D[3]~input_o\ : std_logic;
SIGNAL \EX_IO[0]~input_o\ : std_logic;
SIGNAL \EX_IO[1]~input_o\ : std_logic;
SIGNAL \EX_IO[2]~input_o\ : std_logic;
SIGNAL \EX_IO[3]~input_o\ : std_logic;
SIGNAL \EX_IO[4]~input_o\ : std_logic;
SIGNAL \EX_IO[5]~input_o\ : std_logic;
SIGNAL \EX_IO[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \PS2_CLK~output_o\ : std_logic;
SIGNAL \PS2_DAT~output_o\ : std_logic;
SIGNAL \PS2_CLK2~output_o\ : std_logic;
SIGNAL \PS2_DAT2~output_o\ : std_logic;
SIGNAL \SD_CMD~output_o\ : std_logic;
SIGNAL \SD_DAT[0]~output_o\ : std_logic;
SIGNAL \SD_DAT[1]~output_o\ : std_logic;
SIGNAL \SD_DAT[2]~output_o\ : std_logic;
SIGNAL \SD_DAT[3]~output_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~output_o\ : std_logic;
SIGNAL \AUD_BCLK~output_o\ : std_logic;
SIGNAL \AUD_DACLRCK~output_o\ : std_logic;
SIGNAL \EEP_I2C_SDAT~output_o\ : std_logic;
SIGNAL \I2C_SDAT~output_o\ : std_logic;
SIGNAL \OTG_DATA[0]~output_o\ : std_logic;
SIGNAL \OTG_DATA[1]~output_o\ : std_logic;
SIGNAL \OTG_DATA[2]~output_o\ : std_logic;
SIGNAL \OTG_DATA[3]~output_o\ : std_logic;
SIGNAL \OTG_DATA[4]~output_o\ : std_logic;
SIGNAL \OTG_DATA[5]~output_o\ : std_logic;
SIGNAL \OTG_DATA[6]~output_o\ : std_logic;
SIGNAL \OTG_DATA[7]~output_o\ : std_logic;
SIGNAL \OTG_DATA[8]~output_o\ : std_logic;
SIGNAL \OTG_DATA[9]~output_o\ : std_logic;
SIGNAL \OTG_DATA[10]~output_o\ : std_logic;
SIGNAL \OTG_DATA[11]~output_o\ : std_logic;
SIGNAL \OTG_DATA[12]~output_o\ : std_logic;
SIGNAL \OTG_DATA[13]~output_o\ : std_logic;
SIGNAL \OTG_DATA[14]~output_o\ : std_logic;
SIGNAL \OTG_DATA[15]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[16]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[17]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[18]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[19]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[20]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[21]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[22]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[23]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[24]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[25]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[26]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[27]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[28]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[29]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[30]~output_o\ : std_logic;
SIGNAL \DRAM_DQ[31]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \FL_DQ[0]~output_o\ : std_logic;
SIGNAL \FL_DQ[1]~output_o\ : std_logic;
SIGNAL \FL_DQ[2]~output_o\ : std_logic;
SIGNAL \FL_DQ[3]~output_o\ : std_logic;
SIGNAL \FL_DQ[4]~output_o\ : std_logic;
SIGNAL \FL_DQ[5]~output_o\ : std_logic;
SIGNAL \FL_DQ[6]~output_o\ : std_logic;
SIGNAL \FL_DQ[7]~output_o\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
SIGNAL \GPIO[13]~output_o\ : std_logic;
SIGNAL \GPIO[14]~output_o\ : std_logic;
SIGNAL \GPIO[15]~output_o\ : std_logic;
SIGNAL \GPIO[16]~output_o\ : std_logic;
SIGNAL \GPIO[17]~output_o\ : std_logic;
SIGNAL \GPIO[18]~output_o\ : std_logic;
SIGNAL \GPIO[19]~output_o\ : std_logic;
SIGNAL \GPIO[20]~output_o\ : std_logic;
SIGNAL \GPIO[21]~output_o\ : std_logic;
SIGNAL \GPIO[22]~output_o\ : std_logic;
SIGNAL \GPIO[23]~output_o\ : std_logic;
SIGNAL \GPIO[24]~output_o\ : std_logic;
SIGNAL \GPIO[25]~output_o\ : std_logic;
SIGNAL \GPIO[26]~output_o\ : std_logic;
SIGNAL \GPIO[27]~output_o\ : std_logic;
SIGNAL \GPIO[28]~output_o\ : std_logic;
SIGNAL \GPIO[29]~output_o\ : std_logic;
SIGNAL \GPIO[30]~output_o\ : std_logic;
SIGNAL \GPIO[31]~output_o\ : std_logic;
SIGNAL \GPIO[32]~output_o\ : std_logic;
SIGNAL \GPIO[33]~output_o\ : std_logic;
SIGNAL \GPIO[34]~output_o\ : std_logic;
SIGNAL \GPIO[35]~output_o\ : std_logic;
SIGNAL \HSMC_D[0]~output_o\ : std_logic;
SIGNAL \HSMC_D[1]~output_o\ : std_logic;
SIGNAL \HSMC_D[2]~output_o\ : std_logic;
SIGNAL \HSMC_D[3]~output_o\ : std_logic;
SIGNAL \EX_IO[0]~output_o\ : std_logic;
SIGNAL \EX_IO[1]~output_o\ : std_logic;
SIGNAL \EX_IO[2]~output_o\ : std_logic;
SIGNAL \EX_IO[3]~output_o\ : std_logic;
SIGNAL \EX_IO[4]~output_o\ : std_logic;
SIGNAL \EX_IO[5]~output_o\ : std_logic;
SIGNAL \EX_IO[6]~output_o\ : std_logic;
SIGNAL \SMA_CLKOUT~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \UART_CTS~output_o\ : std_logic;
SIGNAL \UART_TXD~output_o\ : std_logic;
SIGNAL \SD_CLK~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \VGA_BLANK_N~output_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_SYNC_N~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \AUD_DACDAT~output_o\ : std_logic;
SIGNAL \AUD_XCK~output_o\ : std_logic;
SIGNAL \EEP_I2C_SCLK~output_o\ : std_logic;
SIGNAL \I2C_SCLK~output_o\ : std_logic;
SIGNAL \ENET0_GTX_CLK~output_o\ : std_logic;
SIGNAL \ENET0_MDC~output_o\ : std_logic;
SIGNAL \ENET0_RST_N~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[0]~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[1]~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[2]~output_o\ : std_logic;
SIGNAL \ENET0_TX_DATA[3]~output_o\ : std_logic;
SIGNAL \ENET0_TX_EN~output_o\ : std_logic;
SIGNAL \ENET0_TX_ER~output_o\ : std_logic;
SIGNAL \ENET1_GTX_CLK~output_o\ : std_logic;
SIGNAL \ENET1_MDC~output_o\ : std_logic;
SIGNAL \ENET1_RST_N~output_o\ : std_logic;
SIGNAL \ENET1_TX_DATA[0]~output_o\ : std_logic;
SIGNAL \ENET1_TX_DATA[1]~output_o\ : std_logic;
SIGNAL \ENET1_TX_DATA[2]~output_o\ : std_logic;
SIGNAL \ENET1_TX_DATA[3]~output_o\ : std_logic;
SIGNAL \ENET1_TX_EN~output_o\ : std_logic;
SIGNAL \ENET1_TX_ER~output_o\ : std_logic;
SIGNAL \TD_RESET_N~output_o\ : std_logic;
SIGNAL \OTG_ADDR[0]~output_o\ : std_logic;
SIGNAL \OTG_ADDR[1]~output_o\ : std_logic;
SIGNAL \OTG_CS_N~output_o\ : std_logic;
SIGNAL \OTG_WR_N~output_o\ : std_logic;
SIGNAL \OTG_RD_N~output_o\ : std_logic;
SIGNAL \OTG_RST_N~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \DRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \DRAM_BA[0]~output_o\ : std_logic;
SIGNAL \DRAM_BA[1]~output_o\ : std_logic;
SIGNAL \DRAM_CAS_N~output_o\ : std_logic;
SIGNAL \DRAM_CKE~output_o\ : std_logic;
SIGNAL \DRAM_CLK~output_o\ : std_logic;
SIGNAL \DRAM_CS_N~output_o\ : std_logic;
SIGNAL \DRAM_DQM[0]~output_o\ : std_logic;
SIGNAL \DRAM_DQM[1]~output_o\ : std_logic;
SIGNAL \DRAM_DQM[2]~output_o\ : std_logic;
SIGNAL \DRAM_DQM[3]~output_o\ : std_logic;
SIGNAL \DRAM_RAS_N~output_o\ : std_logic;
SIGNAL \DRAM_WE_N~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[13]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[14]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[15]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[16]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[17]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[18]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[19]~output_o\ : std_logic;
SIGNAL \SRAM_CE_N~output_o\ : std_logic;
SIGNAL \SRAM_LB_N~output_o\ : std_logic;
SIGNAL \SRAM_OE_N~output_o\ : std_logic;
SIGNAL \SRAM_UB_N~output_o\ : std_logic;
SIGNAL \SRAM_WE_N~output_o\ : std_logic;
SIGNAL \FL_ADDR[0]~output_o\ : std_logic;
SIGNAL \FL_ADDR[1]~output_o\ : std_logic;
SIGNAL \FL_ADDR[2]~output_o\ : std_logic;
SIGNAL \FL_ADDR[3]~output_o\ : std_logic;
SIGNAL \FL_ADDR[4]~output_o\ : std_logic;
SIGNAL \FL_ADDR[5]~output_o\ : std_logic;
SIGNAL \FL_ADDR[6]~output_o\ : std_logic;
SIGNAL \FL_ADDR[7]~output_o\ : std_logic;
SIGNAL \FL_ADDR[8]~output_o\ : std_logic;
SIGNAL \FL_ADDR[9]~output_o\ : std_logic;
SIGNAL \FL_ADDR[10]~output_o\ : std_logic;
SIGNAL \FL_ADDR[11]~output_o\ : std_logic;
SIGNAL \FL_ADDR[12]~output_o\ : std_logic;
SIGNAL \FL_ADDR[13]~output_o\ : std_logic;
SIGNAL \FL_ADDR[14]~output_o\ : std_logic;
SIGNAL \FL_ADDR[15]~output_o\ : std_logic;
SIGNAL \FL_ADDR[16]~output_o\ : std_logic;
SIGNAL \FL_ADDR[17]~output_o\ : std_logic;
SIGNAL \FL_ADDR[18]~output_o\ : std_logic;
SIGNAL \FL_ADDR[19]~output_o\ : std_logic;
SIGNAL \FL_ADDR[20]~output_o\ : std_logic;
SIGNAL \FL_ADDR[21]~output_o\ : std_logic;
SIGNAL \FL_ADDR[22]~output_o\ : std_logic;
SIGNAL \FL_CE_N~output_o\ : std_logic;
SIGNAL \FL_OE_N~output_o\ : std_logic;
SIGNAL \FL_RST_N~output_o\ : std_logic;
SIGNAL \FL_WE_N~output_o\ : std_logic;
SIGNAL \FL_WP_N~output_o\ : std_logic;
SIGNAL \HSMC_CLKOUT_P1~output_o\ : std_logic;
SIGNAL \HSMC_CLKOUT_P1~0\ : std_logic;
SIGNAL \HSMC_CLKOUT_P2~output_o\ : std_logic;
SIGNAL \HSMC_CLKOUT_P2~0\ : std_logic;
SIGNAL \HSMC_CLKOUT0~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[0]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[0]~0\ : std_logic;
SIGNAL \HSMC_TX_D_P[1]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[1]~1\ : std_logic;
SIGNAL \HSMC_TX_D_P[2]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[2]~2\ : std_logic;
SIGNAL \HSMC_TX_D_P[3]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[3]~3\ : std_logic;
SIGNAL \HSMC_TX_D_P[4]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[4]~4\ : std_logic;
SIGNAL \HSMC_TX_D_P[5]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[5]~5\ : std_logic;
SIGNAL \HSMC_TX_D_P[6]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[6]~6\ : std_logic;
SIGNAL \HSMC_TX_D_P[7]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[7]~7\ : std_logic;
SIGNAL \HSMC_TX_D_P[8]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[8]~8\ : std_logic;
SIGNAL \HSMC_TX_D_P[9]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[9]~9\ : std_logic;
SIGNAL \HSMC_TX_D_P[10]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[10]~10\ : std_logic;
SIGNAL \HSMC_TX_D_P[11]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[11]~11\ : std_logic;
SIGNAL \HSMC_TX_D_P[12]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[12]~12\ : std_logic;
SIGNAL \HSMC_TX_D_P[13]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[13]~13\ : std_logic;
SIGNAL \HSMC_TX_D_P[14]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[14]~14\ : std_logic;
SIGNAL \HSMC_TX_D_P[15]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[15]~15\ : std_logic;
SIGNAL \HSMC_TX_D_P[16]~output_o\ : std_logic;
SIGNAL \HSMC_TX_D_P[16]~16\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \top0|random_r[0]~31_combout\ : std_logic;
SIGNAL \top0|time_r[0]~90_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \deb0|always0~0_combout\ : std_logic;
SIGNAL \deb0|counter_w[1]~1_combout\ : std_logic;
SIGNAL \deb0|counter_w[2]~0_combout\ : std_logic;
SIGNAL \deb0|o_debounced_w~0_combout\ : std_logic;
SIGNAL \deb0|o_debounced_r~q\ : std_logic;
SIGNAL \deb0|counter_w[0]~2_combout\ : std_logic;
SIGNAL \deb0|neg_w~combout\ : std_logic;
SIGNAL \deb0|neg_r~q\ : std_logic;
SIGNAL \top0|counter_r[0]~32_combout\ : std_logic;
SIGNAL \top0|counter_r[24]~81\ : std_logic;
SIGNAL \top0|counter_r[25]~82_combout\ : std_logic;
SIGNAL \top0|counter_r[25]~83\ : std_logic;
SIGNAL \top0|counter_r[26]~84_combout\ : std_logic;
SIGNAL \top0|counter_r[26]~85\ : std_logic;
SIGNAL \top0|counter_r[27]~86_combout\ : std_logic;
SIGNAL \top0|counter_r[27]~87\ : std_logic;
SIGNAL \top0|counter_r[28]~88_combout\ : std_logic;
SIGNAL \top0|counter_r[28]~89\ : std_logic;
SIGNAL \top0|counter_r[29]~90_combout\ : std_logic;
SIGNAL \top0|counter_r[29]~91\ : std_logic;
SIGNAL \top0|counter_r[30]~92_combout\ : std_logic;
SIGNAL \top0|counter_r[30]~93\ : std_logic;
SIGNAL \top0|counter_r[31]~94_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[4]~224_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[3]~225_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_11~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_11~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_11~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[7]~226_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[7]~227_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_11~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[6]~229_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[6]~228_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_22~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[10]~230_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[10]~313_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[9]~231_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_22~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[9]~232_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_25~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_25~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_25~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_25~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_25~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[13]~233_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[13]~314_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_25~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[12]~235_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[12]~234_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[16]~315_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_26~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[16]~236_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_26~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[15]~238_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[15]~237_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_27~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_27~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_27~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_27~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_27~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[19]~239_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[19]~316_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_27~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[18]~241_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[18]~240_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[22]~317_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_28~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[22]~242_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_28~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[21]~244_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[21]~243_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[25]~318_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_29~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[25]~245_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[24]~246_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_29~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[24]~247_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_30~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_30~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_30~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_30~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_30~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[28]~248_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[28]~319_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_30~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[27]~250_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[27]~249_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_1~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[31]~251_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[31]~320_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[30]~252_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[30]~253_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[34]~321_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[34]~254_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[33]~255_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[33]~256_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[37]~257_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[37]~322_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[36]~259_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[36]~258_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[40]~260_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[40]~323_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[39]~261_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[39]~262_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[43]~324_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[43]~263_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[42]~265_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[42]~264_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_6~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[46]~266_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[46]~325_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[45]~267_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[45]~268_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[49]~326_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[49]~269_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[48]~271_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[48]~270_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[52]~327_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[52]~272_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[51]~274_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[51]~273_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_9~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[55]~275_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[55]~328_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[54]~276_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[54]~277_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[58]~278_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[58]~329_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[57]~280_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[57]~279_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_12~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[61]~330_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[61]~281_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[60]~282_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[60]~283_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[64]~331_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[64]~284_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_13~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[63]~286_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[63]~285_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[67]~332_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[67]~287_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[66]~288_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_14~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[66]~289_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[70]~333_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[70]~290_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_15~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[69]~292_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[69]~291_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_16~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_16~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[73]~293_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[73]~334_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[72]~294_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_16~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[72]~295_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_17~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_17~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_17~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_17~6_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[76]~335_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_17~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[76]~296_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_17~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[75]~298_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[75]~297_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[79]~336_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_18~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[79]~299_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_18~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[78]~301_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[78]~300_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[82]~337_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_19~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[82]~302_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_19~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[81]~304_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[81]~303_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_20~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[85]~305_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[85]~338_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[84]~306_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_20~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[84]~307_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_21~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[88]~308_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_21~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[87]~310_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[87]~309_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_23~2_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[91]~311_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[91]~340_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_23~0_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|StageOut[90]~312_combout\ : std_logic;
SIGNAL \top0|counter_top_r[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_24~1_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_24~3_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_24~4_combout\ : std_logic;
SIGNAL \top0|counter_top_r[0]~33\ : std_logic;
SIGNAL \top0|counter_top_r[1]~34_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_23~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_23~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_23~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_23~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[1]~35\ : std_logic;
SIGNAL \top0|counter_top_r[2]~36_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_21~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_21~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_21~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_21~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[2]~37\ : std_logic;
SIGNAL \top0|counter_top_r[3]~38_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_20~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_20~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_20~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_20~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[3]~39\ : std_logic;
SIGNAL \top0|counter_top_r[4]~40_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_19~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_19~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_19~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_19~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[4]~41\ : std_logic;
SIGNAL \top0|counter_top_r[5]~42_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_18~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_18~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_18~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_18~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[5]~43\ : std_logic;
SIGNAL \top0|counter_top_r[6]~44_combout\ : std_logic;
SIGNAL \top0|counter_top_r[6]~45\ : std_logic;
SIGNAL \top0|counter_top_r[7]~46_combout\ : std_logic;
SIGNAL \top0|counter_top_r[7]~47\ : std_logic;
SIGNAL \top0|counter_top_r[8]~48_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_15~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_15~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_15~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_15~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[8]~49\ : std_logic;
SIGNAL \top0|counter_top_r[9]~50_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_14~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_14~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[9]~51\ : std_logic;
SIGNAL \top0|counter_top_r[10]~52_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_13~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_13~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[10]~53\ : std_logic;
SIGNAL \top0|counter_top_r[11]~54_combout\ : std_logic;
SIGNAL \top0|counter_top_r[11]~55\ : std_logic;
SIGNAL \top0|counter_top_r[12]~56_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_10~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[12]~57\ : std_logic;
SIGNAL \top0|counter_top_r[13]~58_combout\ : std_logic;
SIGNAL \top0|counter_top_r[13]~59\ : std_logic;
SIGNAL \top0|counter_top_r[14]~60_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_8~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[14]~61\ : std_logic;
SIGNAL \top0|counter_top_r[15]~62_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_7~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[15]~63\ : std_logic;
SIGNAL \top0|counter_top_r[16]~64_combout\ : std_logic;
SIGNAL \top0|counter_top_r[16]~65\ : std_logic;
SIGNAL \top0|counter_top_r[17]~66_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_5~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[17]~67\ : std_logic;
SIGNAL \top0|counter_top_r[18]~68_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_4~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[18]~69\ : std_logic;
SIGNAL \top0|counter_top_r[19]~70_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_3~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[19]~71\ : std_logic;
SIGNAL \top0|counter_top_r[20]~72_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_2~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[20]~73\ : std_logic;
SIGNAL \top0|counter_top_r[21]~74_combout\ : std_logic;
SIGNAL \top0|counter_top_r[21]~75\ : std_logic;
SIGNAL \top0|counter_top_r[22]~76_combout\ : std_logic;
SIGNAL \top0|counter_top_r[22]~77\ : std_logic;
SIGNAL \top0|counter_top_r[23]~78_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_29~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_29~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_29~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_29~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[23]~79\ : std_logic;
SIGNAL \top0|counter_top_r[24]~80_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_28~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_28~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_28~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_28~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[24]~81\ : std_logic;
SIGNAL \top0|counter_top_r[25]~82_combout\ : std_logic;
SIGNAL \top0|counter_top_r[25]~83\ : std_logic;
SIGNAL \top0|counter_top_r[26]~84_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_26~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_26~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_26~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_26~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[26]~85\ : std_logic;
SIGNAL \top0|counter_top_r[27]~86_combout\ : std_logic;
SIGNAL \top0|counter_top_r[27]~87\ : std_logic;
SIGNAL \top0|counter_top_r[28]~88_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_22~1\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_22~3\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_22~5_cout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|op_22~6_combout\ : std_logic;
SIGNAL \top0|counter_top_r[28]~89\ : std_logic;
SIGNAL \top0|counter_top_r[29]~90_combout\ : std_logic;
SIGNAL \top0|counter_top_r[29]~91\ : std_logic;
SIGNAL \top0|counter_top_r[30]~92_combout\ : std_logic;
SIGNAL \top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \top0|counter_top_r[30]~93\ : std_logic;
SIGNAL \top0|counter_top_r[31]~94_combout\ : std_logic;
SIGNAL \top0|LessThan0~1_cout\ : std_logic;
SIGNAL \top0|LessThan0~3_cout\ : std_logic;
SIGNAL \top0|LessThan0~5_cout\ : std_logic;
SIGNAL \top0|LessThan0~7_cout\ : std_logic;
SIGNAL \top0|LessThan0~9_cout\ : std_logic;
SIGNAL \top0|LessThan0~11_cout\ : std_logic;
SIGNAL \top0|LessThan0~13_cout\ : std_logic;
SIGNAL \top0|LessThan0~15_cout\ : std_logic;
SIGNAL \top0|LessThan0~17_cout\ : std_logic;
SIGNAL \top0|LessThan0~19_cout\ : std_logic;
SIGNAL \top0|LessThan0~21_cout\ : std_logic;
SIGNAL \top0|LessThan0~23_cout\ : std_logic;
SIGNAL \top0|LessThan0~25_cout\ : std_logic;
SIGNAL \top0|LessThan0~27_cout\ : std_logic;
SIGNAL \top0|LessThan0~29_cout\ : std_logic;
SIGNAL \top0|LessThan0~31_cout\ : std_logic;
SIGNAL \top0|LessThan0~33_cout\ : std_logic;
SIGNAL \top0|LessThan0~35_cout\ : std_logic;
SIGNAL \top0|LessThan0~37_cout\ : std_logic;
SIGNAL \top0|LessThan0~39_cout\ : std_logic;
SIGNAL \top0|LessThan0~41_cout\ : std_logic;
SIGNAL \top0|LessThan0~43_cout\ : std_logic;
SIGNAL \top0|LessThan0~45_cout\ : std_logic;
SIGNAL \top0|LessThan0~47_cout\ : std_logic;
SIGNAL \top0|LessThan0~49_cout\ : std_logic;
SIGNAL \top0|LessThan0~51_cout\ : std_logic;
SIGNAL \top0|LessThan0~53_cout\ : std_logic;
SIGNAL \top0|LessThan0~55_cout\ : std_logic;
SIGNAL \top0|LessThan0~57_cout\ : std_logic;
SIGNAL \top0|LessThan0~59_cout\ : std_logic;
SIGNAL \top0|LessThan0~61_cout\ : std_logic;
SIGNAL \top0|LessThan0~62_combout\ : std_logic;
SIGNAL \top0|counter_r[11]~96_combout\ : std_logic;
SIGNAL \top0|counter_r[0]~33\ : std_logic;
SIGNAL \top0|counter_r[1]~34_combout\ : std_logic;
SIGNAL \top0|counter_r[1]~35\ : std_logic;
SIGNAL \top0|counter_r[2]~36_combout\ : std_logic;
SIGNAL \top0|counter_r[2]~37\ : std_logic;
SIGNAL \top0|counter_r[3]~38_combout\ : std_logic;
SIGNAL \top0|counter_r[3]~39\ : std_logic;
SIGNAL \top0|counter_r[4]~40_combout\ : std_logic;
SIGNAL \top0|counter_r[4]~41\ : std_logic;
SIGNAL \top0|counter_r[5]~42_combout\ : std_logic;
SIGNAL \top0|counter_r[5]~43\ : std_logic;
SIGNAL \top0|counter_r[6]~44_combout\ : std_logic;
SIGNAL \top0|counter_r[6]~45\ : std_logic;
SIGNAL \top0|counter_r[7]~46_combout\ : std_logic;
SIGNAL \top0|counter_r[7]~47\ : std_logic;
SIGNAL \top0|counter_r[8]~48_combout\ : std_logic;
SIGNAL \top0|counter_r[8]~49\ : std_logic;
SIGNAL \top0|counter_r[9]~50_combout\ : std_logic;
SIGNAL \top0|counter_r[9]~51\ : std_logic;
SIGNAL \top0|counter_r[10]~52_combout\ : std_logic;
SIGNAL \top0|counter_r[10]~53\ : std_logic;
SIGNAL \top0|counter_r[11]~54_combout\ : std_logic;
SIGNAL \top0|counter_r[11]~55\ : std_logic;
SIGNAL \top0|counter_r[12]~56_combout\ : std_logic;
SIGNAL \top0|counter_r[12]~57\ : std_logic;
SIGNAL \top0|counter_r[13]~58_combout\ : std_logic;
SIGNAL \top0|counter_r[13]~59\ : std_logic;
SIGNAL \top0|counter_r[14]~60_combout\ : std_logic;
SIGNAL \top0|counter_r[14]~61\ : std_logic;
SIGNAL \top0|counter_r[15]~62_combout\ : std_logic;
SIGNAL \top0|counter_r[15]~63\ : std_logic;
SIGNAL \top0|counter_r[16]~64_combout\ : std_logic;
SIGNAL \top0|counter_r[16]~65\ : std_logic;
SIGNAL \top0|counter_r[17]~66_combout\ : std_logic;
SIGNAL \top0|counter_r[17]~67\ : std_logic;
SIGNAL \top0|counter_r[18]~68_combout\ : std_logic;
SIGNAL \top0|counter_r[18]~69\ : std_logic;
SIGNAL \top0|counter_r[19]~70_combout\ : std_logic;
SIGNAL \top0|counter_r[19]~71\ : std_logic;
SIGNAL \top0|counter_r[20]~72_combout\ : std_logic;
SIGNAL \top0|counter_r[20]~73\ : std_logic;
SIGNAL \top0|counter_r[21]~74_combout\ : std_logic;
SIGNAL \top0|counter_r[21]~75\ : std_logic;
SIGNAL \top0|counter_r[22]~76_combout\ : std_logic;
SIGNAL \top0|counter_r[22]~77\ : std_logic;
SIGNAL \top0|counter_r[23]~78_combout\ : std_logic;
SIGNAL \top0|counter_r[23]~79\ : std_logic;
SIGNAL \top0|counter_r[24]~80_combout\ : std_logic;
SIGNAL \top0|state_r~1_combout\ : std_logic;
SIGNAL \top0|state_r~2_combout\ : std_logic;
SIGNAL \top0|state_r~3_combout\ : std_logic;
SIGNAL \top0|state_r~4_combout\ : std_logic;
SIGNAL \top0|state_r~5_combout\ : std_logic;
SIGNAL \top0|state_r~6_combout\ : std_logic;
SIGNAL \top0|state_r~0_combout\ : std_logic;
SIGNAL \top0|state_r~7_combout\ : std_logic;
SIGNAL \top0|state_r~8_combout\ : std_logic;
SIGNAL \top0|state_r~q\ : std_logic;
SIGNAL \top0|random_r[18]~65_combout\ : std_logic;
SIGNAL \top0|random_r[0]~32\ : std_logic;
SIGNAL \top0|random_r[1]~33_combout\ : std_logic;
SIGNAL \top0|time_r[1]~30_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \top0|random_r[1]~34\ : std_logic;
SIGNAL \top0|random_r[2]~36\ : std_logic;
SIGNAL \top0|random_r[3]~38\ : std_logic;
SIGNAL \top0|random_r[4]~40\ : std_logic;
SIGNAL \top0|random_r[5]~42\ : std_logic;
SIGNAL \top0|random_r[6]~44\ : std_logic;
SIGNAL \top0|random_r[7]~46\ : std_logic;
SIGNAL \top0|random_r[8]~48\ : std_logic;
SIGNAL \top0|random_r[9]~50\ : std_logic;
SIGNAL \top0|random_r[10]~52\ : std_logic;
SIGNAL \top0|random_r[11]~54\ : std_logic;
SIGNAL \top0|random_r[12]~56\ : std_logic;
SIGNAL \top0|random_r[13]~58\ : std_logic;
SIGNAL \top0|random_r[14]~60\ : std_logic;
SIGNAL \top0|random_r[15]~62\ : std_logic;
SIGNAL \top0|random_r[16]~63_combout\ : std_logic;
SIGNAL \top0|time_r[1]~31\ : std_logic;
SIGNAL \top0|time_r[2]~32_combout\ : std_logic;
SIGNAL \top0|time_r[2]~33\ : std_logic;
SIGNAL \top0|time_r[3]~34_combout\ : std_logic;
SIGNAL \top0|time_r[3]~35\ : std_logic;
SIGNAL \top0|time_r[4]~36_combout\ : std_logic;
SIGNAL \top0|time_r[4]~37\ : std_logic;
SIGNAL \top0|time_r[5]~38_combout\ : std_logic;
SIGNAL \top0|time_r[5]~39\ : std_logic;
SIGNAL \top0|time_r[6]~40_combout\ : std_logic;
SIGNAL \top0|time_r[6]~41\ : std_logic;
SIGNAL \top0|time_r[7]~42_combout\ : std_logic;
SIGNAL \top0|time_r[7]~43\ : std_logic;
SIGNAL \top0|time_r[8]~44_combout\ : std_logic;
SIGNAL \top0|time_r[8]~45\ : std_logic;
SIGNAL \top0|time_r[9]~46_combout\ : std_logic;
SIGNAL \top0|time_r[9]~47\ : std_logic;
SIGNAL \top0|time_r[10]~48_combout\ : std_logic;
SIGNAL \top0|time_r[10]~49\ : std_logic;
SIGNAL \top0|time_r[11]~50_combout\ : std_logic;
SIGNAL \top0|time_r[11]~51\ : std_logic;
SIGNAL \top0|time_r[12]~52_combout\ : std_logic;
SIGNAL \top0|time_r[12]~53\ : std_logic;
SIGNAL \top0|time_r[13]~54_combout\ : std_logic;
SIGNAL \top0|time_r[13]~55\ : std_logic;
SIGNAL \top0|time_r[14]~56_combout\ : std_logic;
SIGNAL \top0|time_r[14]~57\ : std_logic;
SIGNAL \top0|time_r[15]~58_combout\ : std_logic;
SIGNAL \top0|time_r[15]~59\ : std_logic;
SIGNAL \top0|time_r[16]~60_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \top0|random_r[15]~61_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \top0|random_r[14]~59_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \top0|random_r[13]~57_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \top0|random_r[12]~55_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \top0|random_r[11]~53_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \top0|random_r[10]~51_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \top0|random_r[9]~49_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \top0|random_r[8]~47_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \top0|random_r[7]~45_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \top0|random_r[6]~43_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \top0|random_r[5]~41_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \top0|random_r[4]~39_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \top0|random_r[3]~37_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \top0|random_r[2]~35_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \top0|random_r[16]~64\ : std_logic;
SIGNAL \top0|random_r[17]~66_combout\ : std_logic;
SIGNAL \top0|time_r[16]~61\ : std_logic;
SIGNAL \top0|time_r[17]~62_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~4\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~11\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~13\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~15\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~17\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \top0|random_r[17]~67\ : std_logic;
SIGNAL \top0|random_r[18]~69\ : std_logic;
SIGNAL \top0|random_r[19]~71\ : std_logic;
SIGNAL \top0|random_r[20]~73\ : std_logic;
SIGNAL \top0|random_r[21]~75\ : std_logic;
SIGNAL \top0|random_r[22]~77\ : std_logic;
SIGNAL \top0|random_r[23]~79\ : std_logic;
SIGNAL \top0|random_r[24]~81\ : std_logic;
SIGNAL \top0|random_r[25]~83\ : std_logic;
SIGNAL \top0|random_r[26]~85\ : std_logic;
SIGNAL \top0|random_r[27]~87\ : std_logic;
SIGNAL \top0|random_r[28]~89\ : std_logic;
SIGNAL \top0|random_r[29]~91\ : std_logic;
SIGNAL \top0|random_r[30]~92_combout\ : std_logic;
SIGNAL \top0|time_r[17]~63\ : std_logic;
SIGNAL \top0|time_r[18]~64_combout\ : std_logic;
SIGNAL \top0|time_r[18]~65\ : std_logic;
SIGNAL \top0|time_r[19]~66_combout\ : std_logic;
SIGNAL \top0|time_r[19]~67\ : std_logic;
SIGNAL \top0|time_r[20]~68_combout\ : std_logic;
SIGNAL \top0|time_r[20]~69\ : std_logic;
SIGNAL \top0|time_r[21]~70_combout\ : std_logic;
SIGNAL \top0|time_r[21]~71\ : std_logic;
SIGNAL \top0|time_r[22]~72_combout\ : std_logic;
SIGNAL \top0|time_r[22]~73\ : std_logic;
SIGNAL \top0|time_r[23]~74_combout\ : std_logic;
SIGNAL \top0|time_r[23]~75\ : std_logic;
SIGNAL \top0|time_r[24]~76_combout\ : std_logic;
SIGNAL \top0|time_r[24]~77\ : std_logic;
SIGNAL \top0|time_r[25]~78_combout\ : std_logic;
SIGNAL \top0|time_r[25]~79\ : std_logic;
SIGNAL \top0|time_r[26]~80_combout\ : std_logic;
SIGNAL \top0|time_r[26]~81\ : std_logic;
SIGNAL \top0|time_r[27]~82_combout\ : std_logic;
SIGNAL \top0|time_r[27]~83\ : std_logic;
SIGNAL \top0|time_r[28]~84_combout\ : std_logic;
SIGNAL \top0|time_r[28]~85\ : std_logic;
SIGNAL \top0|time_r[29]~86_combout\ : std_logic;
SIGNAL \top0|time_r[29]~87\ : std_logic;
SIGNAL \top0|time_r[30]~88_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \top0|random_r[29]~90_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \top0|random_r[28]~88_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \top0|random_r[27]~86_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \top0|random_r[26]~84_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \top0|random_r[25]~82_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \top0|random_r[24]~80_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \top0|random_r[23]~78_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \top0|random_r[22]~76_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \top0|random_r[21]~74_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \top0|random_r[20]~72_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \top0|random_r[18]~68_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \top0|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \top0|random_r[19]~70_combout\ : std_logic;
SIGNAL \seven_dec0|WideOr6~0_combout\ : std_logic;
SIGNAL \seven_dec0|WideOr5~0_combout\ : std_logic;
SIGNAL \seven_dec0|o_seven_one[2]~0_combout\ : std_logic;
SIGNAL \seven_dec0|WideOr4~0_combout\ : std_logic;
SIGNAL \seven_dec0|WideOr3~0_combout\ : std_logic;
SIGNAL \seven_dec0|WideOr2~0_combout\ : std_logic;
SIGNAL \seven_dec0|WideOr1~0_combout\ : std_logic;
SIGNAL \seven_dec0|WideOr0~0_combout\ : std_logic;
SIGNAL \top0|counter_top_r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \deb0|counter_r\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \top0|counter_r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \top0|time_r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \top0|Mult0|auto_generated|w497w\ : std_logic_vector(62 DOWNTO 0);
SIGNAL \top0|random_r\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \seven_dec0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \seven_dec0|ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_CLOCK2_50 <= CLOCK2_50;
ww_CLOCK3_50 <= CLOCK3_50;
ww_ENETCLK_25 <= ENETCLK_25;
ww_SMA_CLKIN <= SMA_CLKIN;
SMA_CLKOUT <= ww_SMA_CLKOUT;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LCD_BLON <= ww_LCD_BLON;
LCD_EN <= ww_LCD_EN;
LCD_ON <= ww_LCD_ON;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
UART_CTS <= ww_UART_CTS;
ww_UART_RTS <= UART_RTS;
ww_UART_RXD <= UART_RXD;
UART_TXD <= ww_UART_TXD;
SD_CLK <= ww_SD_CLK;
ww_SD_WP_N <= SD_WP_N;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_CLK <= ww_VGA_CLK;
VGA_G <= ww_VGA_G;
VGA_HS <= ww_VGA_HS;
VGA_R <= ww_VGA_R;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_VS <= ww_VGA_VS;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_XCK <= ww_AUD_XCK;
EEP_I2C_SCLK <= ww_EEP_I2C_SCLK;
I2C_SCLK <= ww_I2C_SCLK;
ENET0_GTX_CLK <= ww_ENET0_GTX_CLK;
ww_ENET0_INT_N <= ENET0_INT_N;
ENET0_MDC <= ww_ENET0_MDC;
ww_ENET0_MDIO <= ENET0_MDIO;
ENET0_RST_N <= ww_ENET0_RST_N;
ww_ENET0_RX_CLK <= ENET0_RX_CLK;
ww_ENET0_RX_COL <= ENET0_RX_COL;
ww_ENET0_RX_CRS <= ENET0_RX_CRS;
ww_ENET0_RX_DATA <= ENET0_RX_DATA;
ww_ENET0_RX_DV <= ENET0_RX_DV;
ww_ENET0_RX_ER <= ENET0_RX_ER;
ww_ENET0_TX_CLK <= ENET0_TX_CLK;
ENET0_TX_DATA <= ww_ENET0_TX_DATA;
ENET0_TX_EN <= ww_ENET0_TX_EN;
ENET0_TX_ER <= ww_ENET0_TX_ER;
ww_ENET0_LINK100 <= ENET0_LINK100;
ENET1_GTX_CLK <= ww_ENET1_GTX_CLK;
ww_ENET1_INT_N <= ENET1_INT_N;
ENET1_MDC <= ww_ENET1_MDC;
ww_ENET1_MDIO <= ENET1_MDIO;
ENET1_RST_N <= ww_ENET1_RST_N;
ww_ENET1_RX_CLK <= ENET1_RX_CLK;
ww_ENET1_RX_COL <= ENET1_RX_COL;
ww_ENET1_RX_CRS <= ENET1_RX_CRS;
ww_ENET1_RX_DATA <= ENET1_RX_DATA;
ww_ENET1_RX_DV <= ENET1_RX_DV;
ww_ENET1_RX_ER <= ENET1_RX_ER;
ww_ENET1_TX_CLK <= ENET1_TX_CLK;
ENET1_TX_DATA <= ww_ENET1_TX_DATA;
ENET1_TX_EN <= ww_ENET1_TX_EN;
ENET1_TX_ER <= ww_ENET1_TX_ER;
ww_ENET1_LINK100 <= ENET1_LINK100;
ww_TD_CLK27 <= TD_CLK27;
ww_TD_DATA <= TD_DATA;
ww_TD_HS <= TD_HS;
TD_RESET_N <= ww_TD_RESET_N;
ww_TD_VS <= TD_VS;
OTG_ADDR <= ww_OTG_ADDR;
OTG_CS_N <= ww_OTG_CS_N;
OTG_WR_N <= ww_OTG_WR_N;
OTG_RD_N <= ww_OTG_RD_N;
ww_OTG_INT <= OTG_INT;
OTG_RST_N <= ww_OTG_RST_N;
ww_IRDA_RXD <= IRDA_RXD;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA <= ww_DRAM_BA;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_CLK <= ww_DRAM_CLK;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_DQM <= ww_DRAM_DQM;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_WE_N <= ww_DRAM_WE_N;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_WE_N <= ww_SRAM_WE_N;
FL_ADDR <= ww_FL_ADDR;
FL_CE_N <= ww_FL_CE_N;
FL_OE_N <= ww_FL_OE_N;
FL_RST_N <= ww_FL_RST_N;
ww_FL_RY <= FL_RY;
FL_WE_N <= ww_FL_WE_N;
FL_WP_N <= ww_FL_WP_N;
ww_HSMC_CLKIN_P1 <= HSMC_CLKIN_P1;
ww_HSMC_CLKIN_P2 <= HSMC_CLKIN_P2;
ww_HSMC_CLKIN0 <= HSMC_CLKIN0;
HSMC_CLKOUT_P1 <= ww_HSMC_CLKOUT_P1;
HSMC_CLKOUT_P2 <= ww_HSMC_CLKOUT_P2;
HSMC_CLKOUT0 <= ww_HSMC_CLKOUT0;
ww_HSMC_RX_D_P <= HSMC_RX_D_P;
HSMC_TX_D_P <= ww_HSMC_TX_D_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\top0|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\top0|Mult0|auto_generated|mac_mult1~DATAOUT35\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT34\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT33\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT32\ & 
\top0|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\top0|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\top0|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\top0|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\top0|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\top0|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \top0|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\top0|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \top0|Mult0|auto_generated|mac_mult1~dataout\);

\top0|Mult0|auto_generated|w497w\(0) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\top0|Mult0|auto_generated|w497w\(1) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\top0|Mult0|auto_generated|w497w\(2) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\top0|Mult0|auto_generated|w497w\(3) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\top0|Mult0|auto_generated|w497w\(4) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\top0|Mult0|auto_generated|w497w\(5) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\top0|Mult0|auto_generated|w497w\(6) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\top0|Mult0|auto_generated|w497w\(7) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\top0|Mult0|auto_generated|w497w\(8) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\top0|Mult0|auto_generated|w497w\(9) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\top0|Mult0|auto_generated|w497w\(10) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\top0|Mult0|auto_generated|w497w\(11) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\top0|Mult0|auto_generated|w497w\(12) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\top0|Mult0|auto_generated|w497w\(13) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\top0|Mult0|auto_generated|w497w\(14) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\top0|Mult0|auto_generated|w497w\(15) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\top0|Mult0|auto_generated|w497w\(16) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\top0|Mult0|auto_generated|w497w\(17) <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\top0|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\top0|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\top0|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\top0|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\top0|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\top0|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\top0|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\top0|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\top0|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\top0|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\top0|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\top0|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\top0|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\top0|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\top0|Mult0|auto_generated|mac_out2~DATAOUT32\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\top0|Mult0|auto_generated|mac_out2~DATAOUT33\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\top0|Mult0|auto_generated|mac_out2~DATAOUT34\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\top0|Mult0|auto_generated|mac_out2~DATAOUT35\ <= \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\top0|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\top0|Mult0|auto_generated|mac_mult3~DATAOUT30\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT29\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT28\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT27\ & 
\top0|Mult0|auto_generated|mac_mult3~DATAOUT26\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT25\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT24\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT23\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT22\ & 
\top0|Mult0|auto_generated|mac_mult3~DATAOUT21\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT20\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT19\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT18\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT17\ & 
\top0|Mult0|auto_generated|mac_mult3~DATAOUT16\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT15\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT14\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT13\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT12\ & 
\top0|Mult0|auto_generated|mac_mult3~DATAOUT11\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT10\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT9\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT8\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT7\ & 
\top0|Mult0|auto_generated|mac_mult3~DATAOUT6\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT5\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT4\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT3\ & \top0|Mult0|auto_generated|mac_mult3~DATAOUT2\ & 
\top0|Mult0|auto_generated|mac_mult3~DATAOUT1\ & \top0|Mult0|auto_generated|mac_mult3~dataout\ & \top0|Mult0|auto_generated|mac_mult3~4\ & \top0|Mult0|auto_generated|mac_mult3~3\ & \top0|Mult0|auto_generated|mac_mult3~2\ & 
\top0|Mult0|auto_generated|mac_mult3~1\ & \top0|Mult0|auto_generated|mac_mult3~0\);

\top0|Mult0|auto_generated|mac_out4~0\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\top0|Mult0|auto_generated|mac_out4~1\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\top0|Mult0|auto_generated|mac_out4~2\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\top0|Mult0|auto_generated|mac_out4~3\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\top0|Mult0|auto_generated|mac_out4~4\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\top0|Mult0|auto_generated|mac_out4~dataout\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\top0|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\top0|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\top0|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\top0|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\top0|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\top0|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\top0|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\top0|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\top0|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\top0|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\top0|Mult0|auto_generated|mac_out4~DATAOUT11\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\top0|Mult0|auto_generated|mac_out4~DATAOUT12\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\top0|Mult0|auto_generated|mac_out4~DATAOUT13\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\top0|Mult0|auto_generated|mac_out4~DATAOUT14\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\top0|Mult0|auto_generated|mac_out4~DATAOUT15\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\top0|Mult0|auto_generated|mac_out4~DATAOUT16\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\top0|Mult0|auto_generated|mac_out4~DATAOUT17\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\top0|Mult0|auto_generated|mac_out4~DATAOUT18\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\top0|Mult0|auto_generated|mac_out4~DATAOUT19\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\top0|Mult0|auto_generated|mac_out4~DATAOUT20\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\top0|Mult0|auto_generated|mac_out4~DATAOUT21\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\top0|Mult0|auto_generated|mac_out4~DATAOUT22\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\top0|Mult0|auto_generated|mac_out4~DATAOUT23\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\top0|Mult0|auto_generated|mac_out4~DATAOUT24\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\top0|Mult0|auto_generated|mac_out4~DATAOUT25\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\top0|Mult0|auto_generated|mac_out4~DATAOUT26\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\top0|Mult0|auto_generated|mac_out4~DATAOUT27\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\top0|Mult0|auto_generated|mac_out4~DATAOUT28\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\top0|Mult0|auto_generated|mac_out4~DATAOUT29\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\top0|Mult0|auto_generated|mac_out4~DATAOUT30\ <= \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\top0|Mult0|auto_generated|mac_out6_DATAA_bus\ <= (\top0|Mult0|auto_generated|mac_mult5~DATAOUT30\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT29\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT28\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT27\ & 
\top0|Mult0|auto_generated|mac_mult5~DATAOUT26\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT25\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT24\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT23\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT22\ & 
\top0|Mult0|auto_generated|mac_mult5~DATAOUT21\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT20\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT19\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT18\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT17\ & 
\top0|Mult0|auto_generated|mac_mult5~DATAOUT16\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT15\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT14\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT13\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT12\ & 
\top0|Mult0|auto_generated|mac_mult5~DATAOUT11\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT10\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT9\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT8\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT7\ & 
\top0|Mult0|auto_generated|mac_mult5~DATAOUT6\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT5\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT4\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT3\ & \top0|Mult0|auto_generated|mac_mult5~DATAOUT2\ & 
\top0|Mult0|auto_generated|mac_mult5~DATAOUT1\ & \top0|Mult0|auto_generated|mac_mult5~dataout\ & \top0|Mult0|auto_generated|mac_mult5~4\ & \top0|Mult0|auto_generated|mac_mult5~3\ & \top0|Mult0|auto_generated|mac_mult5~2\ & 
\top0|Mult0|auto_generated|mac_mult5~1\ & \top0|Mult0|auto_generated|mac_mult5~0\);

\top0|Mult0|auto_generated|mac_out6~0\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\top0|Mult0|auto_generated|mac_out6~1\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\top0|Mult0|auto_generated|mac_out6~2\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\top0|Mult0|auto_generated|mac_out6~3\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\top0|Mult0|auto_generated|mac_out6~4\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\top0|Mult0|auto_generated|mac_out6~dataout\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\top0|Mult0|auto_generated|mac_out6~DATAOUT1\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\top0|Mult0|auto_generated|mac_out6~DATAOUT2\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\top0|Mult0|auto_generated|mac_out6~DATAOUT3\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\top0|Mult0|auto_generated|mac_out6~DATAOUT4\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\top0|Mult0|auto_generated|mac_out6~DATAOUT5\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\top0|Mult0|auto_generated|mac_out6~DATAOUT6\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\top0|Mult0|auto_generated|mac_out6~DATAOUT7\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\top0|Mult0|auto_generated|mac_out6~DATAOUT8\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\top0|Mult0|auto_generated|mac_out6~DATAOUT9\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\top0|Mult0|auto_generated|mac_out6~DATAOUT10\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\top0|Mult0|auto_generated|mac_out6~DATAOUT11\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\top0|Mult0|auto_generated|mac_out6~DATAOUT12\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\top0|Mult0|auto_generated|mac_out6~DATAOUT13\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\top0|Mult0|auto_generated|mac_out6~DATAOUT14\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\top0|Mult0|auto_generated|mac_out6~DATAOUT15\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\top0|Mult0|auto_generated|mac_out6~DATAOUT16\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\top0|Mult0|auto_generated|mac_out6~DATAOUT17\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\top0|Mult0|auto_generated|mac_out6~DATAOUT18\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\top0|Mult0|auto_generated|mac_out6~DATAOUT19\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\top0|Mult0|auto_generated|mac_out6~DATAOUT20\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\top0|Mult0|auto_generated|mac_out6~DATAOUT21\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\top0|Mult0|auto_generated|mac_out6~DATAOUT22\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\top0|Mult0|auto_generated|mac_out6~DATAOUT23\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\top0|Mult0|auto_generated|mac_out6~DATAOUT24\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\top0|Mult0|auto_generated|mac_out6~DATAOUT25\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\top0|Mult0|auto_generated|mac_out6~DATAOUT26\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\top0|Mult0|auto_generated|mac_out6~DATAOUT27\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\top0|Mult0|auto_generated|mac_out6~DATAOUT28\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\top0|Mult0|auto_generated|mac_out6~DATAOUT29\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\top0|Mult0|auto_generated|mac_out6~DATAOUT30\ <= \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\top0|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\top0|random_r\(17) & \top0|random_r\(16) & \top0|random_r\(15) & \top0|random_r\(14) & \top0|random_r\(13) & \top0|random_r\(12) & \top0|random_r\(11) & \top0|random_r\(10) & 
\top0|random_r\(9) & \top0|random_r\(8) & \top0|random_r\(7) & \top0|random_r\(6) & \top0|random_r\(5) & \top0|random_r\(4) & \top0|random_r\(3) & \top0|random_r\(2) & \top0|random_r\(1) & \top0|random_r\(0));

\top0|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & gnd & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & gnd & vcc);

\top0|Mult0|auto_generated|mac_mult1~dataout\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\top0|Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\top0|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\top0|random_r\(17) & \top0|random_r\(16) & \top0|random_r\(15) & \top0|random_r\(14) & \top0|random_r\(13) & \top0|random_r\(12) & \top0|random_r\(11) & \top0|random_r\(10) & 
\top0|random_r\(9) & \top0|random_r\(8) & \top0|random_r\(7) & \top0|random_r\(6) & \top0|random_r\(5) & \top0|random_r\(4) & \top0|random_r\(3) & \top0|random_r\(2) & \top0|random_r\(1) & \top0|random_r\(0));

\top0|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (vcc & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd);

\top0|Mult0|auto_generated|mac_mult3~0\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\top0|Mult0|auto_generated|mac_mult3~1\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\top0|Mult0|auto_generated|mac_mult3~2\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\top0|Mult0|auto_generated|mac_mult3~3\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\top0|Mult0|auto_generated|mac_mult3~4\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\top0|Mult0|auto_generated|mac_mult3~dataout\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\top0|Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\top0|Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (vcc & gnd & gnd & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & vcc & gnd & vcc);

\top0|Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\top0|random_r\(30) & \top0|random_r\(29) & \top0|random_r\(28) & \top0|random_r\(27) & \top0|random_r\(26) & \top0|random_r\(25) & \top0|random_r\(24) & \top0|random_r\(23) & 
\top0|random_r\(22) & \top0|random_r\(21) & \top0|random_r\(20) & \top0|random_r\(19) & \top0|random_r\(18) & gnd & gnd & gnd & gnd & gnd);

\top0|Mult0|auto_generated|mac_mult5~0\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\top0|Mult0|auto_generated|mac_mult5~1\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\top0|Mult0|auto_generated|mac_mult5~2\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\top0|Mult0|auto_generated|mac_mult5~3\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\top0|Mult0|auto_generated|mac_mult5~4\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\top0|Mult0|auto_generated|mac_mult5~dataout\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\top0|Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\seven_dec0|ALT_INV_WideOr0~0_combout\ <= NOT \seven_dec0|WideOr0~0_combout\;
\seven_dec0|ALT_INV_WideOr1~0_combout\ <= NOT \seven_dec0|WideOr1~0_combout\;

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\PS2_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \PS2_CLK~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\PS2_DAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \PS2_DAT~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\PS2_CLK2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \PS2_CLK2~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\PS2_DAT2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \PS2_DAT2~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\SD_CMD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_CMD~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\SD_DAT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_DAT[0]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\SD_DAT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_DAT[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\SD_DAT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_DAT[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\SD_DAT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SD_DAT[3]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\AUD_ADCLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \AUD_ADCLRCK~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\AUD_BCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \AUD_BCLK~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\AUD_DACLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \AUD_DACLRCK~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\EEP_I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EEP_I2C_SDAT~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \I2C_SDAT~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\OTG_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\OTG_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\OTG_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\OTG_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\OTG_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\OTG_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\OTG_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\OTG_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\OTG_DATA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[8]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\OTG_DATA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[9]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\OTG_DATA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[10]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\OTG_DATA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[11]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\OTG_DATA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[12]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\OTG_DATA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[13]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\OTG_DATA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[14]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\OTG_DATA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OTG_DATA[15]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\DRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\DRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\DRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\DRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\DRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\DRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\DRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\DRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\DRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\DRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\DRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\DRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\DRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\DRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\DRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\DRAM_DQ[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[16]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\DRAM_DQ[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[17]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\DRAM_DQ[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[18]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\DRAM_DQ[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[19]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\DRAM_DQ[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[20]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\DRAM_DQ[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[21]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\DRAM_DQ[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[22]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\DRAM_DQ[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[23]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\DRAM_DQ[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[24]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\DRAM_DQ[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\DRAM_DQ[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[26]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\DRAM_DQ[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[27]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\DRAM_DQ[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[28]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\DRAM_DQ[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[29]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DRAM_DQ[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[30]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\DRAM_DQ[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DRAM_DQ[31]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\SRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\SRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\SRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\SRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\SRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\SRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\SRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\SRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\SRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\SRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\SRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\SRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\SRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\SRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\SRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\SRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\FL_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\FL_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\FL_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\FL_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[3]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\FL_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\FL_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[5]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\FL_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[6]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\FL_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \FL_DQ[7]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[3]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[4]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[8]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[9]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\GPIO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\GPIO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\GPIO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[15]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\GPIO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[16]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\GPIO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[17]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\GPIO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[18]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\GPIO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[19]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\GPIO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[20]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\GPIO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[21]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\GPIO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\GPIO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\GPIO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[24]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\GPIO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\GPIO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[26]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\GPIO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[27]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\GPIO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[29]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[30]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[31]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[32]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[33]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[34]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[35]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\HSMC_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HSMC_D[0]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\HSMC_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HSMC_D[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\HSMC_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HSMC_D[2]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\HSMC_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HSMC_D[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\EX_IO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\EX_IO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\EX_IO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\EX_IO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[3]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\EX_IO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[4]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\EX_IO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\EX_IO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\SMA_CLKOUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SMA_CLKOUT~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|o_seven_one[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seven_dec0|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\UART_CTS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UART_CTS~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\UART_TXD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UART_TXD~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\SD_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SD_CLK~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_BLANK_N~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_SYNC_N~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUD_DACDAT~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \AUD_XCK~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\EEP_I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EEP_I2C_SCLK~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \I2C_SCLK~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\ENET0_GTX_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_GTX_CLK~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\ENET0_MDC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_MDC~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\ENET0_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_RST_N~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\ENET0_TX_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\ENET0_TX_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\ENET0_TX_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[2]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\ENET0_TX_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_DATA[3]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\ENET0_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_EN~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\ENET0_TX_ER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET0_TX_ER~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\ENET1_GTX_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_GTX_CLK~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\ENET1_MDC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_MDC~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\ENET1_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_RST_N~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\ENET1_TX_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_TX_DATA[0]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\ENET1_TX_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_TX_DATA[1]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\ENET1_TX_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_TX_DATA[2]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\ENET1_TX_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_TX_DATA[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\ENET1_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_TX_EN~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\ENET1_TX_ER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENET1_TX_ER~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\TD_RESET_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TD_RESET_N~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\OTG_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_ADDR[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\OTG_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_ADDR[1]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\OTG_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_CS_N~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\OTG_WR_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_WR_N~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\OTG_RD_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_RD_N~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\OTG_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OTG_RST_N~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\DRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\DRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\DRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\DRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\DRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\DRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\DRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\DRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\DRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\DRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\DRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\DRAM_BA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_BA[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\DRAM_BA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_BA[1]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\DRAM_CAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CAS_N~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\DRAM_CKE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CKE~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\DRAM_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CLK~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\DRAM_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_CS_N~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\DRAM_DQM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[0]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\DRAM_DQM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\DRAM_DQM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[2]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\DRAM_DQM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_DQM[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\DRAM_RAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_RAS_N~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\DRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DRAM_WE_N~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\SRAM_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_CE_N~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\SRAM_LB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_LB_N~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\SRAM_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_OE_N~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\SRAM_UB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_UB_N~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\SRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_WE_N~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\FL_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\FL_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\FL_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\FL_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[3]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\FL_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\FL_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\FL_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\FL_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\FL_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\FL_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[9]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\FL_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\FL_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\FL_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\FL_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\FL_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\FL_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\FL_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[16]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\FL_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[17]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\FL_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[18]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\FL_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[19]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\FL_ADDR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[20]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\FL_ADDR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[21]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\FL_ADDR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_ADDR[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\FL_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_CE_N~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\FL_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_OE_N~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\FL_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_RST_N~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\FL_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_WE_N~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\FL_WP_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FL_WP_N~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\HSMC_CLKOUT_P1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_CLKOUT_P1~output_o\,
	obar => \HSMC_CLKOUT_P1~0\);

-- Location: IOOBUF_X115_Y24_N2
\HSMC_CLKOUT_P2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_CLKOUT_P2~output_o\,
	obar => \HSMC_CLKOUT_P2~0\);

-- Location: IOOBUF_X115_Y12_N2
\HSMC_CLKOUT0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_CLKOUT0~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\HSMC_TX_D_P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[0]~output_o\,
	obar => \HSMC_TX_D_P[0]~0\);

-- Location: IOOBUF_X115_Y57_N16
\HSMC_TX_D_P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[1]~output_o\,
	obar => \HSMC_TX_D_P[1]~1\);

-- Location: IOOBUF_X115_Y56_N16
\HSMC_TX_D_P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[2]~output_o\,
	obar => \HSMC_TX_D_P[2]~2\);

-- Location: IOOBUF_X115_Y52_N2
\HSMC_TX_D_P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[3]~output_o\,
	obar => \HSMC_TX_D_P[3]~3\);

-- Location: IOOBUF_X115_Y50_N9
\HSMC_TX_D_P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[4]~output_o\,
	obar => \HSMC_TX_D_P[4]~4\);

-- Location: IOOBUF_X115_Y46_N9
\HSMC_TX_D_P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[5]~output_o\,
	obar => \HSMC_TX_D_P[5]~5\);

-- Location: IOOBUF_X115_Y64_N2
\HSMC_TX_D_P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[6]~output_o\,
	obar => \HSMC_TX_D_P[6]~6\);

-- Location: IOOBUF_X115_Y65_N16
\HSMC_TX_D_P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[7]~output_o\,
	obar => \HSMC_TX_D_P[7]~7\);

-- Location: IOOBUF_X115_Y63_N2
\HSMC_TX_D_P[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[8]~output_o\,
	obar => \HSMC_TX_D_P[8]~8\);

-- Location: IOOBUF_X115_Y44_N9
\HSMC_TX_D_P[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[9]~output_o\,
	obar => \HSMC_TX_D_P[9]~9\);

-- Location: IOOBUF_X115_Y51_N2
\HSMC_TX_D_P[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[10]~output_o\,
	obar => \HSMC_TX_D_P[10]~10\);

-- Location: IOOBUF_X115_Y48_N9
\HSMC_TX_D_P[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[11]~output_o\,
	obar => \HSMC_TX_D_P[11]~11\);

-- Location: IOOBUF_X115_Y23_N2
\HSMC_TX_D_P[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[12]~output_o\,
	obar => \HSMC_TX_D_P[12]~12\);

-- Location: IOOBUF_X115_Y34_N16
\HSMC_TX_D_P[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[13]~output_o\,
	obar => \HSMC_TX_D_P[13]~13\);

-- Location: IOOBUF_X115_Y29_N9
\HSMC_TX_D_P[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[14]~output_o\,
	obar => \HSMC_TX_D_P[14]~14\);

-- Location: IOOBUF_X115_Y22_N16
\HSMC_TX_D_P[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[15]~output_o\,
	obar => \HSMC_TX_D_P[15]~15\);

-- Location: IOOBUF_X115_Y26_N16
\HSMC_TX_D_P[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HSMC_TX_D_P[16]~output_o\,
	obar => \HSMC_TX_D_P[16]~16\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X72_Y43_N2
\top0|random_r[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[0]~31_combout\ = \top0|random_r\(0) $ (VCC)
-- \top0|random_r[0]~32\ = CARRY(\top0|random_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|random_r\(0),
	datad => VCC,
	combout => \top0|random_r[0]~31_combout\,
	cout => \top0|random_r[0]~32\);

-- Location: LCCOMB_X73_Y43_N0
\top0|time_r[0]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[0]~90_combout\ = !\top0|time_r\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|time_r\(0),
	combout => \top0|time_r[0]~90_combout\);

-- Location: FF_X73_Y43_N1
\top0|time_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[0]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(0));

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X77_Y42_N10
\deb0|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb0|always0~0_combout\ = \deb0|o_debounced_r~q\ $ (\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \deb0|o_debounced_r~q\,
	datac => \KEY[0]~input_o\,
	combout => \deb0|always0~0_combout\);

-- Location: LCCOMB_X77_Y42_N2
\deb0|counter_w[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb0|counter_w[1]~1_combout\ = (\KEY[0]~input_o\ & ((\deb0|o_debounced_r~q\) # (\deb0|counter_r\(1) $ (!\deb0|counter_r\(0))))) # (!\KEY[0]~input_o\ & ((\deb0|counter_r\(1) $ (!\deb0|counter_r\(0))) # (!\deb0|o_debounced_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \deb0|o_debounced_r~q\,
	datac => \deb0|counter_r\(1),
	datad => \deb0|counter_r\(0),
	combout => \deb0|counter_w[1]~1_combout\);

-- Location: FF_X77_Y42_N3
\deb0|counter_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb0|counter_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb0|counter_r\(1));

-- Location: LCCOMB_X77_Y42_N28
\deb0|counter_w[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb0|counter_w[2]~0_combout\ = (\deb0|counter_r\(2) $ (((!\deb0|counter_r\(1) & !\deb0|counter_r\(0))))) # (!\deb0|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb0|always0~0_combout\,
	datab => \deb0|counter_r\(1),
	datac => \deb0|counter_r\(2),
	datad => \deb0|counter_r\(0),
	combout => \deb0|counter_w[2]~0_combout\);

-- Location: FF_X77_Y42_N29
\deb0|counter_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb0|counter_w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb0|counter_r\(2));

-- Location: LCCOMB_X77_Y42_N18
\deb0|o_debounced_w~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb0|o_debounced_w~0_combout\ = \deb0|o_debounced_r~q\ $ (((!\deb0|counter_r\(0) & (!\deb0|counter_r\(2) & !\deb0|counter_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb0|counter_r\(0),
	datab => \deb0|counter_r\(2),
	datac => \deb0|o_debounced_r~q\,
	datad => \deb0|counter_r\(1),
	combout => \deb0|o_debounced_w~0_combout\);

-- Location: FF_X77_Y42_N19
\deb0|o_debounced_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb0|o_debounced_w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb0|o_debounced_r~q\);

-- Location: LCCOMB_X77_Y42_N12
\deb0|counter_w[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb0|counter_w[0]~2_combout\ = (\KEY[0]~input_o\ $ (!\deb0|o_debounced_r~q\)) # (!\deb0|counter_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \deb0|o_debounced_r~q\,
	datac => \deb0|counter_r\(0),
	combout => \deb0|counter_w[0]~2_combout\);

-- Location: FF_X77_Y42_N13
\deb0|counter_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb0|counter_w[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb0|counter_r\(0));

-- Location: LCCOMB_X77_Y42_N20
\deb0|neg_w\ : cycloneive_lcell_comb
-- Equation(s):
-- \deb0|neg_w~combout\ = (!\deb0|counter_r\(0) & (!\deb0|counter_r\(1) & (!\deb0|counter_r\(2) & \deb0|o_debounced_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \deb0|counter_r\(0),
	datab => \deb0|counter_r\(1),
	datac => \deb0|counter_r\(2),
	datad => \deb0|o_debounced_r~q\,
	combout => \deb0|neg_w~combout\);

-- Location: FF_X77_Y42_N21
\deb0|neg_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \deb0|neg_w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \deb0|neg_r~q\);

-- Location: LCCOMB_X75_Y50_N0
\top0|counter_r[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[0]~32_combout\ = \top0|counter_r\(0) $ (VCC)
-- \top0|counter_r[0]~33\ = CARRY(\top0|counter_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(0),
	datad => VCC,
	combout => \top0|counter_r[0]~32_combout\,
	cout => \top0|counter_r[0]~33\);

-- Location: LCCOMB_X75_Y49_N16
\top0|counter_r[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[24]~80_combout\ = (\top0|counter_r\(24) & (\top0|counter_r[23]~79\ $ (GND))) # (!\top0|counter_r\(24) & (!\top0|counter_r[23]~79\ & VCC))
-- \top0|counter_r[24]~81\ = CARRY((\top0|counter_r\(24) & !\top0|counter_r[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(24),
	datad => VCC,
	cin => \top0|counter_r[23]~79\,
	combout => \top0|counter_r[24]~80_combout\,
	cout => \top0|counter_r[24]~81\);

-- Location: LCCOMB_X75_Y49_N18
\top0|counter_r[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[25]~82_combout\ = (\top0|counter_r\(25) & (!\top0|counter_r[24]~81\)) # (!\top0|counter_r\(25) & ((\top0|counter_r[24]~81\) # (GND)))
-- \top0|counter_r[25]~83\ = CARRY((!\top0|counter_r[24]~81\) # (!\top0|counter_r\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(25),
	datad => VCC,
	cin => \top0|counter_r[24]~81\,
	combout => \top0|counter_r[25]~82_combout\,
	cout => \top0|counter_r[25]~83\);

-- Location: FF_X75_Y49_N19
\top0|counter_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[25]~82_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(25));

-- Location: LCCOMB_X75_Y49_N20
\top0|counter_r[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[26]~84_combout\ = (\top0|counter_r\(26) & (\top0|counter_r[25]~83\ $ (GND))) # (!\top0|counter_r\(26) & (!\top0|counter_r[25]~83\ & VCC))
-- \top0|counter_r[26]~85\ = CARRY((\top0|counter_r\(26) & !\top0|counter_r[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(26),
	datad => VCC,
	cin => \top0|counter_r[25]~83\,
	combout => \top0|counter_r[26]~84_combout\,
	cout => \top0|counter_r[26]~85\);

-- Location: FF_X75_Y49_N21
\top0|counter_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[26]~84_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(26));

-- Location: LCCOMB_X75_Y49_N22
\top0|counter_r[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[27]~86_combout\ = (\top0|counter_r\(27) & (!\top0|counter_r[26]~85\)) # (!\top0|counter_r\(27) & ((\top0|counter_r[26]~85\) # (GND)))
-- \top0|counter_r[27]~87\ = CARRY((!\top0|counter_r[26]~85\) # (!\top0|counter_r\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(27),
	datad => VCC,
	cin => \top0|counter_r[26]~85\,
	combout => \top0|counter_r[27]~86_combout\,
	cout => \top0|counter_r[27]~87\);

-- Location: FF_X75_Y49_N23
\top0|counter_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[27]~86_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(27));

-- Location: LCCOMB_X75_Y49_N24
\top0|counter_r[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[28]~88_combout\ = (\top0|counter_r\(28) & (\top0|counter_r[27]~87\ $ (GND))) # (!\top0|counter_r\(28) & (!\top0|counter_r[27]~87\ & VCC))
-- \top0|counter_r[28]~89\ = CARRY((\top0|counter_r\(28) & !\top0|counter_r[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(28),
	datad => VCC,
	cin => \top0|counter_r[27]~87\,
	combout => \top0|counter_r[28]~88_combout\,
	cout => \top0|counter_r[28]~89\);

-- Location: FF_X75_Y49_N25
\top0|counter_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[28]~88_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(28));

-- Location: LCCOMB_X75_Y49_N26
\top0|counter_r[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[29]~90_combout\ = (\top0|counter_r\(29) & (!\top0|counter_r[28]~89\)) # (!\top0|counter_r\(29) & ((\top0|counter_r[28]~89\) # (GND)))
-- \top0|counter_r[29]~91\ = CARRY((!\top0|counter_r[28]~89\) # (!\top0|counter_r\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(29),
	datad => VCC,
	cin => \top0|counter_r[28]~89\,
	combout => \top0|counter_r[29]~90_combout\,
	cout => \top0|counter_r[29]~91\);

-- Location: FF_X75_Y49_N27
\top0|counter_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[29]~90_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(29));

-- Location: LCCOMB_X75_Y49_N28
\top0|counter_r[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[30]~92_combout\ = (\top0|counter_r\(30) & (\top0|counter_r[29]~91\ $ (GND))) # (!\top0|counter_r\(30) & (!\top0|counter_r[29]~91\ & VCC))
-- \top0|counter_r[30]~93\ = CARRY((\top0|counter_r\(30) & !\top0|counter_r[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(30),
	datad => VCC,
	cin => \top0|counter_r[29]~91\,
	combout => \top0|counter_r[30]~92_combout\,
	cout => \top0|counter_r[30]~93\);

-- Location: FF_X75_Y49_N29
\top0|counter_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[30]~92_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(30));

-- Location: LCCOMB_X75_Y49_N30
\top0|counter_r[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[31]~94_combout\ = \top0|counter_r\(31) $ (\top0|counter_r[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(31),
	cin => \top0|counter_r[30]~93\,
	combout => \top0|counter_r[31]~94_combout\);

-- Location: FF_X75_Y49_N31
\top0|counter_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[31]~94_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(31));

-- Location: LCCOMB_X72_Y49_N30
\top0|Div0|auto_generated|divider|divider|StageOut[4]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[4]~224_combout\ = (\top0|counter_top_r\(31) & !\top0|counter_top_r\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(31),
	datad => \top0|counter_top_r\(30),
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[4]~224_combout\);

-- Location: LCCOMB_X72_Y49_N28
\top0|Div0|auto_generated|divider|divider|StageOut[3]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[3]~225_combout\ = (!\top0|counter_top_r\(31) & \top0|counter_top_r\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(31),
	datad => \top0|counter_top_r\(30),
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[3]~225_combout\);

-- Location: LCCOMB_X72_Y49_N0
\top0|Div0|auto_generated|divider|divider|op_11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_11~0_combout\ = \top0|counter_top_r\(29) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_11~1\ = CARRY(\top0|counter_top_r\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(29),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_11~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_11~1\);

-- Location: LCCOMB_X72_Y49_N2
\top0|Div0|auto_generated|divider|divider|op_11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_11~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[3]~225_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_11~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[3]~225_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_11~1\) # (GND)))
-- \top0|Div0|auto_generated|divider|divider|op_11~3\ = CARRY((!\top0|Div0|auto_generated|divider|divider|op_11~1\) # (!\top0|Div0|auto_generated|divider|divider|StageOut[3]~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[3]~225_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_11~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_11~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X72_Y49_N4
\top0|Div0|auto_generated|divider|divider|op_11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_11~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[4]~224_combout\) # (!\top0|Div0|auto_generated|divider|divider|op_11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[4]~224_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_11~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_11~5_cout\);

-- Location: LCCOMB_X72_Y49_N6
\top0|Div0|auto_generated|divider|divider|op_11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_11~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_11~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_11~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_11~6_combout\);

-- Location: LCCOMB_X72_Y49_N10
\top0|Div0|auto_generated|divider|divider|StageOut[7]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[7]~226_combout\ = (\top0|counter_top_r\(30) & (!\top0|counter_top_r\(31) & \top0|Div0|auto_generated|divider|divider|op_11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(30),
	datac => \top0|counter_top_r\(31),
	datad => \top0|Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[7]~226_combout\);

-- Location: LCCOMB_X72_Y49_N16
\top0|Div0|auto_generated|divider|divider|StageOut[7]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[7]~227_combout\ = (\top0|Div0|auto_generated|divider|divider|op_11~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_11~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[7]~227_combout\);

-- Location: LCCOMB_X72_Y49_N12
\top0|Div0|auto_generated|divider|divider|StageOut[6]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[6]~229_combout\ = (\top0|Div0|auto_generated|divider|divider|op_11~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_11~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[6]~229_combout\);

-- Location: LCCOMB_X72_Y49_N18
\top0|Div0|auto_generated|divider|divider|StageOut[6]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[6]~228_combout\ = (\top0|counter_top_r\(29) & \top0|Div0|auto_generated|divider|divider|op_11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(29),
	datad => \top0|Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[6]~228_combout\);

-- Location: LCCOMB_X72_Y49_N22
\top0|Div0|auto_generated|divider|divider|op_22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_22~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[6]~229_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_22~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[6]~229_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[6]~228_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_22~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[6]~228_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_22~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_22~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[6]~229_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[6]~228_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[6]~229_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[6]~228_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_22~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_22~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_22~3\);

-- Location: LCCOMB_X72_Y49_N14
\top0|Div0|auto_generated|divider|divider|StageOut[10]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[10]~230_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_22~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_22~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_22~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[10]~230_combout\);

-- Location: LCCOMB_X72_Y47_N2
\top0|Div0|auto_generated|divider|divider|StageOut[10]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[10]~313_combout\ = (\top0|Div0|auto_generated|divider|divider|op_22~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_11~6_combout\ & ((\top0|counter_top_r\(29)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_11~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_11~0_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|op_11~6_combout\,
	datac => \top0|counter_top_r\(29),
	datad => \top0|Div0|auto_generated|divider|divider|op_22~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[10]~313_combout\);

-- Location: LCCOMB_X72_Y47_N12
\top0|Div0|auto_generated|divider|divider|StageOut[9]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[9]~231_combout\ = (\top0|counter_top_r\(28) & \top0|Div0|auto_generated|divider|divider|op_22~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(28),
	datad => \top0|Div0|auto_generated|divider|divider|op_22~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[9]~231_combout\);

-- Location: LCCOMB_X72_Y49_N20
\top0|Div0|auto_generated|divider|divider|op_22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_22~0_combout\ = \top0|counter_top_r\(28) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_22~1\ = CARRY(\top0|counter_top_r\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(28),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_22~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_22~1\);

-- Location: LCCOMB_X72_Y47_N18
\top0|Div0|auto_generated|divider|divider|StageOut[9]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[9]~232_combout\ = (\top0|Div0|auto_generated|divider|divider|op_22~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_22~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_22~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_22~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[9]~232_combout\);

-- Location: LCCOMB_X72_Y47_N24
\top0|Div0|auto_generated|divider|divider|op_25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_25~0_combout\ = \top0|counter_top_r\(27) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_25~1\ = CARRY(\top0|counter_top_r\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(27),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_25~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_25~1\);

-- Location: LCCOMB_X72_Y47_N26
\top0|Div0|auto_generated|divider|divider|op_25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_25~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[9]~231_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_25~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[9]~231_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[9]~232_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_25~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[9]~232_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_25~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_25~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[9]~231_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[9]~232_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_25~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[9]~231_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[9]~232_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_25~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_25~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_25~3\);

-- Location: LCCOMB_X72_Y47_N28
\top0|Div0|auto_generated|divider|divider|op_25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_25~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[10]~230_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[10]~313_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_25~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[10]~230_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[10]~313_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_25~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_25~5_cout\);

-- Location: LCCOMB_X72_Y47_N30
\top0|Div0|auto_generated|divider|divider|op_25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_25~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_25~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_25~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_25~6_combout\);

-- Location: LCCOMB_X72_Y47_N16
\top0|Div0|auto_generated|divider|divider|StageOut[13]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[13]~233_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_25~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_25~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_25~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[13]~233_combout\);

-- Location: LCCOMB_X73_Y47_N8
\top0|Div0|auto_generated|divider|divider|StageOut[13]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[13]~314_combout\ = (\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_22~6_combout\ & (\top0|counter_top_r\(28))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_22~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(28),
	datab => \top0|Div0|auto_generated|divider|divider|op_22~6_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_22~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_25~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[13]~314_combout\);

-- Location: LCCOMB_X73_Y47_N30
\top0|Div0|auto_generated|divider|divider|StageOut[12]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[12]~235_combout\ = (\top0|Div0|auto_generated|divider|divider|op_25~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_25~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_25~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_25~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[12]~235_combout\);

-- Location: LCCOMB_X73_Y47_N16
\top0|Div0|auto_generated|divider|divider|StageOut[12]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[12]~234_combout\ = (\top0|counter_top_r\(27) & \top0|Div0|auto_generated|divider|divider|op_25~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(27),
	datad => \top0|Div0|auto_generated|divider|divider|op_25~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[12]~234_combout\);

-- Location: LCCOMB_X73_Y47_N26
\top0|Div0|auto_generated|divider|divider|StageOut[16]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[16]~315_combout\ = (\top0|Div0|auto_generated|divider|divider|op_26~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & ((\top0|counter_top_r\(27)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_25~0_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|op_25~6_combout\,
	datac => \top0|counter_top_r\(27),
	datad => \top0|Div0|auto_generated|divider|divider|op_26~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[16]~315_combout\);

-- Location: LCCOMB_X73_Y47_N2
\top0|Div0|auto_generated|divider|divider|op_26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_26~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[12]~235_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_26~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[12]~235_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[12]~234_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_26~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[12]~234_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_26~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_26~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[12]~235_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[12]~234_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_26~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[12]~235_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[12]~234_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_26~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_26~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_26~3\);

-- Location: LCCOMB_X73_Y47_N28
\top0|Div0|auto_generated|divider|divider|StageOut[16]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[16]~236_combout\ = (\top0|Div0|auto_generated|divider|divider|op_26~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_26~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_26~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_26~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[16]~236_combout\);

-- Location: LCCOMB_X73_Y47_N0
\top0|Div0|auto_generated|divider|divider|op_26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_26~0_combout\ = \top0|counter_top_r\(26) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_26~1\ = CARRY(\top0|counter_top_r\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(26),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_26~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_26~1\);

-- Location: LCCOMB_X73_Y47_N12
\top0|Div0|auto_generated|divider|divider|StageOut[15]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[15]~238_combout\ = (\top0|Div0|auto_generated|divider|divider|op_26~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_26~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_26~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_26~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[15]~238_combout\);

-- Location: LCCOMB_X73_Y47_N14
\top0|Div0|auto_generated|divider|divider|StageOut[15]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[15]~237_combout\ = (\top0|counter_top_r\(26) & \top0|Div0|auto_generated|divider|divider|op_26~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(26),
	datad => \top0|Div0|auto_generated|divider|divider|op_26~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[15]~237_combout\);

-- Location: LCCOMB_X73_Y47_N18
\top0|Div0|auto_generated|divider|divider|op_27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_27~0_combout\ = \top0|counter_top_r\(25) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_27~1\ = CARRY(\top0|counter_top_r\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(25),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_27~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_27~1\);

-- Location: LCCOMB_X73_Y47_N20
\top0|Div0|auto_generated|divider|divider|op_27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_27~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[15]~238_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_27~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[15]~238_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[15]~237_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_27~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[15]~237_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_27~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_27~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[15]~238_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[15]~237_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_27~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[15]~238_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[15]~237_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_27~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_27~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_27~3\);

-- Location: LCCOMB_X73_Y47_N22
\top0|Div0|auto_generated|divider|divider|op_27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_27~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[16]~315_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[16]~236_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[16]~315_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[16]~236_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_27~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_27~5_cout\);

-- Location: LCCOMB_X73_Y47_N24
\top0|Div0|auto_generated|divider|divider|op_27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_27~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_27~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_27~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_27~6_combout\);

-- Location: LCCOMB_X73_Y47_N10
\top0|Div0|auto_generated|divider|divider|StageOut[19]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[19]~239_combout\ = (\top0|Div0|auto_generated|divider|divider|op_27~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_27~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_27~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_27~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[19]~239_combout\);

-- Location: LCCOMB_X74_Y47_N18
\top0|Div0|auto_generated|divider|divider|StageOut[19]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[19]~316_combout\ = (\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_26~6_combout\ & ((\top0|counter_top_r\(26)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_26~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_26~0_combout\,
	datab => \top0|counter_top_r\(26),
	datac => \top0|Div0|auto_generated|divider|divider|op_26~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_27~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[19]~316_combout\);

-- Location: LCCOMB_X74_Y47_N30
\top0|Div0|auto_generated|divider|divider|StageOut[18]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[18]~241_combout\ = (\top0|Div0|auto_generated|divider|divider|op_27~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_27~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_27~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_27~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[18]~241_combout\);

-- Location: LCCOMB_X74_Y47_N16
\top0|Div0|auto_generated|divider|divider|StageOut[18]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[18]~240_combout\ = (\top0|counter_top_r\(25) & \top0|Div0|auto_generated|divider|divider|op_27~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(25),
	datad => \top0|Div0|auto_generated|divider|divider|op_27~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[18]~240_combout\);

-- Location: LCCOMB_X74_Y47_N12
\top0|Div0|auto_generated|divider|divider|StageOut[22]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[22]~317_combout\ = (\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & (\top0|counter_top_r\(25))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(25),
	datab => \top0|Div0|auto_generated|divider|divider|op_27~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_28~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_27~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[22]~317_combout\);

-- Location: LCCOMB_X74_Y47_N22
\top0|Div0|auto_generated|divider|divider|op_28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_28~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[18]~241_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_28~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[18]~241_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[18]~240_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_28~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[18]~240_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_28~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_28~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[18]~241_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[18]~240_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_28~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[18]~241_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[18]~240_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_28~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_28~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_28~3\);

-- Location: LCCOMB_X75_Y47_N24
\top0|Div0|auto_generated|divider|divider|StageOut[22]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[22]~242_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_28~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_28~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_28~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[22]~242_combout\);

-- Location: LCCOMB_X74_Y47_N20
\top0|Div0|auto_generated|divider|divider|op_28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_28~0_combout\ = \top0|counter_top_r\(24) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_28~1\ = CARRY(\top0|counter_top_r\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(24),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_28~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_28~1\);

-- Location: LCCOMB_X75_Y47_N30
\top0|Div0|auto_generated|divider|divider|StageOut[21]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[21]~244_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_28~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_28~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[21]~244_combout\);

-- Location: LCCOMB_X74_Y47_N28
\top0|Div0|auto_generated|divider|divider|StageOut[21]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[21]~243_combout\ = (\top0|counter_top_r\(24) & \top0|Div0|auto_generated|divider|divider|op_28~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(24),
	datac => \top0|Div0|auto_generated|divider|divider|op_28~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[21]~243_combout\);

-- Location: LCCOMB_X75_Y47_N28
\top0|Div0|auto_generated|divider|divider|StageOut[25]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[25]~318_combout\ = (\top0|Div0|auto_generated|divider|divider|op_29~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ & (\top0|counter_top_r\(24))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_28~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(24),
	datab => \top0|Div0|auto_generated|divider|divider|op_28~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_28~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_29~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[25]~318_combout\);

-- Location: LCCOMB_X75_Y47_N14
\top0|Div0|auto_generated|divider|divider|op_29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_29~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[21]~244_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_29~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[21]~244_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[21]~243_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_29~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[21]~243_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_29~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_29~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[21]~244_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[21]~243_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_29~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[21]~244_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[21]~243_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_29~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_29~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_29~3\);

-- Location: LCCOMB_X75_Y47_N20
\top0|Div0|auto_generated|divider|divider|StageOut[25]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[25]~245_combout\ = (\top0|Div0|auto_generated|divider|divider|op_29~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_29~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_29~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_29~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[25]~245_combout\);

-- Location: LCCOMB_X75_Y47_N26
\top0|Div0|auto_generated|divider|divider|StageOut[24]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[24]~246_combout\ = (\top0|counter_top_r\(23) & \top0|Div0|auto_generated|divider|divider|op_29~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(23),
	datad => \top0|Div0|auto_generated|divider|divider|op_29~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[24]~246_combout\);

-- Location: LCCOMB_X75_Y47_N12
\top0|Div0|auto_generated|divider|divider|op_29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_29~0_combout\ = \top0|counter_top_r\(23) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_29~1\ = CARRY(\top0|counter_top_r\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(23),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_29~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_29~1\);

-- Location: LCCOMB_X75_Y47_N0
\top0|Div0|auto_generated|divider|divider|StageOut[24]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[24]~247_combout\ = (\top0|Div0|auto_generated|divider|divider|op_29~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_29~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_29~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_29~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[24]~247_combout\);

-- Location: LCCOMB_X75_Y47_N2
\top0|Div0|auto_generated|divider|divider|op_30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_30~0_combout\ = \top0|counter_top_r\(22) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_30~1\ = CARRY(\top0|counter_top_r\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(22),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_30~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_30~1\);

-- Location: LCCOMB_X75_Y47_N4
\top0|Div0|auto_generated|divider|divider|op_30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_30~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[24]~246_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_30~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[24]~246_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[24]~247_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_30~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[24]~247_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_30~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_30~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[24]~246_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[24]~247_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_30~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[24]~246_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[24]~247_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_30~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_30~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_30~3\);

-- Location: LCCOMB_X75_Y47_N6
\top0|Div0|auto_generated|divider|divider|op_30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_30~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[25]~318_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[25]~245_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_30~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[25]~318_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[25]~245_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_30~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_30~5_cout\);

-- Location: LCCOMB_X75_Y47_N8
\top0|Div0|auto_generated|divider|divider|op_30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_30~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_30~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_30~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_30~6_combout\);

-- Location: LCCOMB_X75_Y47_N10
\top0|Div0|auto_generated|divider|divider|StageOut[28]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[28]~248_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_30~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_30~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[28]~248_combout\);

-- Location: LCCOMB_X74_Y48_N14
\top0|Div0|auto_generated|divider|divider|StageOut[28]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[28]~319_combout\ = (\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_29~6_combout\ & (\top0|counter_top_r\(23))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_29~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(23),
	datab => \top0|Div0|auto_generated|divider|divider|op_29~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_30~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_29~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[28]~319_combout\);

-- Location: LCCOMB_X74_Y48_N10
\top0|Div0|auto_generated|divider|divider|StageOut[27]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[27]~250_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_30~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_30~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[27]~250_combout\);

-- Location: LCCOMB_X74_Y48_N8
\top0|Div0|auto_generated|divider|divider|StageOut[27]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[27]~249_combout\ = (\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ & \top0|counter_top_r\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_30~6_combout\,
	datad => \top0|counter_top_r\(22),
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[27]~249_combout\);

-- Location: LCCOMB_X74_Y48_N24
\top0|Div0|auto_generated|divider|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_1~0_combout\ = \top0|counter_top_r\(21) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_1~1\ = CARRY(\top0|counter_top_r\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(21),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X74_Y48_N26
\top0|Div0|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_1~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[27]~250_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_1~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[27]~250_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[27]~249_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_1~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[27]~249_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_1~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_1~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[27]~250_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[27]~249_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[27]~250_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[27]~249_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_1~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X74_Y48_N28
\top0|Div0|auto_generated|divider|divider|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_1~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[28]~248_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[28]~319_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[28]~248_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[28]~319_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_1~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_1~5_cout\);

-- Location: LCCOMB_X74_Y48_N30
\top0|Div0|auto_generated|divider|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_1~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_1~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_1~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_1~6_combout\);

-- Location: LCCOMB_X74_Y48_N12
\top0|Div0|auto_generated|divider|divider|StageOut[31]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[31]~251_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_1~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[31]~251_combout\);

-- Location: LCCOMB_X74_Y48_N0
\top0|Div0|auto_generated|divider|divider|StageOut[31]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[31]~320_combout\ = (\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ & ((\top0|counter_top_r\(22)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_30~0_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|op_30~6_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \top0|counter_top_r\(22),
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[31]~320_combout\);

-- Location: LCCOMB_X74_Y48_N6
\top0|Div0|auto_generated|divider|divider|StageOut[30]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[30]~252_combout\ = (\top0|counter_top_r\(21) & \top0|Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(21),
	datac => \top0|Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[30]~252_combout\);

-- Location: LCCOMB_X74_Y48_N4
\top0|Div0|auto_generated|divider|divider|StageOut[30]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[30]~253_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_1~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_1~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[30]~253_combout\);

-- Location: LCCOMB_X74_Y48_N2
\top0|Div0|auto_generated|divider|divider|StageOut[34]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[34]~321_combout\ = (\top0|Div0|auto_generated|divider|divider|op_2~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & (\top0|counter_top_r\(21))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(21),
	datab => \top0|Div0|auto_generated|divider|divider|op_1~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_2~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[34]~321_combout\);

-- Location: LCCOMB_X74_Y48_N18
\top0|Div0|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_2~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[30]~252_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_2~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[30]~252_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[30]~253_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_2~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[30]~253_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_2~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_2~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[30]~252_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[30]~253_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[30]~252_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[30]~253_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_2~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X73_Y48_N0
\top0|Div0|auto_generated|divider|divider|StageOut[34]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[34]~254_combout\ = (\top0|Div0|auto_generated|divider|divider|op_2~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_2~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[34]~254_combout\);

-- Location: LCCOMB_X73_Y48_N30
\top0|Div0|auto_generated|divider|divider|StageOut[33]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[33]~255_combout\ = (\top0|counter_top_r\(20) & \top0|Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(20),
	datad => \top0|Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[33]~255_combout\);

-- Location: LCCOMB_X74_Y48_N16
\top0|Div0|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_2~0_combout\ = \top0|counter_top_r\(20) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\top0|counter_top_r\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(20),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X73_Y48_N4
\top0|Div0|auto_generated|divider|divider|StageOut[33]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[33]~256_combout\ = (\top0|Div0|auto_generated|divider|divider|op_2~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[33]~256_combout\);

-- Location: LCCOMB_X73_Y48_N8
\top0|Div0|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_3~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[33]~255_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_3~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[33]~255_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[33]~256_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_3~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[33]~256_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_3~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_3~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[33]~255_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[33]~256_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[33]~255_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[33]~256_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_3~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X73_Y48_N14
\top0|Div0|auto_generated|divider|divider|StageOut[37]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[37]~257_combout\ = (\top0|Div0|auto_generated|divider|divider|op_3~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[37]~257_combout\);

-- Location: LCCOMB_X73_Y48_N28
\top0|Div0|auto_generated|divider|divider|StageOut[37]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[37]~322_combout\ = (\top0|Div0|auto_generated|divider|divider|op_3~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_2~6_combout\ & (\top0|counter_top_r\(20))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_2~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(20),
	datab => \top0|Div0|auto_generated|divider|divider|op_2~6_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[37]~322_combout\);

-- Location: LCCOMB_X73_Y48_N6
\top0|Div0|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_3~0_combout\ = \top0|counter_top_r\(19) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\top0|counter_top_r\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(19),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X73_Y48_N26
\top0|Div0|auto_generated|divider|divider|StageOut[36]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[36]~259_combout\ = (\top0|Div0|auto_generated|divider|divider|op_3~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[36]~259_combout\);

-- Location: LCCOMB_X73_Y48_N24
\top0|Div0|auto_generated|divider|divider|StageOut[36]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[36]~258_combout\ = (\top0|counter_top_r\(19) & \top0|Div0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(19),
	datad => \top0|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[36]~258_combout\);

-- Location: LCCOMB_X73_Y48_N18
\top0|Div0|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_4~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[36]~259_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_4~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[36]~259_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[36]~258_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_4~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[36]~258_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_4~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_4~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[36]~259_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[36]~258_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[36]~259_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[36]~258_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_4~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X68_Y48_N12
\top0|Div0|auto_generated|divider|divider|StageOut[40]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[40]~260_combout\ = (\top0|Div0|auto_generated|divider|divider|op_4~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_4~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_4~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[40]~260_combout\);

-- Location: LCCOMB_X73_Y48_N2
\top0|Div0|auto_generated|divider|divider|StageOut[40]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[40]~323_combout\ = (\top0|Div0|auto_generated|divider|divider|op_4~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_3~6_combout\ & (\top0|counter_top_r\(19))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_3~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(19),
	datab => \top0|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[40]~323_combout\);

-- Location: LCCOMB_X68_Y48_N30
\top0|Div0|auto_generated|divider|divider|StageOut[39]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[39]~261_combout\ = (\top0|counter_top_r\(18) & \top0|Div0|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(18),
	datad => \top0|Div0|auto_generated|divider|divider|op_4~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[39]~261_combout\);

-- Location: LCCOMB_X73_Y48_N16
\top0|Div0|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_4~0_combout\ = \top0|counter_top_r\(18) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_4~1\ = CARRY(\top0|counter_top_r\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(18),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X68_Y48_N24
\top0|Div0|auto_generated|divider|divider|StageOut[39]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[39]~262_combout\ = (\top0|Div0|auto_generated|divider|divider|op_4~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_4~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_4~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[39]~262_combout\);

-- Location: LCCOMB_X69_Y48_N30
\top0|Div0|auto_generated|divider|divider|StageOut[43]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[43]~324_combout\ = (\top0|Div0|auto_generated|divider|divider|op_5~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_4~6_combout\ & (\top0|counter_top_r\(18))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_4~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(18),
	datab => \top0|Div0|auto_generated|divider|divider|op_4~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[43]~324_combout\);

-- Location: LCCOMB_X68_Y48_N16
\top0|Div0|auto_generated|divider|divider|op_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_5~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[39]~261_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_5~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[39]~261_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[39]~262_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_5~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[39]~262_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_5~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_5~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[39]~261_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[39]~262_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[39]~261_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[39]~262_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_5~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X68_Y48_N6
\top0|Div0|auto_generated|divider|divider|StageOut[43]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[43]~263_combout\ = (\top0|Div0|auto_generated|divider|divider|op_5~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[43]~263_combout\);

-- Location: LCCOMB_X68_Y48_N14
\top0|Div0|auto_generated|divider|divider|op_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_5~0_combout\ = \top0|counter_top_r\(17) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_5~1\ = CARRY(\top0|counter_top_r\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(17),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X68_Y48_N8
\top0|Div0|auto_generated|divider|divider|StageOut[42]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[42]~265_combout\ = (\top0|Div0|auto_generated|divider|divider|op_5~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[42]~265_combout\);

-- Location: LCCOMB_X69_Y48_N0
\top0|Div0|auto_generated|divider|divider|StageOut[42]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[42]~264_combout\ = (\top0|counter_top_r\(17) & \top0|Div0|auto_generated|divider|divider|op_5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(17),
	datad => \top0|Div0|auto_generated|divider|divider|op_5~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[42]~264_combout\);

-- Location: LCCOMB_X69_Y48_N18
\top0|Div0|auto_generated|divider|divider|op_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_6~0_combout\ = \top0|counter_top_r\(16) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_6~1\ = CARRY(\top0|counter_top_r\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(16),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X69_Y48_N20
\top0|Div0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_6~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[42]~265_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_6~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[42]~265_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[42]~264_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_6~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[42]~264_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_6~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_6~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[42]~265_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[42]~264_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[42]~265_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[42]~264_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_6~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X69_Y48_N22
\top0|Div0|auto_generated|divider|divider|op_6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_6~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[43]~324_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[43]~263_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[43]~324_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[43]~263_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_6~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_6~5_cout\);

-- Location: LCCOMB_X69_Y48_N24
\top0|Div0|auto_generated|divider|divider|op_6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_6~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_6~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_6~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_6~6_combout\);

-- Location: LCCOMB_X69_Y48_N26
\top0|Div0|auto_generated|divider|divider|StageOut[46]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[46]~266_combout\ = (\top0|Div0|auto_generated|divider|divider|op_6~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[46]~266_combout\);

-- Location: LCCOMB_X69_Y48_N16
\top0|Div0|auto_generated|divider|divider|StageOut[46]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[46]~325_combout\ = (\top0|Div0|auto_generated|divider|divider|op_6~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_5~6_combout\ & ((\top0|counter_top_r\(17)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_5~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_5~0_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \top0|counter_top_r\(17),
	datad => \top0|Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[46]~325_combout\);

-- Location: LCCOMB_X69_Y48_N12
\top0|Div0|auto_generated|divider|divider|StageOut[45]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[45]~267_combout\ = (\top0|counter_top_r\(16) & \top0|Div0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(16),
	datad => \top0|Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[45]~267_combout\);

-- Location: LCCOMB_X69_Y48_N2
\top0|Div0|auto_generated|divider|divider|StageOut[45]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[45]~268_combout\ = (\top0|Div0|auto_generated|divider|divider|op_6~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_6~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_6~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[45]~268_combout\);

-- Location: LCCOMB_X69_Y48_N14
\top0|Div0|auto_generated|divider|divider|StageOut[49]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[49]~326_combout\ = (\top0|Div0|auto_generated|divider|divider|op_7~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_6~6_combout\ & ((\top0|counter_top_r\(16)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_6~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_6~0_combout\,
	datab => \top0|counter_top_r\(16),
	datac => \top0|Div0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[49]~326_combout\);

-- Location: LCCOMB_X69_Y48_N6
\top0|Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[45]~267_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_7~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[45]~267_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[45]~268_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[45]~268_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_7~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_7~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[45]~267_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[45]~268_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[45]~267_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[45]~268_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X69_Y48_N28
\top0|Div0|auto_generated|divider|divider|StageOut[49]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[49]~269_combout\ = (\top0|Div0|auto_generated|divider|divider|op_7~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[49]~269_combout\);

-- Location: LCCOMB_X69_Y48_N4
\top0|Div0|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_7~0_combout\ = \top0|counter_top_r\(15) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_7~1\ = CARRY(\top0|counter_top_r\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(15),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X70_Y48_N22
\top0|Div0|auto_generated|divider|divider|StageOut[48]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[48]~271_combout\ = (\top0|Div0|auto_generated|divider|divider|op_7~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[48]~271_combout\);

-- Location: LCCOMB_X70_Y48_N16
\top0|Div0|auto_generated|divider|divider|StageOut[48]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[48]~270_combout\ = (\top0|counter_top_r\(15) & \top0|Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(15),
	datad => \top0|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[48]~270_combout\);

-- Location: LCCOMB_X70_Y48_N10
\top0|Div0|auto_generated|divider|divider|StageOut[52]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[52]~327_combout\ = (\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_7~6_combout\ & (\top0|counter_top_r\(15))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_7~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(15),
	datab => \top0|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[52]~327_combout\);

-- Location: LCCOMB_X70_Y48_N26
\top0|Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[48]~271_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_8~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[48]~271_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[48]~270_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_8~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[48]~270_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_8~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_8~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[48]~271_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[48]~270_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[48]~271_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[48]~270_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_8~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X70_Y48_N20
\top0|Div0|auto_generated|divider|divider|StageOut[52]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[52]~272_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[52]~272_combout\);

-- Location: LCCOMB_X70_Y48_N24
\top0|Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_8~0_combout\ = \top0|counter_top_r\(14) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_8~1\ = CARRY(\top0|counter_top_r\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(14),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X70_Y48_N12
\top0|Div0|auto_generated|divider|divider|StageOut[51]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[51]~274_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_8~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[51]~274_combout\);

-- Location: LCCOMB_X70_Y48_N18
\top0|Div0|auto_generated|divider|divider|StageOut[51]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[51]~273_combout\ = (\top0|counter_top_r\(14) & \top0|Div0|auto_generated|divider|divider|op_8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(14),
	datac => \top0|Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[51]~273_combout\);

-- Location: LCCOMB_X70_Y48_N0
\top0|Div0|auto_generated|divider|divider|op_9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_9~0_combout\ = \top0|counter_top_r\(13) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_9~1\ = CARRY(\top0|counter_top_r\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(13),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X70_Y48_N2
\top0|Div0|auto_generated|divider|divider|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_9~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[51]~274_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_9~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[51]~274_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[51]~273_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_9~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[51]~273_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_9~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_9~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[51]~274_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[51]~273_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[51]~274_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[51]~273_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_9~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X70_Y48_N4
\top0|Div0|auto_generated|divider|divider|op_9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_9~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[52]~327_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[52]~272_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[52]~327_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[52]~272_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_9~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_9~5_cout\);

-- Location: LCCOMB_X70_Y48_N6
\top0|Div0|auto_generated|divider|divider|op_9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_9~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_9~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_9~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_9~6_combout\);

-- Location: LCCOMB_X70_Y51_N12
\top0|Div0|auto_generated|divider|divider|StageOut[55]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[55]~275_combout\ = (\top0|Div0|auto_generated|divider|divider|op_9~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_9~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[55]~275_combout\);

-- Location: LCCOMB_X70_Y48_N8
\top0|Div0|auto_generated|divider|divider|StageOut[55]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[55]~328_combout\ = (\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ & (\top0|counter_top_r\(14))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(14),
	datab => \top0|Div0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[55]~328_combout\);

-- Location: LCCOMB_X70_Y51_N10
\top0|Div0|auto_generated|divider|divider|StageOut[54]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[54]~276_combout\ = (\top0|counter_top_r\(13) & \top0|Div0|auto_generated|divider|divider|op_9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(13),
	datad => \top0|Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[54]~276_combout\);

-- Location: LCCOMB_X70_Y51_N4
\top0|Div0|auto_generated|divider|divider|StageOut[54]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[54]~277_combout\ = (\top0|Div0|auto_generated|divider|divider|op_9~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[54]~277_combout\);

-- Location: LCCOMB_X70_Y51_N16
\top0|Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[54]~276_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_10~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[54]~276_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[54]~277_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_10~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[54]~277_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_10~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_10~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[54]~276_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[54]~277_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[54]~276_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[54]~277_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_10~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X70_Y51_N6
\top0|Div0|auto_generated|divider|divider|StageOut[58]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[58]~278_combout\ = (\top0|Div0|auto_generated|divider|divider|op_10~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_10~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[58]~278_combout\);

-- Location: LCCOMB_X70_Y51_N8
\top0|Div0|auto_generated|divider|divider|StageOut[58]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[58]~329_combout\ = (\top0|Div0|auto_generated|divider|divider|op_10~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & (\top0|counter_top_r\(13))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_9~6_combout\,
	datab => \top0|counter_top_r\(13),
	datac => \top0|Div0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[58]~329_combout\);

-- Location: LCCOMB_X70_Y51_N14
\top0|Div0|auto_generated|divider|divider|op_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_10~0_combout\ = \top0|counter_top_r\(12) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_10~1\ = CARRY(\top0|counter_top_r\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(12),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X70_Y51_N22
\top0|Div0|auto_generated|divider|divider|StageOut[57]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[57]~280_combout\ = (\top0|Div0|auto_generated|divider|divider|op_10~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_10~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[57]~280_combout\);

-- Location: LCCOMB_X70_Y51_N0
\top0|Div0|auto_generated|divider|divider|StageOut[57]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[57]~279_combout\ = (\top0|counter_top_r\(12) & \top0|Div0|auto_generated|divider|divider|op_10~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(12),
	datad => \top0|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[57]~279_combout\);

-- Location: LCCOMB_X70_Y51_N24
\top0|Div0|auto_generated|divider|divider|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_12~0_combout\ = \top0|counter_top_r\(11) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_12~1\ = CARRY(\top0|counter_top_r\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(11),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X70_Y51_N26
\top0|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[57]~280_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_12~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[57]~280_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[57]~279_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_12~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[57]~279_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_12~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_12~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[57]~280_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[57]~279_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[57]~280_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[57]~279_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_12~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X70_Y51_N28
\top0|Div0|auto_generated|divider|divider|op_12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_12~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[58]~278_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[58]~329_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[58]~278_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[58]~329_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_12~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_12~5_cout\);

-- Location: LCCOMB_X70_Y51_N30
\top0|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_12~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_12~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_12~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_12~6_combout\);

-- Location: LCCOMB_X70_Y51_N2
\top0|Div0|auto_generated|divider|divider|StageOut[61]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[61]~330_combout\ = (\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_10~6_combout\ & (\top0|counter_top_r\(12))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_10~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(12),
	datab => \top0|Div0|auto_generated|divider|divider|op_10~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[61]~330_combout\);

-- Location: LCCOMB_X69_Y51_N16
\top0|Div0|auto_generated|divider|divider|StageOut[61]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[61]~281_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[61]~281_combout\);

-- Location: LCCOMB_X69_Y51_N30
\top0|Div0|auto_generated|divider|divider|StageOut[60]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[60]~282_combout\ = (\top0|counter_top_r\(11) & \top0|Div0|auto_generated|divider|divider|op_12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(11),
	datac => \top0|Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[60]~282_combout\);

-- Location: LCCOMB_X69_Y51_N24
\top0|Div0|auto_generated|divider|divider|StageOut[60]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[60]~283_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_12~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[60]~283_combout\);

-- Location: LCCOMB_X69_Y51_N20
\top0|Div0|auto_generated|divider|divider|StageOut[64]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[64]~331_combout\ = (\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & ((\top0|counter_top_r\(11)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_12~0_combout\,
	datab => \top0|counter_top_r\(11),
	datac => \top0|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[64]~331_combout\);

-- Location: LCCOMB_X69_Y51_N6
\top0|Div0|auto_generated|divider|divider|op_13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[60]~282_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_13~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[60]~282_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[60]~283_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_13~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[60]~283_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_13~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_13~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[60]~282_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[60]~283_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[60]~282_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[60]~283_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_13~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X69_Y51_N18
\top0|Div0|auto_generated|divider|divider|StageOut[64]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[64]~284_combout\ = (\top0|Div0|auto_generated|divider|divider|op_13~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[64]~284_combout\);

-- Location: LCCOMB_X69_Y51_N4
\top0|Div0|auto_generated|divider|divider|op_13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_13~0_combout\ = \top0|counter_top_r\(10) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_13~1\ = CARRY(\top0|counter_top_r\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(10),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_13~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_13~1\);

-- Location: LCCOMB_X68_Y51_N26
\top0|Div0|auto_generated|divider|divider|StageOut[63]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[63]~286_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_13~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[63]~286_combout\);

-- Location: LCCOMB_X68_Y51_N0
\top0|Div0|auto_generated|divider|divider|StageOut[63]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[63]~285_combout\ = (\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ & \top0|counter_top_r\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datad => \top0|counter_top_r\(10),
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[63]~285_combout\);

-- Location: LCCOMB_X68_Y51_N12
\top0|Div0|auto_generated|divider|divider|StageOut[67]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[67]~332_combout\ = (\top0|Div0|auto_generated|divider|divider|op_14~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ & ((\top0|counter_top_r\(10)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_13~0_combout\,
	datab => \top0|counter_top_r\(10),
	datac => \top0|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_14~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[67]~332_combout\);

-- Location: LCCOMB_X68_Y51_N16
\top0|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_14~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[63]~286_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_14~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[63]~286_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[63]~285_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_14~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[63]~285_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_14~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_14~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[63]~286_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[63]~285_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[63]~286_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[63]~285_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_14~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X68_Y51_N28
\top0|Div0|auto_generated|divider|divider|StageOut[67]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[67]~287_combout\ = (\top0|Div0|auto_generated|divider|divider|op_14~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_14~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[67]~287_combout\);

-- Location: LCCOMB_X68_Y51_N30
\top0|Div0|auto_generated|divider|divider|StageOut[66]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[66]~288_combout\ = (\top0|counter_top_r\(9) & \top0|Div0|auto_generated|divider|divider|op_14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(9),
	datad => \top0|Div0|auto_generated|divider|divider|op_14~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[66]~288_combout\);

-- Location: LCCOMB_X68_Y51_N14
\top0|Div0|auto_generated|divider|divider|op_14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_14~0_combout\ = \top0|counter_top_r\(9) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_14~1\ = CARRY(\top0|counter_top_r\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(9),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_14~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_14~1\);

-- Location: LCCOMB_X68_Y51_N24
\top0|Div0|auto_generated|divider|divider|StageOut[66]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[66]~289_combout\ = (\top0|Div0|auto_generated|divider|divider|op_14~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_14~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_14~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[66]~289_combout\);

-- Location: LCCOMB_X68_Y51_N2
\top0|Div0|auto_generated|divider|divider|StageOut[70]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[70]~333_combout\ = (\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_14~6_combout\ & ((\top0|counter_top_r\(9)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_14~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_14~0_combout\,
	datab => \top0|counter_top_r\(9),
	datac => \top0|Div0|auto_generated|divider|divider|op_14~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_15~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[70]~333_combout\);

-- Location: LCCOMB_X68_Y51_N6
\top0|Div0|auto_generated|divider|divider|op_15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_15~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[66]~288_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_15~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[66]~288_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[66]~289_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_15~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[66]~289_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_15~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_15~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[66]~288_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[66]~289_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[66]~288_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[66]~289_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_15~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_15~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_15~3\);

-- Location: LCCOMB_X68_Y51_N22
\top0|Div0|auto_generated|divider|divider|StageOut[70]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[70]~290_combout\ = (\top0|Div0|auto_generated|divider|divider|op_15~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_15~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_15~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[70]~290_combout\);

-- Location: LCCOMB_X68_Y51_N4
\top0|Div0|auto_generated|divider|divider|op_15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_15~0_combout\ = \top0|counter_top_r\(8) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_15~1\ = CARRY(\top0|counter_top_r\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(8),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_15~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_15~1\);

-- Location: LCCOMB_X67_Y51_N22
\top0|Div0|auto_generated|divider|divider|StageOut[69]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[69]~292_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_15~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_15~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[69]~292_combout\);

-- Location: LCCOMB_X67_Y51_N0
\top0|Div0|auto_generated|divider|divider|StageOut[69]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[69]~291_combout\ = (\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ & \top0|counter_top_r\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_15~6_combout\,
	datad => \top0|counter_top_r\(8),
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[69]~291_combout\);

-- Location: LCCOMB_X67_Y51_N24
\top0|Div0|auto_generated|divider|divider|op_16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_16~0_combout\ = \top0|counter_top_r\(7) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_16~1\ = CARRY(\top0|counter_top_r\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(7),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_16~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_16~1\);

-- Location: LCCOMB_X67_Y51_N26
\top0|Div0|auto_generated|divider|divider|op_16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_16~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[69]~292_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_16~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[69]~292_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[69]~291_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_16~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[69]~291_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_16~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_16~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[69]~292_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[69]~291_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_16~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[69]~292_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[69]~291_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_16~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X67_Y51_N28
\top0|Div0|auto_generated|divider|divider|op_16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_16~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[70]~333_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[70]~290_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[70]~333_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[70]~290_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_16~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_16~5_cout\);

-- Location: LCCOMB_X67_Y51_N30
\top0|Div0|auto_generated|divider|divider|op_16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_16~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_16~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_16~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_16~6_combout\);

-- Location: LCCOMB_X67_Y51_N12
\top0|Div0|auto_generated|divider|divider|StageOut[73]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[73]~293_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_16~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_16~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[73]~293_combout\);

-- Location: LCCOMB_X67_Y51_N16
\top0|Div0|auto_generated|divider|divider|StageOut[73]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[73]~334_combout\ = (\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ & (\top0|counter_top_r\(8))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(8),
	datab => \top0|Div0|auto_generated|divider|divider|op_15~6_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_16~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_15~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[73]~334_combout\);

-- Location: LCCOMB_X67_Y51_N10
\top0|Div0|auto_generated|divider|divider|StageOut[72]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[72]~294_combout\ = (\top0|counter_top_r\(7) & \top0|Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(7),
	datac => \top0|Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[72]~294_combout\);

-- Location: LCCOMB_X67_Y51_N20
\top0|Div0|auto_generated|divider|divider|StageOut[72]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[72]~295_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_16~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_16~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[72]~295_combout\);

-- Location: LCCOMB_X67_Y51_N2
\top0|Div0|auto_generated|divider|divider|op_17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_17~0_combout\ = \top0|counter_top_r\(6) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_17~1\ = CARRY(\top0|counter_top_r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(6),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_17~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_17~1\);

-- Location: LCCOMB_X67_Y51_N4
\top0|Div0|auto_generated|divider|divider|op_17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_17~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[72]~294_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_17~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[72]~294_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[72]~295_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_17~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[72]~295_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_17~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_17~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[72]~294_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[72]~295_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_17~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[72]~294_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[72]~295_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_17~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_17~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_17~3\);

-- Location: LCCOMB_X67_Y51_N6
\top0|Div0|auto_generated|divider|divider|op_17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_17~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[73]~293_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[73]~334_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[73]~293_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[73]~334_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_17~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_17~5_cout\);

-- Location: LCCOMB_X67_Y51_N8
\top0|Div0|auto_generated|divider|divider|op_17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_17~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_17~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_17~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_17~6_combout\);

-- Location: LCCOMB_X67_Y51_N18
\top0|Div0|auto_generated|divider|divider|StageOut[76]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[76]~335_combout\ = (\top0|Div0|auto_generated|divider|divider|op_17~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & (\top0|counter_top_r\(7))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_16~6_combout\,
	datab => \top0|counter_top_r\(7),
	datac => \top0|Div0|auto_generated|divider|divider|op_17~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_16~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[76]~335_combout\);

-- Location: LCCOMB_X67_Y51_N14
\top0|Div0|auto_generated|divider|divider|StageOut[76]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[76]~296_combout\ = (\top0|Div0|auto_generated|divider|divider|op_17~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_17~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_17~2_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_17~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[76]~296_combout\);

-- Location: LCCOMB_X68_Y50_N26
\top0|Div0|auto_generated|divider|divider|StageOut[75]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[75]~298_combout\ = (\top0|Div0|auto_generated|divider|divider|op_17~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_17~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_17~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_17~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[75]~298_combout\);

-- Location: LCCOMB_X68_Y50_N16
\top0|Div0|auto_generated|divider|divider|StageOut[75]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[75]~297_combout\ = (\top0|counter_top_r\(6) & \top0|Div0|auto_generated|divider|divider|op_17~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(6),
	datad => \top0|Div0|auto_generated|divider|divider|op_17~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[75]~297_combout\);

-- Location: LCCOMB_X68_Y50_N0
\top0|Div0|auto_generated|divider|divider|StageOut[79]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[79]~336_combout\ = (\top0|Div0|auto_generated|divider|divider|op_18~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_17~6_combout\ & ((\top0|counter_top_r\(6)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_17~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_17~0_combout\,
	datab => \top0|counter_top_r\(6),
	datac => \top0|Div0|auto_generated|divider|divider|op_17~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_18~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[79]~336_combout\);

-- Location: LCCOMB_X68_Y50_N20
\top0|Div0|auto_generated|divider|divider|op_18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_18~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[75]~298_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_18~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[75]~298_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[75]~297_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_18~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[75]~297_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_18~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_18~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[75]~298_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[75]~297_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_18~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[75]~298_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[75]~297_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_18~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_18~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_18~3\);

-- Location: LCCOMB_X68_Y50_N4
\top0|Div0|auto_generated|divider|divider|StageOut[79]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[79]~299_combout\ = (\top0|Div0|auto_generated|divider|divider|op_18~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_18~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_18~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_18~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[79]~299_combout\);

-- Location: LCCOMB_X68_Y50_N18
\top0|Div0|auto_generated|divider|divider|op_18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_18~0_combout\ = \top0|counter_top_r\(5) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_18~1\ = CARRY(\top0|counter_top_r\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(5),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_18~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_18~1\);

-- Location: LCCOMB_X68_Y50_N28
\top0|Div0|auto_generated|divider|divider|StageOut[78]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[78]~301_combout\ = (\top0|Div0|auto_generated|divider|divider|op_18~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_18~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_18~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_18~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[78]~301_combout\);

-- Location: LCCOMB_X68_Y50_N2
\top0|Div0|auto_generated|divider|divider|StageOut[78]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[78]~300_combout\ = (\top0|counter_top_r\(5) & \top0|Div0|auto_generated|divider|divider|op_18~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(5),
	datad => \top0|Div0|auto_generated|divider|divider|op_18~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[78]~300_combout\);

-- Location: LCCOMB_X68_Y50_N14
\top0|Div0|auto_generated|divider|divider|StageOut[82]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[82]~337_combout\ = (\top0|Div0|auto_generated|divider|divider|op_19~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_18~6_combout\ & (\top0|counter_top_r\(5))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_18~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(5),
	datab => \top0|Div0|auto_generated|divider|divider|op_18~6_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_18~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_19~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[82]~337_combout\);

-- Location: LCCOMB_X68_Y50_N8
\top0|Div0|auto_generated|divider|divider|op_19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_19~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[78]~301_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_19~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[78]~301_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[78]~300_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_19~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[78]~300_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_19~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_19~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[78]~301_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[78]~300_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_19~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[78]~301_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[78]~300_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_19~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_19~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_19~3\);

-- Location: LCCOMB_X68_Y50_N30
\top0|Div0|auto_generated|divider|divider|StageOut[82]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[82]~302_combout\ = (\top0|Div0|auto_generated|divider|divider|op_19~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_19~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_19~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_19~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[82]~302_combout\);

-- Location: LCCOMB_X68_Y50_N6
\top0|Div0|auto_generated|divider|divider|op_19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_19~0_combout\ = \top0|counter_top_r\(4) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_19~1\ = CARRY(\top0|counter_top_r\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(4),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_19~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_19~1\);

-- Location: LCCOMB_X69_Y50_N22
\top0|Div0|auto_generated|divider|divider|StageOut[81]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[81]~304_combout\ = (\top0|Div0|auto_generated|divider|divider|op_19~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_19~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_19~0_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_19~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[81]~304_combout\);

-- Location: LCCOMB_X69_Y50_N16
\top0|Div0|auto_generated|divider|divider|StageOut[81]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[81]~303_combout\ = (\top0|counter_top_r\(4) & \top0|Div0|auto_generated|divider|divider|op_19~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(4),
	datad => \top0|Div0|auto_generated|divider|divider|op_19~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[81]~303_combout\);

-- Location: LCCOMB_X69_Y50_N10
\top0|Div0|auto_generated|divider|divider|op_20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_20~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[81]~304_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_20~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[81]~304_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[81]~303_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_20~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[81]~303_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_20~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_20~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[81]~304_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[81]~303_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_20~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[81]~304_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[81]~303_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_20~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_20~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_20~3\);

-- Location: LCCOMB_X69_Y50_N20
\top0|Div0|auto_generated|divider|divider|StageOut[85]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[85]~305_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_20~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_20~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_20~2_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[85]~305_combout\);

-- Location: LCCOMB_X69_Y50_N24
\top0|Div0|auto_generated|divider|divider|StageOut[85]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[85]~338_combout\ = (\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_19~6_combout\ & ((\top0|counter_top_r\(4)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_19~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_19~0_combout\,
	datab => \top0|counter_top_r\(4),
	datac => \top0|Div0|auto_generated|divider|divider|op_20~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_19~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[85]~338_combout\);

-- Location: LCCOMB_X69_Y50_N30
\top0|Div0|auto_generated|divider|divider|StageOut[84]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[84]~306_combout\ = (\top0|counter_top_r\(3) & \top0|Div0|auto_generated|divider|divider|op_20~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(3),
	datac => \top0|Div0|auto_generated|divider|divider|op_20~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[84]~306_combout\);

-- Location: LCCOMB_X69_Y50_N8
\top0|Div0|auto_generated|divider|divider|op_20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_20~0_combout\ = \top0|counter_top_r\(3) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_20~1\ = CARRY(\top0|counter_top_r\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(3),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_20~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_20~1\);

-- Location: LCCOMB_X69_Y50_N28
\top0|Div0|auto_generated|divider|divider|StageOut[84]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[84]~307_combout\ = (\top0|Div0|auto_generated|divider|divider|op_20~0_combout\ & !\top0|Div0|auto_generated|divider|divider|op_20~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_20~0_combout\,
	datac => \top0|Div0|auto_generated|divider|divider|op_20~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[84]~307_combout\);

-- Location: LCCOMB_X69_Y50_N2
\top0|Div0|auto_generated|divider|divider|op_21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_21~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[84]~306_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_21~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[84]~306_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[84]~307_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_21~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[84]~307_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_21~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_21~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[84]~306_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[84]~307_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_21~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[84]~306_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[84]~307_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_21~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_21~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_21~3\);

-- Location: LCCOMB_X69_Y50_N26
\top0|Div0|auto_generated|divider|divider|StageOut[88]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[88]~308_combout\ = (\top0|Div0|auto_generated|divider|divider|op_21~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_21~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_21~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_21~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[88]~308_combout\);

-- Location: LCCOMB_X69_Y50_N18
\top0|Div0|auto_generated|divider|divider|StageOut[88]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\ = (\top0|Div0|auto_generated|divider|divider|op_21~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & ((\top0|counter_top_r\(3)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_20~0_combout\,
	datab => \top0|counter_top_r\(3),
	datac => \top0|Div0|auto_generated|divider|divider|op_20~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_21~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\);

-- Location: LCCOMB_X69_Y50_N0
\top0|Div0|auto_generated|divider|divider|op_21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_21~0_combout\ = \top0|counter_top_r\(2) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_21~1\ = CARRY(\top0|counter_top_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(2),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_21~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_21~1\);

-- Location: LCCOMB_X70_Y50_N22
\top0|Div0|auto_generated|divider|divider|StageOut[87]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[87]~310_combout\ = (!\top0|Div0|auto_generated|divider|divider|op_21~6_combout\ & \top0|Div0|auto_generated|divider|divider|op_21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|Div0|auto_generated|divider|divider|op_21~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_21~0_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[87]~310_combout\);

-- Location: LCCOMB_X70_Y50_N4
\top0|Div0|auto_generated|divider|divider|StageOut[87]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[87]~309_combout\ = (\top0|counter_top_r\(2) & \top0|Div0|auto_generated|divider|divider|op_21~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(2),
	datac => \top0|Div0|auto_generated|divider|divider|op_21~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[87]~309_combout\);

-- Location: LCCOMB_X70_Y50_N16
\top0|Div0|auto_generated|divider|divider|op_23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_23~2_combout\ = (\top0|Div0|auto_generated|divider|divider|StageOut[87]~310_combout\ & (((!\top0|Div0|auto_generated|divider|divider|op_23~1\)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[87]~310_combout\ & ((\top0|Div0|auto_generated|divider|divider|StageOut[87]~309_combout\ & (!\top0|Div0|auto_generated|divider|divider|op_23~1\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|StageOut[87]~309_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_23~1\) # (GND)))))
-- \top0|Div0|auto_generated|divider|divider|op_23~3\ = CARRY(((!\top0|Div0|auto_generated|divider|divider|StageOut[87]~310_combout\ & !\top0|Div0|auto_generated|divider|divider|StageOut[87]~309_combout\)) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_23~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[87]~310_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[87]~309_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_23~1\,
	combout => \top0|Div0|auto_generated|divider|divider|op_23~2_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_23~3\);

-- Location: LCCOMB_X70_Y50_N12
\top0|Div0|auto_generated|divider|divider|StageOut[91]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[91]~311_combout\ = (\top0|Div0|auto_generated|divider|divider|op_23~2_combout\ & !\top0|Div0|auto_generated|divider|divider|op_23~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_23~2_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_23~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[91]~311_combout\);

-- Location: LCCOMB_X70_Y50_N24
\top0|Div0|auto_generated|divider|divider|StageOut[91]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[91]~340_combout\ = (\top0|Div0|auto_generated|divider|divider|op_23~6_combout\ & ((\top0|Div0|auto_generated|divider|divider|op_21~6_combout\ & ((\top0|counter_top_r\(2)))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_21~6_combout\ & (\top0|Div0|auto_generated|divider|divider|op_21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_21~0_combout\,
	datab => \top0|counter_top_r\(2),
	datac => \top0|Div0|auto_generated|divider|divider|op_21~6_combout\,
	datad => \top0|Div0|auto_generated|divider|divider|op_23~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[91]~340_combout\);

-- Location: LCCOMB_X70_Y50_N14
\top0|Div0|auto_generated|divider|divider|op_23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_23~0_combout\ = \top0|counter_top_r\(1) $ (VCC)
-- \top0|Div0|auto_generated|divider|divider|op_23~1\ = CARRY(\top0|counter_top_r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_top_r\(1),
	datad => VCC,
	combout => \top0|Div0|auto_generated|divider|divider|op_23~0_combout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_23~1\);

-- Location: LCCOMB_X70_Y50_N10
\top0|Div0|auto_generated|divider|divider|StageOut[90]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|StageOut[90]~312_combout\ = (\top0|Div0|auto_generated|divider|divider|op_23~6_combout\ & ((\top0|counter_top_r\(1)))) # (!\top0|Div0|auto_generated|divider|divider|op_23~6_combout\ & 
-- (\top0|Div0|auto_generated|divider|divider|op_23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|Div0|auto_generated|divider|divider|op_23~0_combout\,
	datac => \top0|counter_top_r\(1),
	datad => \top0|Div0|auto_generated|divider|divider|op_23~6_combout\,
	combout => \top0|Div0|auto_generated|divider|divider|StageOut[90]~312_combout\);

-- Location: LCCOMB_X73_Y50_N0
\top0|counter_top_r[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[0]~32_combout\ = (\top0|Div0|auto_generated|divider|divider|op_24~4_combout\ & (\top0|counter_top_r\(0) & VCC)) # (!\top0|Div0|auto_generated|divider|divider|op_24~4_combout\ & (\top0|counter_top_r\(0) $ (VCC)))
-- \top0|counter_top_r[0]~33\ = CARRY((!\top0|Div0|auto_generated|divider|divider|op_24~4_combout\ & \top0|counter_top_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_24~4_combout\,
	datab => \top0|counter_top_r\(0),
	datad => VCC,
	combout => \top0|counter_top_r[0]~32_combout\,
	cout => \top0|counter_top_r[0]~33\);

-- Location: LCCOMB_X73_Y46_N16
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X73_Y50_N1
\top0|counter_top_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[0]~32_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(0));

-- Location: LCCOMB_X70_Y50_N26
\top0|Div0|auto_generated|divider|divider|op_24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_24~1_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[90]~312_combout\ & \top0|counter_top_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[90]~312_combout\,
	datab => \top0|counter_top_r\(0),
	datad => VCC,
	cout => \top0|Div0|auto_generated|divider|divider|op_24~1_cout\);

-- Location: LCCOMB_X70_Y50_N28
\top0|Div0|auto_generated|divider|divider|op_24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_24~3_cout\ = CARRY((!\top0|Div0|auto_generated|divider|divider|StageOut[91]~311_combout\ & (!\top0|Div0|auto_generated|divider|divider|StageOut[91]~340_combout\ & 
-- !\top0|Div0|auto_generated|divider|divider|op_24~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[91]~311_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[91]~340_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_24~1_cout\,
	cout => \top0|Div0|auto_generated|divider|divider|op_24~3_cout\);

-- Location: LCCOMB_X70_Y50_N30
\top0|Div0|auto_generated|divider|divider|op_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_24~4_combout\ = \top0|Div0|auto_generated|divider|divider|op_24~3_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_24~3_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_24~4_combout\);

-- Location: LCCOMB_X73_Y50_N2
\top0|counter_top_r[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[1]~34_combout\ = (\top0|Div0|auto_generated|divider|divider|op_23~6_combout\ & ((\top0|counter_top_r\(1) & (!\top0|counter_top_r[0]~33\)) # (!\top0|counter_top_r\(1) & ((\top0|counter_top_r[0]~33\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_23~6_combout\ & ((\top0|counter_top_r\(1) & (\top0|counter_top_r[0]~33\ & VCC)) # (!\top0|counter_top_r\(1) & (!\top0|counter_top_r[0]~33\))))
-- \top0|counter_top_r[1]~35\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_23~6_combout\ & ((!\top0|counter_top_r[0]~33\) # (!\top0|counter_top_r\(1)))) # (!\top0|Div0|auto_generated|divider|divider|op_23~6_combout\ & (!\top0|counter_top_r\(1) & 
-- !\top0|counter_top_r[0]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_23~6_combout\,
	datab => \top0|counter_top_r\(1),
	datad => VCC,
	cin => \top0|counter_top_r[0]~33\,
	combout => \top0|counter_top_r[1]~34_combout\,
	cout => \top0|counter_top_r[1]~35\);

-- Location: FF_X73_Y50_N3
\top0|counter_top_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[1]~34_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(1));

-- Location: LCCOMB_X70_Y50_N18
\top0|Div0|auto_generated|divider|divider|op_23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_23~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[88]~308_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_23~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[88]~308_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_23~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_23~5_cout\);

-- Location: LCCOMB_X70_Y50_N20
\top0|Div0|auto_generated|divider|divider|op_23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_23~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_23~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_23~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_23~6_combout\);

-- Location: LCCOMB_X73_Y50_N4
\top0|counter_top_r[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[2]~36_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_21~6_combout\ $ (\top0|counter_top_r\(2) $ (\top0|counter_top_r[1]~35\)))) # (GND)
-- \top0|counter_top_r[2]~37\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_21~6_combout\ & (\top0|counter_top_r\(2) & !\top0|counter_top_r[1]~35\)) # (!\top0|Div0|auto_generated|divider|divider|op_21~6_combout\ & ((\top0|counter_top_r\(2)) # 
-- (!\top0|counter_top_r[1]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_21~6_combout\,
	datab => \top0|counter_top_r\(2),
	datad => VCC,
	cin => \top0|counter_top_r[1]~35\,
	combout => \top0|counter_top_r[2]~36_combout\,
	cout => \top0|counter_top_r[2]~37\);

-- Location: FF_X73_Y50_N5
\top0|counter_top_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[2]~36_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(2));

-- Location: LCCOMB_X69_Y50_N4
\top0|Div0|auto_generated|divider|divider|op_21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_21~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[85]~305_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[85]~338_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_21~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[85]~305_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[85]~338_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_21~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_21~5_cout\);

-- Location: LCCOMB_X69_Y50_N6
\top0|Div0|auto_generated|divider|divider|op_21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_21~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_21~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_21~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_21~6_combout\);

-- Location: LCCOMB_X73_Y50_N6
\top0|counter_top_r[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[3]~38_combout\ = (\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & ((\top0|counter_top_r\(3) & (!\top0|counter_top_r[2]~37\)) # (!\top0|counter_top_r\(3) & ((\top0|counter_top_r[2]~37\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & ((\top0|counter_top_r\(3) & (\top0|counter_top_r[2]~37\ & VCC)) # (!\top0|counter_top_r\(3) & (!\top0|counter_top_r[2]~37\))))
-- \top0|counter_top_r[3]~39\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & ((!\top0|counter_top_r[2]~37\) # (!\top0|counter_top_r\(3)))) # (!\top0|Div0|auto_generated|divider|divider|op_20~6_combout\ & (!\top0|counter_top_r\(3) & 
-- !\top0|counter_top_r[2]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_20~6_combout\,
	datab => \top0|counter_top_r\(3),
	datad => VCC,
	cin => \top0|counter_top_r[2]~37\,
	combout => \top0|counter_top_r[3]~38_combout\,
	cout => \top0|counter_top_r[3]~39\);

-- Location: FF_X73_Y50_N7
\top0|counter_top_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[3]~38_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(3));

-- Location: LCCOMB_X69_Y50_N12
\top0|Div0|auto_generated|divider|divider|op_20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_20~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[82]~337_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[82]~302_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[82]~337_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[82]~302_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_20~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_20~5_cout\);

-- Location: LCCOMB_X69_Y50_N14
\top0|Div0|auto_generated|divider|divider|op_20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_20~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_20~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_20~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_20~6_combout\);

-- Location: LCCOMB_X73_Y50_N8
\top0|counter_top_r[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[4]~40_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_19~6_combout\ $ (\top0|counter_top_r\(4) $ (\top0|counter_top_r[3]~39\)))) # (GND)
-- \top0|counter_top_r[4]~41\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_19~6_combout\ & (\top0|counter_top_r\(4) & !\top0|counter_top_r[3]~39\)) # (!\top0|Div0|auto_generated|divider|divider|op_19~6_combout\ & ((\top0|counter_top_r\(4)) # 
-- (!\top0|counter_top_r[3]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_19~6_combout\,
	datab => \top0|counter_top_r\(4),
	datad => VCC,
	cin => \top0|counter_top_r[3]~39\,
	combout => \top0|counter_top_r[4]~40_combout\,
	cout => \top0|counter_top_r[4]~41\);

-- Location: FF_X73_Y50_N9
\top0|counter_top_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[4]~40_combout\,
	asdata => VCC,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(4));

-- Location: LCCOMB_X68_Y50_N10
\top0|Div0|auto_generated|divider|divider|op_19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_19~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[79]~336_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[79]~299_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_19~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[79]~336_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[79]~299_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_19~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_19~5_cout\);

-- Location: LCCOMB_X68_Y50_N12
\top0|Div0|auto_generated|divider|divider|op_19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_19~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_19~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_19~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_19~6_combout\);

-- Location: LCCOMB_X73_Y50_N10
\top0|counter_top_r[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[5]~42_combout\ = (\top0|Div0|auto_generated|divider|divider|op_18~6_combout\ & ((\top0|counter_top_r\(5) & (!\top0|counter_top_r[4]~41\)) # (!\top0|counter_top_r\(5) & ((\top0|counter_top_r[4]~41\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_18~6_combout\ & ((\top0|counter_top_r\(5) & (\top0|counter_top_r[4]~41\ & VCC)) # (!\top0|counter_top_r\(5) & (!\top0|counter_top_r[4]~41\))))
-- \top0|counter_top_r[5]~43\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_18~6_combout\ & ((!\top0|counter_top_r[4]~41\) # (!\top0|counter_top_r\(5)))) # (!\top0|Div0|auto_generated|divider|divider|op_18~6_combout\ & (!\top0|counter_top_r\(5) & 
-- !\top0|counter_top_r[4]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_18~6_combout\,
	datab => \top0|counter_top_r\(5),
	datad => VCC,
	cin => \top0|counter_top_r[4]~41\,
	combout => \top0|counter_top_r[5]~42_combout\,
	cout => \top0|counter_top_r[5]~43\);

-- Location: FF_X73_Y50_N11
\top0|counter_top_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[5]~42_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(5));

-- Location: LCCOMB_X68_Y50_N22
\top0|Div0|auto_generated|divider|divider|op_18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_18~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[76]~335_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[76]~296_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[76]~335_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[76]~296_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_18~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_18~5_cout\);

-- Location: LCCOMB_X68_Y50_N24
\top0|Div0|auto_generated|divider|divider|op_18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_18~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_18~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_18~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_18~6_combout\);

-- Location: LCCOMB_X73_Y50_N12
\top0|counter_top_r[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[6]~44_combout\ = ((\top0|counter_top_r\(6) $ (\top0|Div0|auto_generated|divider|divider|op_17~6_combout\ $ (\top0|counter_top_r[5]~43\)))) # (GND)
-- \top0|counter_top_r[6]~45\ = CARRY((\top0|counter_top_r\(6) & ((!\top0|counter_top_r[5]~43\) # (!\top0|Div0|auto_generated|divider|divider|op_17~6_combout\))) # (!\top0|counter_top_r\(6) & (!\top0|Div0|auto_generated|divider|divider|op_17~6_combout\ & 
-- !\top0|counter_top_r[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(6),
	datab => \top0|Div0|auto_generated|divider|divider|op_17~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[5]~43\,
	combout => \top0|counter_top_r[6]~44_combout\,
	cout => \top0|counter_top_r[6]~45\);

-- Location: FF_X73_Y50_N13
\top0|counter_top_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[6]~44_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(6));

-- Location: LCCOMB_X73_Y50_N14
\top0|counter_top_r[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[7]~46_combout\ = (\top0|counter_top_r\(7) & ((\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & (!\top0|counter_top_r[6]~45\)) # (!\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & (\top0|counter_top_r[6]~45\ & 
-- VCC)))) # (!\top0|counter_top_r\(7) & ((\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & ((\top0|counter_top_r[6]~45\) # (GND))) # (!\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & (!\top0|counter_top_r[6]~45\))))
-- \top0|counter_top_r[7]~47\ = CARRY((\top0|counter_top_r\(7) & (\top0|Div0|auto_generated|divider|divider|op_16~6_combout\ & !\top0|counter_top_r[6]~45\)) # (!\top0|counter_top_r\(7) & ((\top0|Div0|auto_generated|divider|divider|op_16~6_combout\) # 
-- (!\top0|counter_top_r[6]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(7),
	datab => \top0|Div0|auto_generated|divider|divider|op_16~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[6]~45\,
	combout => \top0|counter_top_r[7]~46_combout\,
	cout => \top0|counter_top_r[7]~47\);

-- Location: FF_X73_Y50_N15
\top0|counter_top_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[7]~46_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(7));

-- Location: LCCOMB_X73_Y50_N16
\top0|counter_top_r[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[8]~48_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ $ (\top0|counter_top_r\(8) $ (\top0|counter_top_r[7]~47\)))) # (GND)
-- \top0|counter_top_r[8]~49\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ & (\top0|counter_top_r\(8) & !\top0|counter_top_r[7]~47\)) # (!\top0|Div0|auto_generated|divider|divider|op_15~6_combout\ & ((\top0|counter_top_r\(8)) # 
-- (!\top0|counter_top_r[7]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_15~6_combout\,
	datab => \top0|counter_top_r\(8),
	datad => VCC,
	cin => \top0|counter_top_r[7]~47\,
	combout => \top0|counter_top_r[8]~48_combout\,
	cout => \top0|counter_top_r[8]~49\);

-- Location: FF_X73_Y50_N17
\top0|counter_top_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[8]~48_combout\,
	asdata => VCC,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(8));

-- Location: LCCOMB_X68_Y51_N8
\top0|Div0|auto_generated|divider|divider|op_15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_15~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[67]~332_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[67]~287_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[67]~332_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[67]~287_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_15~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_15~5_cout\);

-- Location: LCCOMB_X68_Y51_N10
\top0|Div0|auto_generated|divider|divider|op_15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_15~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_15~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_15~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_15~6_combout\);

-- Location: LCCOMB_X73_Y50_N18
\top0|counter_top_r[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[9]~50_combout\ = (\top0|Div0|auto_generated|divider|divider|op_14~6_combout\ & ((\top0|counter_top_r\(9) & (!\top0|counter_top_r[8]~49\)) # (!\top0|counter_top_r\(9) & ((\top0|counter_top_r[8]~49\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_14~6_combout\ & ((\top0|counter_top_r\(9) & (\top0|counter_top_r[8]~49\ & VCC)) # (!\top0|counter_top_r\(9) & (!\top0|counter_top_r[8]~49\))))
-- \top0|counter_top_r[9]~51\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_14~6_combout\ & ((!\top0|counter_top_r[8]~49\) # (!\top0|counter_top_r\(9)))) # (!\top0|Div0|auto_generated|divider|divider|op_14~6_combout\ & (!\top0|counter_top_r\(9) & 
-- !\top0|counter_top_r[8]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_14~6_combout\,
	datab => \top0|counter_top_r\(9),
	datad => VCC,
	cin => \top0|counter_top_r[8]~49\,
	combout => \top0|counter_top_r[9]~50_combout\,
	cout => \top0|counter_top_r[9]~51\);

-- Location: FF_X73_Y50_N19
\top0|counter_top_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[9]~50_combout\,
	asdata => VCC,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(9));

-- Location: LCCOMB_X68_Y51_N18
\top0|Div0|auto_generated|divider|divider|op_14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_14~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[64]~331_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[64]~284_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[64]~331_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[64]~284_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_14~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_14~5_cout\);

-- Location: LCCOMB_X68_Y51_N20
\top0|Div0|auto_generated|divider|divider|op_14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_14~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_14~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_14~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_14~6_combout\);

-- Location: LCCOMB_X73_Y50_N20
\top0|counter_top_r[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[10]~52_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ $ (\top0|counter_top_r\(10) $ (\top0|counter_top_r[9]~51\)))) # (GND)
-- \top0|counter_top_r[10]~53\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ & (\top0|counter_top_r\(10) & !\top0|counter_top_r[9]~51\)) # (!\top0|Div0|auto_generated|divider|divider|op_13~6_combout\ & ((\top0|counter_top_r\(10)) # 
-- (!\top0|counter_top_r[9]~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datab => \top0|counter_top_r\(10),
	datad => VCC,
	cin => \top0|counter_top_r[9]~51\,
	combout => \top0|counter_top_r[10]~52_combout\,
	cout => \top0|counter_top_r[10]~53\);

-- Location: FF_X73_Y50_N21
\top0|counter_top_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[10]~52_combout\,
	asdata => VCC,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(10));

-- Location: LCCOMB_X69_Y51_N8
\top0|Div0|auto_generated|divider|divider|op_13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_13~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[61]~330_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[61]~281_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[61]~330_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[61]~281_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_13~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_13~5_cout\);

-- Location: LCCOMB_X69_Y51_N10
\top0|Div0|auto_generated|divider|divider|op_13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_13~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_13~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_13~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_13~6_combout\);

-- Location: LCCOMB_X73_Y50_N22
\top0|counter_top_r[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[11]~54_combout\ = (\top0|counter_top_r\(11) & ((\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & (!\top0|counter_top_r[10]~53\)) # (!\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & (\top0|counter_top_r[10]~53\ 
-- & VCC)))) # (!\top0|counter_top_r\(11) & ((\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & ((\top0|counter_top_r[10]~53\) # (GND))) # (!\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & (!\top0|counter_top_r[10]~53\))))
-- \top0|counter_top_r[11]~55\ = CARRY((\top0|counter_top_r\(11) & (\top0|Div0|auto_generated|divider|divider|op_12~6_combout\ & !\top0|counter_top_r[10]~53\)) # (!\top0|counter_top_r\(11) & ((\top0|Div0|auto_generated|divider|divider|op_12~6_combout\) # 
-- (!\top0|counter_top_r[10]~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(11),
	datab => \top0|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[10]~53\,
	combout => \top0|counter_top_r[11]~54_combout\,
	cout => \top0|counter_top_r[11]~55\);

-- Location: FF_X73_Y50_N23
\top0|counter_top_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[11]~54_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(11));

-- Location: LCCOMB_X73_Y50_N24
\top0|counter_top_r[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[12]~56_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_10~6_combout\ $ (\top0|counter_top_r\(12) $ (\top0|counter_top_r[11]~55\)))) # (GND)
-- \top0|counter_top_r[12]~57\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_10~6_combout\ & (\top0|counter_top_r\(12) & !\top0|counter_top_r[11]~55\)) # (!\top0|Div0|auto_generated|divider|divider|op_10~6_combout\ & ((\top0|counter_top_r\(12)) # 
-- (!\top0|counter_top_r[11]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datab => \top0|counter_top_r\(12),
	datad => VCC,
	cin => \top0|counter_top_r[11]~55\,
	combout => \top0|counter_top_r[12]~56_combout\,
	cout => \top0|counter_top_r[12]~57\);

-- Location: FF_X73_Y50_N25
\top0|counter_top_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[12]~56_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(12));

-- Location: LCCOMB_X70_Y51_N18
\top0|Div0|auto_generated|divider|divider|op_10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_10~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[55]~275_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[55]~328_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[55]~275_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[55]~328_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_10~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_10~5_cout\);

-- Location: LCCOMB_X70_Y51_N20
\top0|Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_10~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_10~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_10~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_10~6_combout\);

-- Location: LCCOMB_X73_Y50_N26
\top0|counter_top_r[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[13]~58_combout\ = (\top0|counter_top_r\(13) & ((\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & (!\top0|counter_top_r[12]~57\)) # (!\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & (\top0|counter_top_r[12]~57\ & 
-- VCC)))) # (!\top0|counter_top_r\(13) & ((\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & ((\top0|counter_top_r[12]~57\) # (GND))) # (!\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & (!\top0|counter_top_r[12]~57\))))
-- \top0|counter_top_r[13]~59\ = CARRY((\top0|counter_top_r\(13) & (\top0|Div0|auto_generated|divider|divider|op_9~6_combout\ & !\top0|counter_top_r[12]~57\)) # (!\top0|counter_top_r\(13) & ((\top0|Div0|auto_generated|divider|divider|op_9~6_combout\) # 
-- (!\top0|counter_top_r[12]~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(13),
	datab => \top0|Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[12]~57\,
	combout => \top0|counter_top_r[13]~58_combout\,
	cout => \top0|counter_top_r[13]~59\);

-- Location: FF_X73_Y50_N27
\top0|counter_top_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[13]~58_combout\,
	asdata => VCC,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(13));

-- Location: LCCOMB_X73_Y50_N28
\top0|counter_top_r[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[14]~60_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ $ (\top0|counter_top_r\(14) $ (\top0|counter_top_r[13]~59\)))) # (GND)
-- \top0|counter_top_r[14]~61\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ & (\top0|counter_top_r\(14) & !\top0|counter_top_r[13]~59\)) # (!\top0|Div0|auto_generated|divider|divider|op_8~6_combout\ & ((\top0|counter_top_r\(14)) # 
-- (!\top0|counter_top_r[13]~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datab => \top0|counter_top_r\(14),
	datad => VCC,
	cin => \top0|counter_top_r[13]~59\,
	combout => \top0|counter_top_r[14]~60_combout\,
	cout => \top0|counter_top_r[14]~61\);

-- Location: FF_X73_Y50_N29
\top0|counter_top_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[14]~60_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(14));

-- Location: LCCOMB_X70_Y48_N28
\top0|Div0|auto_generated|divider|divider|op_8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_8~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[49]~326_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[49]~269_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[49]~326_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[49]~269_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_8~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_8~5_cout\);

-- Location: LCCOMB_X70_Y48_N30
\top0|Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_8~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_8~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_8~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_8~6_combout\);

-- Location: LCCOMB_X73_Y50_N30
\top0|counter_top_r[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[15]~62_combout\ = (\top0|Div0|auto_generated|divider|divider|op_7~6_combout\ & ((\top0|counter_top_r\(15) & (!\top0|counter_top_r[14]~61\)) # (!\top0|counter_top_r\(15) & ((\top0|counter_top_r[14]~61\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_7~6_combout\ & ((\top0|counter_top_r\(15) & (\top0|counter_top_r[14]~61\ & VCC)) # (!\top0|counter_top_r\(15) & (!\top0|counter_top_r[14]~61\))))
-- \top0|counter_top_r[15]~63\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_7~6_combout\ & ((!\top0|counter_top_r[14]~61\) # (!\top0|counter_top_r\(15)))) # (!\top0|Div0|auto_generated|divider|divider|op_7~6_combout\ & (!\top0|counter_top_r\(15) & 
-- !\top0|counter_top_r[14]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_7~6_combout\,
	datab => \top0|counter_top_r\(15),
	datad => VCC,
	cin => \top0|counter_top_r[14]~61\,
	combout => \top0|counter_top_r[15]~62_combout\,
	cout => \top0|counter_top_r[15]~63\);

-- Location: FF_X73_Y50_N31
\top0|counter_top_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[15]~62_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(15));

-- Location: LCCOMB_X69_Y48_N8
\top0|Div0|auto_generated|divider|divider|op_7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_7~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[46]~266_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[46]~325_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[46]~266_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[46]~325_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_7~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_7~5_cout\);

-- Location: LCCOMB_X69_Y48_N10
\top0|Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_7~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_7~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_7~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_7~6_combout\);

-- Location: LCCOMB_X73_Y49_N0
\top0|counter_top_r[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[16]~64_combout\ = ((\top0|counter_top_r\(16) $ (\top0|Div0|auto_generated|divider|divider|op_6~6_combout\ $ (\top0|counter_top_r[15]~63\)))) # (GND)
-- \top0|counter_top_r[16]~65\ = CARRY((\top0|counter_top_r\(16) & ((!\top0|counter_top_r[15]~63\) # (!\top0|Div0|auto_generated|divider|divider|op_6~6_combout\))) # (!\top0|counter_top_r\(16) & (!\top0|Div0|auto_generated|divider|divider|op_6~6_combout\ & 
-- !\top0|counter_top_r[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(16),
	datab => \top0|Div0|auto_generated|divider|divider|op_6~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[15]~63\,
	combout => \top0|counter_top_r[16]~64_combout\,
	cout => \top0|counter_top_r[16]~65\);

-- Location: FF_X73_Y49_N1
\top0|counter_top_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[16]~64_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(16));

-- Location: LCCOMB_X73_Y49_N2
\top0|counter_top_r[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[17]~66_combout\ = (\top0|Div0|auto_generated|divider|divider|op_5~6_combout\ & ((\top0|counter_top_r\(17) & (!\top0|counter_top_r[16]~65\)) # (!\top0|counter_top_r\(17) & ((\top0|counter_top_r[16]~65\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_5~6_combout\ & ((\top0|counter_top_r\(17) & (\top0|counter_top_r[16]~65\ & VCC)) # (!\top0|counter_top_r\(17) & (!\top0|counter_top_r[16]~65\))))
-- \top0|counter_top_r[17]~67\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_5~6_combout\ & ((!\top0|counter_top_r[16]~65\) # (!\top0|counter_top_r\(17)))) # (!\top0|Div0|auto_generated|divider|divider|op_5~6_combout\ & (!\top0|counter_top_r\(17) & 
-- !\top0|counter_top_r[16]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_5~6_combout\,
	datab => \top0|counter_top_r\(17),
	datad => VCC,
	cin => \top0|counter_top_r[16]~65\,
	combout => \top0|counter_top_r[17]~66_combout\,
	cout => \top0|counter_top_r[17]~67\);

-- Location: FF_X73_Y49_N3
\top0|counter_top_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[17]~66_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(17));

-- Location: LCCOMB_X68_Y48_N18
\top0|Div0|auto_generated|divider|divider|op_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_5~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[40]~260_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[40]~323_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[40]~260_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[40]~323_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_5~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_5~5_cout\);

-- Location: LCCOMB_X68_Y48_N20
\top0|Div0|auto_generated|divider|divider|op_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_5~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_5~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_5~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_5~6_combout\);

-- Location: LCCOMB_X73_Y49_N4
\top0|counter_top_r[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[18]~68_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_4~6_combout\ $ (\top0|counter_top_r\(18) $ (\top0|counter_top_r[17]~67\)))) # (GND)
-- \top0|counter_top_r[18]~69\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_4~6_combout\ & (\top0|counter_top_r\(18) & !\top0|counter_top_r[17]~67\)) # (!\top0|Div0|auto_generated|divider|divider|op_4~6_combout\ & ((\top0|counter_top_r\(18)) # 
-- (!\top0|counter_top_r[17]~67\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_4~6_combout\,
	datab => \top0|counter_top_r\(18),
	datad => VCC,
	cin => \top0|counter_top_r[17]~67\,
	combout => \top0|counter_top_r[18]~68_combout\,
	cout => \top0|counter_top_r[18]~69\);

-- Location: FF_X73_Y49_N5
\top0|counter_top_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[18]~68_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(18));

-- Location: LCCOMB_X73_Y48_N20
\top0|Div0|auto_generated|divider|divider|op_4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_4~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[37]~257_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[37]~322_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[37]~257_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[37]~322_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_4~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_4~5_cout\);

-- Location: LCCOMB_X73_Y48_N22
\top0|Div0|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_4~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_4~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_4~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_4~6_combout\);

-- Location: LCCOMB_X73_Y49_N6
\top0|counter_top_r[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[19]~70_combout\ = (\top0|Div0|auto_generated|divider|divider|op_3~6_combout\ & ((\top0|counter_top_r\(19) & (!\top0|counter_top_r[18]~69\)) # (!\top0|counter_top_r\(19) & ((\top0|counter_top_r[18]~69\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_3~6_combout\ & ((\top0|counter_top_r\(19) & (\top0|counter_top_r[18]~69\ & VCC)) # (!\top0|counter_top_r\(19) & (!\top0|counter_top_r[18]~69\))))
-- \top0|counter_top_r[19]~71\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_3~6_combout\ & ((!\top0|counter_top_r[18]~69\) # (!\top0|counter_top_r\(19)))) # (!\top0|Div0|auto_generated|divider|divider|op_3~6_combout\ & (!\top0|counter_top_r\(19) & 
-- !\top0|counter_top_r[18]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_3~6_combout\,
	datab => \top0|counter_top_r\(19),
	datad => VCC,
	cin => \top0|counter_top_r[18]~69\,
	combout => \top0|counter_top_r[19]~70_combout\,
	cout => \top0|counter_top_r[19]~71\);

-- Location: FF_X73_Y49_N7
\top0|counter_top_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[19]~70_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(19));

-- Location: LCCOMB_X73_Y48_N10
\top0|Div0|auto_generated|divider|divider|op_3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_3~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[34]~321_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[34]~254_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[34]~321_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[34]~254_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_3~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_3~5_cout\);

-- Location: LCCOMB_X73_Y48_N12
\top0|Div0|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_3~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_3~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_3~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_3~6_combout\);

-- Location: LCCOMB_X73_Y49_N8
\top0|counter_top_r[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[20]~72_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_2~6_combout\ $ (\top0|counter_top_r\(20) $ (\top0|counter_top_r[19]~71\)))) # (GND)
-- \top0|counter_top_r[20]~73\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_2~6_combout\ & (\top0|counter_top_r\(20) & !\top0|counter_top_r[19]~71\)) # (!\top0|Div0|auto_generated|divider|divider|op_2~6_combout\ & ((\top0|counter_top_r\(20)) # 
-- (!\top0|counter_top_r[19]~71\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_2~6_combout\,
	datab => \top0|counter_top_r\(20),
	datad => VCC,
	cin => \top0|counter_top_r[19]~71\,
	combout => \top0|counter_top_r[20]~72_combout\,
	cout => \top0|counter_top_r[20]~73\);

-- Location: FF_X73_Y49_N9
\top0|counter_top_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[20]~72_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(20));

-- Location: LCCOMB_X74_Y48_N20
\top0|Div0|auto_generated|divider|divider|op_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_2~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[31]~251_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[31]~320_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[31]~251_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[31]~320_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_2~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_2~5_cout\);

-- Location: LCCOMB_X74_Y48_N22
\top0|Div0|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_2~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_2~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_2~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_2~6_combout\);

-- Location: LCCOMB_X73_Y49_N10
\top0|counter_top_r[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[21]~74_combout\ = (\top0|counter_top_r\(21) & ((\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & (!\top0|counter_top_r[20]~73\)) # (!\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & (\top0|counter_top_r[20]~73\ & 
-- VCC)))) # (!\top0|counter_top_r\(21) & ((\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & ((\top0|counter_top_r[20]~73\) # (GND))) # (!\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & (!\top0|counter_top_r[20]~73\))))
-- \top0|counter_top_r[21]~75\ = CARRY((\top0|counter_top_r\(21) & (\top0|Div0|auto_generated|divider|divider|op_1~6_combout\ & !\top0|counter_top_r[20]~73\)) # (!\top0|counter_top_r\(21) & ((\top0|Div0|auto_generated|divider|divider|op_1~6_combout\) # 
-- (!\top0|counter_top_r[20]~73\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(21),
	datab => \top0|Div0|auto_generated|divider|divider|op_1~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[20]~73\,
	combout => \top0|counter_top_r[21]~74_combout\,
	cout => \top0|counter_top_r[21]~75\);

-- Location: FF_X73_Y49_N11
\top0|counter_top_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[21]~74_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(21));

-- Location: LCCOMB_X73_Y49_N12
\top0|counter_top_r[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[22]~76_combout\ = ((\top0|counter_top_r\(22) $ (\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ $ (\top0|counter_top_r[21]~75\)))) # (GND)
-- \top0|counter_top_r[22]~77\ = CARRY((\top0|counter_top_r\(22) & ((!\top0|counter_top_r[21]~75\) # (!\top0|Div0|auto_generated|divider|divider|op_30~6_combout\))) # (!\top0|counter_top_r\(22) & (!\top0|Div0|auto_generated|divider|divider|op_30~6_combout\ & 
-- !\top0|counter_top_r[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(22),
	datab => \top0|Div0|auto_generated|divider|divider|op_30~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[21]~75\,
	combout => \top0|counter_top_r[22]~76_combout\,
	cout => \top0|counter_top_r[22]~77\);

-- Location: FF_X73_Y49_N13
\top0|counter_top_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[22]~76_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(22));

-- Location: LCCOMB_X73_Y49_N14
\top0|counter_top_r[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[23]~78_combout\ = (\top0|Div0|auto_generated|divider|divider|op_29~6_combout\ & ((\top0|counter_top_r\(23) & (!\top0|counter_top_r[22]~77\)) # (!\top0|counter_top_r\(23) & ((\top0|counter_top_r[22]~77\) # (GND))))) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_29~6_combout\ & ((\top0|counter_top_r\(23) & (\top0|counter_top_r[22]~77\ & VCC)) # (!\top0|counter_top_r\(23) & (!\top0|counter_top_r[22]~77\))))
-- \top0|counter_top_r[23]~79\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_29~6_combout\ & ((!\top0|counter_top_r[22]~77\) # (!\top0|counter_top_r\(23)))) # (!\top0|Div0|auto_generated|divider|divider|op_29~6_combout\ & (!\top0|counter_top_r\(23) & 
-- !\top0|counter_top_r[22]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_29~6_combout\,
	datab => \top0|counter_top_r\(23),
	datad => VCC,
	cin => \top0|counter_top_r[22]~77\,
	combout => \top0|counter_top_r[23]~78_combout\,
	cout => \top0|counter_top_r[23]~79\);

-- Location: FF_X73_Y49_N15
\top0|counter_top_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[23]~78_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(23));

-- Location: LCCOMB_X75_Y47_N16
\top0|Div0|auto_generated|divider|divider|op_29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_29~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[22]~317_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[22]~242_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_29~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[22]~317_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[22]~242_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_29~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_29~5_cout\);

-- Location: LCCOMB_X75_Y47_N18
\top0|Div0|auto_generated|divider|divider|op_29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_29~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_29~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_29~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_29~6_combout\);

-- Location: LCCOMB_X73_Y49_N16
\top0|counter_top_r[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[24]~80_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ $ (\top0|counter_top_r\(24) $ (\top0|counter_top_r[23]~79\)))) # (GND)
-- \top0|counter_top_r[24]~81\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ & (\top0|counter_top_r\(24) & !\top0|counter_top_r[23]~79\)) # (!\top0|Div0|auto_generated|divider|divider|op_28~6_combout\ & ((\top0|counter_top_r\(24)) # 
-- (!\top0|counter_top_r[23]~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_28~6_combout\,
	datab => \top0|counter_top_r\(24),
	datad => VCC,
	cin => \top0|counter_top_r[23]~79\,
	combout => \top0|counter_top_r[24]~80_combout\,
	cout => \top0|counter_top_r[24]~81\);

-- Location: FF_X73_Y49_N17
\top0|counter_top_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[24]~80_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(24));

-- Location: LCCOMB_X74_Y47_N24
\top0|Div0|auto_generated|divider|divider|op_28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_28~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[19]~239_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[19]~316_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_28~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[19]~239_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[19]~316_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_28~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_28~5_cout\);

-- Location: LCCOMB_X74_Y47_N26
\top0|Div0|auto_generated|divider|divider|op_28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_28~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_28~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_28~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_28~6_combout\);

-- Location: LCCOMB_X73_Y49_N18
\top0|counter_top_r[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[25]~82_combout\ = (\top0|counter_top_r\(25) & ((\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & (!\top0|counter_top_r[24]~81\)) # (!\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & (\top0|counter_top_r[24]~81\ 
-- & VCC)))) # (!\top0|counter_top_r\(25) & ((\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & ((\top0|counter_top_r[24]~81\) # (GND))) # (!\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & (!\top0|counter_top_r[24]~81\))))
-- \top0|counter_top_r[25]~83\ = CARRY((\top0|counter_top_r\(25) & (\top0|Div0|auto_generated|divider|divider|op_27~6_combout\ & !\top0|counter_top_r[24]~81\)) # (!\top0|counter_top_r\(25) & ((\top0|Div0|auto_generated|divider|divider|op_27~6_combout\) # 
-- (!\top0|counter_top_r[24]~81\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(25),
	datab => \top0|Div0|auto_generated|divider|divider|op_27~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[24]~81\,
	combout => \top0|counter_top_r[25]~82_combout\,
	cout => \top0|counter_top_r[25]~83\);

-- Location: FF_X73_Y49_N19
\top0|counter_top_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[25]~82_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(25));

-- Location: LCCOMB_X73_Y49_N20
\top0|counter_top_r[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[26]~84_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_26~6_combout\ $ (\top0|counter_top_r\(26) $ (\top0|counter_top_r[25]~83\)))) # (GND)
-- \top0|counter_top_r[26]~85\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_26~6_combout\ & (\top0|counter_top_r\(26) & !\top0|counter_top_r[25]~83\)) # (!\top0|Div0|auto_generated|divider|divider|op_26~6_combout\ & ((\top0|counter_top_r\(26)) # 
-- (!\top0|counter_top_r[25]~83\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_26~6_combout\,
	datab => \top0|counter_top_r\(26),
	datad => VCC,
	cin => \top0|counter_top_r[25]~83\,
	combout => \top0|counter_top_r[26]~84_combout\,
	cout => \top0|counter_top_r[26]~85\);

-- Location: FF_X73_Y49_N21
\top0|counter_top_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[26]~84_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(26));

-- Location: LCCOMB_X73_Y47_N4
\top0|Div0|auto_generated|divider|divider|op_26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_26~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[13]~233_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[13]~314_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_26~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[13]~233_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[13]~314_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_26~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_26~5_cout\);

-- Location: LCCOMB_X73_Y47_N6
\top0|Div0|auto_generated|divider|divider|op_26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_26~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_26~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_26~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_26~6_combout\);

-- Location: LCCOMB_X73_Y49_N22
\top0|counter_top_r[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[27]~86_combout\ = (\top0|counter_top_r\(27) & ((\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & (!\top0|counter_top_r[26]~85\)) # (!\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & (\top0|counter_top_r[26]~85\ 
-- & VCC)))) # (!\top0|counter_top_r\(27) & ((\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & ((\top0|counter_top_r[26]~85\) # (GND))) # (!\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & (!\top0|counter_top_r[26]~85\))))
-- \top0|counter_top_r[27]~87\ = CARRY((\top0|counter_top_r\(27) & (\top0|Div0|auto_generated|divider|divider|op_25~6_combout\ & !\top0|counter_top_r[26]~85\)) # (!\top0|counter_top_r\(27) & ((\top0|Div0|auto_generated|divider|divider|op_25~6_combout\) # 
-- (!\top0|counter_top_r[26]~85\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(27),
	datab => \top0|Div0|auto_generated|divider|divider|op_25~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[26]~85\,
	combout => \top0|counter_top_r[27]~86_combout\,
	cout => \top0|counter_top_r[27]~87\);

-- Location: FF_X73_Y49_N23
\top0|counter_top_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[27]~86_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(27));

-- Location: LCCOMB_X73_Y49_N24
\top0|counter_top_r[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[28]~88_combout\ = ((\top0|Div0|auto_generated|divider|divider|op_22~6_combout\ $ (\top0|counter_top_r\(28) $ (\top0|counter_top_r[27]~87\)))) # (GND)
-- \top0|counter_top_r[28]~89\ = CARRY((\top0|Div0|auto_generated|divider|divider|op_22~6_combout\ & (\top0|counter_top_r\(28) & !\top0|counter_top_r[27]~87\)) # (!\top0|Div0|auto_generated|divider|divider|op_22~6_combout\ & ((\top0|counter_top_r\(28)) # 
-- (!\top0|counter_top_r[27]~87\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|op_22~6_combout\,
	datab => \top0|counter_top_r\(28),
	datad => VCC,
	cin => \top0|counter_top_r[27]~87\,
	combout => \top0|counter_top_r[28]~88_combout\,
	cout => \top0|counter_top_r[28]~89\);

-- Location: FF_X73_Y49_N25
\top0|counter_top_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[28]~88_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(28));

-- Location: LCCOMB_X72_Y49_N24
\top0|Div0|auto_generated|divider|divider|op_22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_22~5_cout\ = CARRY((\top0|Div0|auto_generated|divider|divider|StageOut[7]~226_combout\) # ((\top0|Div0|auto_generated|divider|divider|StageOut[7]~227_combout\) # 
-- (!\top0|Div0|auto_generated|divider|divider|op_22~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|StageOut[7]~226_combout\,
	datab => \top0|Div0|auto_generated|divider|divider|StageOut[7]~227_combout\,
	datad => VCC,
	cin => \top0|Div0|auto_generated|divider|divider|op_22~3\,
	cout => \top0|Div0|auto_generated|divider|divider|op_22~5_cout\);

-- Location: LCCOMB_X72_Y49_N26
\top0|Div0|auto_generated|divider|divider|op_22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|op_22~6_combout\ = !\top0|Div0|auto_generated|divider|divider|op_22~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top0|Div0|auto_generated|divider|divider|op_22~5_cout\,
	combout => \top0|Div0|auto_generated|divider|divider|op_22~6_combout\);

-- Location: LCCOMB_X73_Y49_N26
\top0|counter_top_r[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[29]~90_combout\ = (\top0|counter_top_r\(29) & ((\top0|Div0|auto_generated|divider|divider|op_11~6_combout\ & (!\top0|counter_top_r[28]~89\)) # (!\top0|Div0|auto_generated|divider|divider|op_11~6_combout\ & (\top0|counter_top_r[28]~89\ 
-- & VCC)))) # (!\top0|counter_top_r\(29) & ((\top0|Div0|auto_generated|divider|divider|op_11~6_combout\ & ((\top0|counter_top_r[28]~89\) # (GND))) # (!\top0|Div0|auto_generated|divider|divider|op_11~6_combout\ & (!\top0|counter_top_r[28]~89\))))
-- \top0|counter_top_r[29]~91\ = CARRY((\top0|counter_top_r\(29) & (\top0|Div0|auto_generated|divider|divider|op_11~6_combout\ & !\top0|counter_top_r[28]~89\)) # (!\top0|counter_top_r\(29) & ((\top0|Div0|auto_generated|divider|divider|op_11~6_combout\) # 
-- (!\top0|counter_top_r[28]~89\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(29),
	datab => \top0|Div0|auto_generated|divider|divider|op_11~6_combout\,
	datad => VCC,
	cin => \top0|counter_top_r[28]~89\,
	combout => \top0|counter_top_r[29]~90_combout\,
	cout => \top0|counter_top_r[29]~91\);

-- Location: FF_X73_Y49_N27
\top0|counter_top_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[29]~90_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(29));

-- Location: LCCOMB_X73_Y49_N28
\top0|counter_top_r[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[30]~92_combout\ = ((\top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ $ (\top0|counter_top_r\(30) $ (!\top0|counter_top_r[29]~91\)))) # (GND)
-- \top0|counter_top_r[30]~93\ = CARRY((\top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & ((\top0|counter_top_r\(30)) # (!\top0|counter_top_r[29]~91\))) # 
-- (!\top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & (\top0|counter_top_r\(30) & !\top0|counter_top_r[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \top0|counter_top_r\(30),
	datad => VCC,
	cin => \top0|counter_top_r[29]~91\,
	combout => \top0|counter_top_r[30]~92_combout\,
	cout => \top0|counter_top_r[30]~93\);

-- Location: FF_X73_Y49_N29
\top0|counter_top_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[30]~92_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(30));

-- Location: LCCOMB_X72_Y49_N8
\top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\top0|counter_top_r\(31) & \top0|counter_top_r\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top0|counter_top_r\(31),
	datad => \top0|counter_top_r\(30),
	combout => \top0|Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X73_Y49_N30
\top0|counter_top_r[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_top_r[31]~94_combout\ = \top0|counter_top_r\(31) $ (\top0|counter_top_r[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(31),
	cin => \top0|counter_top_r[30]~93\,
	combout => \top0|counter_top_r[31]~94_combout\);

-- Location: FF_X73_Y49_N31
\top0|counter_top_r[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_top_r[31]~94_combout\,
	asdata => \~GND~combout\,
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_top_r\(31));

-- Location: LCCOMB_X74_Y50_N0
\top0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~1_cout\ = CARRY((\top0|counter_top_r\(0) & !\top0|counter_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(0),
	datab => \top0|counter_r\(0),
	datad => VCC,
	cout => \top0|LessThan0~1_cout\);

-- Location: LCCOMB_X74_Y50_N2
\top0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~3_cout\ = CARRY((\top0|counter_r\(1) & ((!\top0|LessThan0~1_cout\) # (!\top0|counter_top_r\(1)))) # (!\top0|counter_r\(1) & (!\top0|counter_top_r\(1) & !\top0|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(1),
	datab => \top0|counter_top_r\(1),
	datad => VCC,
	cin => \top0|LessThan0~1_cout\,
	cout => \top0|LessThan0~3_cout\);

-- Location: LCCOMB_X74_Y50_N4
\top0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~5_cout\ = CARRY((\top0|counter_r\(2) & (\top0|counter_top_r\(2) & !\top0|LessThan0~3_cout\)) # (!\top0|counter_r\(2) & ((\top0|counter_top_r\(2)) # (!\top0|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(2),
	datab => \top0|counter_top_r\(2),
	datad => VCC,
	cin => \top0|LessThan0~3_cout\,
	cout => \top0|LessThan0~5_cout\);

-- Location: LCCOMB_X74_Y50_N6
\top0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~7_cout\ = CARRY((\top0|counter_r\(3) & ((!\top0|LessThan0~5_cout\) # (!\top0|counter_top_r\(3)))) # (!\top0|counter_r\(3) & (!\top0|counter_top_r\(3) & !\top0|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(3),
	datab => \top0|counter_top_r\(3),
	datad => VCC,
	cin => \top0|LessThan0~5_cout\,
	cout => \top0|LessThan0~7_cout\);

-- Location: LCCOMB_X74_Y50_N8
\top0|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~9_cout\ = CARRY((\top0|counter_top_r\(4) & ((!\top0|LessThan0~7_cout\) # (!\top0|counter_r\(4)))) # (!\top0|counter_top_r\(4) & (!\top0|counter_r\(4) & !\top0|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(4),
	datab => \top0|counter_r\(4),
	datad => VCC,
	cin => \top0|LessThan0~7_cout\,
	cout => \top0|LessThan0~9_cout\);

-- Location: LCCOMB_X74_Y50_N10
\top0|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~11_cout\ = CARRY((\top0|counter_top_r\(5) & (\top0|counter_r\(5) & !\top0|LessThan0~9_cout\)) # (!\top0|counter_top_r\(5) & ((\top0|counter_r\(5)) # (!\top0|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(5),
	datab => \top0|counter_r\(5),
	datad => VCC,
	cin => \top0|LessThan0~9_cout\,
	cout => \top0|LessThan0~11_cout\);

-- Location: LCCOMB_X74_Y50_N12
\top0|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~13_cout\ = CARRY((\top0|counter_top_r\(6) & ((!\top0|LessThan0~11_cout\) # (!\top0|counter_r\(6)))) # (!\top0|counter_top_r\(6) & (!\top0|counter_r\(6) & !\top0|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(6),
	datab => \top0|counter_r\(6),
	datad => VCC,
	cin => \top0|LessThan0~11_cout\,
	cout => \top0|LessThan0~13_cout\);

-- Location: LCCOMB_X74_Y50_N14
\top0|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~15_cout\ = CARRY((\top0|counter_top_r\(7) & (\top0|counter_r\(7) & !\top0|LessThan0~13_cout\)) # (!\top0|counter_top_r\(7) & ((\top0|counter_r\(7)) # (!\top0|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(7),
	datab => \top0|counter_r\(7),
	datad => VCC,
	cin => \top0|LessThan0~13_cout\,
	cout => \top0|LessThan0~15_cout\);

-- Location: LCCOMB_X74_Y50_N16
\top0|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~17_cout\ = CARRY((\top0|counter_top_r\(8) & ((!\top0|LessThan0~15_cout\) # (!\top0|counter_r\(8)))) # (!\top0|counter_top_r\(8) & (!\top0|counter_r\(8) & !\top0|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(8),
	datab => \top0|counter_r\(8),
	datad => VCC,
	cin => \top0|LessThan0~15_cout\,
	cout => \top0|LessThan0~17_cout\);

-- Location: LCCOMB_X74_Y50_N18
\top0|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~19_cout\ = CARRY((\top0|counter_top_r\(9) & (\top0|counter_r\(9) & !\top0|LessThan0~17_cout\)) # (!\top0|counter_top_r\(9) & ((\top0|counter_r\(9)) # (!\top0|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(9),
	datab => \top0|counter_r\(9),
	datad => VCC,
	cin => \top0|LessThan0~17_cout\,
	cout => \top0|LessThan0~19_cout\);

-- Location: LCCOMB_X74_Y50_N20
\top0|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~21_cout\ = CARRY((\top0|counter_r\(10) & (\top0|counter_top_r\(10) & !\top0|LessThan0~19_cout\)) # (!\top0|counter_r\(10) & ((\top0|counter_top_r\(10)) # (!\top0|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(10),
	datab => \top0|counter_top_r\(10),
	datad => VCC,
	cin => \top0|LessThan0~19_cout\,
	cout => \top0|LessThan0~21_cout\);

-- Location: LCCOMB_X74_Y50_N22
\top0|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~23_cout\ = CARRY((\top0|counter_top_r\(11) & (\top0|counter_r\(11) & !\top0|LessThan0~21_cout\)) # (!\top0|counter_top_r\(11) & ((\top0|counter_r\(11)) # (!\top0|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(11),
	datab => \top0|counter_r\(11),
	datad => VCC,
	cin => \top0|LessThan0~21_cout\,
	cout => \top0|LessThan0~23_cout\);

-- Location: LCCOMB_X74_Y50_N24
\top0|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~25_cout\ = CARRY((\top0|counter_top_r\(12) & ((!\top0|LessThan0~23_cout\) # (!\top0|counter_r\(12)))) # (!\top0|counter_top_r\(12) & (!\top0|counter_r\(12) & !\top0|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(12),
	datab => \top0|counter_r\(12),
	datad => VCC,
	cin => \top0|LessThan0~23_cout\,
	cout => \top0|LessThan0~25_cout\);

-- Location: LCCOMB_X74_Y50_N26
\top0|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~27_cout\ = CARRY((\top0|counter_top_r\(13) & (\top0|counter_r\(13) & !\top0|LessThan0~25_cout\)) # (!\top0|counter_top_r\(13) & ((\top0|counter_r\(13)) # (!\top0|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(13),
	datab => \top0|counter_r\(13),
	datad => VCC,
	cin => \top0|LessThan0~25_cout\,
	cout => \top0|LessThan0~27_cout\);

-- Location: LCCOMB_X74_Y50_N28
\top0|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~29_cout\ = CARRY((\top0|counter_top_r\(14) & ((!\top0|LessThan0~27_cout\) # (!\top0|counter_r\(14)))) # (!\top0|counter_top_r\(14) & (!\top0|counter_r\(14) & !\top0|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(14),
	datab => \top0|counter_r\(14),
	datad => VCC,
	cin => \top0|LessThan0~27_cout\,
	cout => \top0|LessThan0~29_cout\);

-- Location: LCCOMB_X74_Y50_N30
\top0|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~31_cout\ = CARRY((\top0|counter_r\(15) & ((!\top0|LessThan0~29_cout\) # (!\top0|counter_top_r\(15)))) # (!\top0|counter_r\(15) & (!\top0|counter_top_r\(15) & !\top0|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(15),
	datab => \top0|counter_top_r\(15),
	datad => VCC,
	cin => \top0|LessThan0~29_cout\,
	cout => \top0|LessThan0~31_cout\);

-- Location: LCCOMB_X74_Y49_N0
\top0|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~33_cout\ = CARRY((\top0|counter_top_r\(16) & ((!\top0|LessThan0~31_cout\) # (!\top0|counter_r\(16)))) # (!\top0|counter_top_r\(16) & (!\top0|counter_r\(16) & !\top0|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(16),
	datab => \top0|counter_r\(16),
	datad => VCC,
	cin => \top0|LessThan0~31_cout\,
	cout => \top0|LessThan0~33_cout\);

-- Location: LCCOMB_X74_Y49_N2
\top0|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~35_cout\ = CARRY((\top0|counter_r\(17) & ((!\top0|LessThan0~33_cout\) # (!\top0|counter_top_r\(17)))) # (!\top0|counter_r\(17) & (!\top0|counter_top_r\(17) & !\top0|LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(17),
	datab => \top0|counter_top_r\(17),
	datad => VCC,
	cin => \top0|LessThan0~33_cout\,
	cout => \top0|LessThan0~35_cout\);

-- Location: LCCOMB_X74_Y49_N4
\top0|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~37_cout\ = CARRY((\top0|counter_r\(18) & (\top0|counter_top_r\(18) & !\top0|LessThan0~35_cout\)) # (!\top0|counter_r\(18) & ((\top0|counter_top_r\(18)) # (!\top0|LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(18),
	datab => \top0|counter_top_r\(18),
	datad => VCC,
	cin => \top0|LessThan0~35_cout\,
	cout => \top0|LessThan0~37_cout\);

-- Location: LCCOMB_X74_Y49_N6
\top0|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~39_cout\ = CARRY((\top0|counter_r\(19) & ((!\top0|LessThan0~37_cout\) # (!\top0|counter_top_r\(19)))) # (!\top0|counter_r\(19) & (!\top0|counter_top_r\(19) & !\top0|LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(19),
	datab => \top0|counter_top_r\(19),
	datad => VCC,
	cin => \top0|LessThan0~37_cout\,
	cout => \top0|LessThan0~39_cout\);

-- Location: LCCOMB_X74_Y49_N8
\top0|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~41_cout\ = CARRY((\top0|counter_top_r\(20) & ((!\top0|LessThan0~39_cout\) # (!\top0|counter_r\(20)))) # (!\top0|counter_top_r\(20) & (!\top0|counter_r\(20) & !\top0|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(20),
	datab => \top0|counter_r\(20),
	datad => VCC,
	cin => \top0|LessThan0~39_cout\,
	cout => \top0|LessThan0~41_cout\);

-- Location: LCCOMB_X74_Y49_N10
\top0|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~43_cout\ = CARRY((\top0|counter_top_r\(21) & (\top0|counter_r\(21) & !\top0|LessThan0~41_cout\)) # (!\top0|counter_top_r\(21) & ((\top0|counter_r\(21)) # (!\top0|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(21),
	datab => \top0|counter_r\(21),
	datad => VCC,
	cin => \top0|LessThan0~41_cout\,
	cout => \top0|LessThan0~43_cout\);

-- Location: LCCOMB_X74_Y49_N12
\top0|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~45_cout\ = CARRY((\top0|counter_top_r\(22) & ((!\top0|LessThan0~43_cout\) # (!\top0|counter_r\(22)))) # (!\top0|counter_top_r\(22) & (!\top0|counter_r\(22) & !\top0|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(22),
	datab => \top0|counter_r\(22),
	datad => VCC,
	cin => \top0|LessThan0~43_cout\,
	cout => \top0|LessThan0~45_cout\);

-- Location: LCCOMB_X74_Y49_N14
\top0|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~47_cout\ = CARRY((\top0|counter_top_r\(23) & (\top0|counter_r\(23) & !\top0|LessThan0~45_cout\)) # (!\top0|counter_top_r\(23) & ((\top0|counter_r\(23)) # (!\top0|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(23),
	datab => \top0|counter_r\(23),
	datad => VCC,
	cin => \top0|LessThan0~45_cout\,
	cout => \top0|LessThan0~47_cout\);

-- Location: LCCOMB_X74_Y49_N16
\top0|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~49_cout\ = CARRY((\top0|counter_top_r\(24) & ((!\top0|LessThan0~47_cout\) # (!\top0|counter_r\(24)))) # (!\top0|counter_top_r\(24) & (!\top0|counter_r\(24) & !\top0|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(24),
	datab => \top0|counter_r\(24),
	datad => VCC,
	cin => \top0|LessThan0~47_cout\,
	cout => \top0|LessThan0~49_cout\);

-- Location: LCCOMB_X74_Y49_N18
\top0|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~51_cout\ = CARRY((\top0|counter_r\(25) & ((!\top0|LessThan0~49_cout\) # (!\top0|counter_top_r\(25)))) # (!\top0|counter_r\(25) & (!\top0|counter_top_r\(25) & !\top0|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(25),
	datab => \top0|counter_top_r\(25),
	datad => VCC,
	cin => \top0|LessThan0~49_cout\,
	cout => \top0|LessThan0~51_cout\);

-- Location: LCCOMB_X74_Y49_N20
\top0|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~53_cout\ = CARRY((\top0|counter_r\(26) & (\top0|counter_top_r\(26) & !\top0|LessThan0~51_cout\)) # (!\top0|counter_r\(26) & ((\top0|counter_top_r\(26)) # (!\top0|LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(26),
	datab => \top0|counter_top_r\(26),
	datad => VCC,
	cin => \top0|LessThan0~51_cout\,
	cout => \top0|LessThan0~53_cout\);

-- Location: LCCOMB_X74_Y49_N22
\top0|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~55_cout\ = CARRY((\top0|counter_r\(27) & ((!\top0|LessThan0~53_cout\) # (!\top0|counter_top_r\(27)))) # (!\top0|counter_r\(27) & (!\top0|counter_top_r\(27) & !\top0|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(27),
	datab => \top0|counter_top_r\(27),
	datad => VCC,
	cin => \top0|LessThan0~53_cout\,
	cout => \top0|LessThan0~55_cout\);

-- Location: LCCOMB_X74_Y49_N24
\top0|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~57_cout\ = CARRY((\top0|counter_r\(28) & (\top0|counter_top_r\(28) & !\top0|LessThan0~55_cout\)) # (!\top0|counter_r\(28) & ((\top0|counter_top_r\(28)) # (!\top0|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(28),
	datab => \top0|counter_top_r\(28),
	datad => VCC,
	cin => \top0|LessThan0~55_cout\,
	cout => \top0|LessThan0~57_cout\);

-- Location: LCCOMB_X74_Y49_N26
\top0|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~59_cout\ = CARRY((\top0|counter_top_r\(29) & (\top0|counter_r\(29) & !\top0|LessThan0~57_cout\)) # (!\top0|counter_top_r\(29) & ((\top0|counter_r\(29)) # (!\top0|LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_top_r\(29),
	datab => \top0|counter_r\(29),
	datad => VCC,
	cin => \top0|LessThan0~57_cout\,
	cout => \top0|LessThan0~59_cout\);

-- Location: LCCOMB_X74_Y49_N28
\top0|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~61_cout\ = CARRY((\top0|counter_r\(30) & (\top0|counter_top_r\(30) & !\top0|LessThan0~59_cout\)) # (!\top0|counter_r\(30) & ((\top0|counter_top_r\(30)) # (!\top0|LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(30),
	datab => \top0|counter_top_r\(30),
	datad => VCC,
	cin => \top0|LessThan0~59_cout\,
	cout => \top0|LessThan0~61_cout\);

-- Location: LCCOMB_X74_Y49_N30
\top0|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|LessThan0~62_combout\ = (\top0|counter_r\(31) & (\top0|counter_top_r\(31) & \top0|LessThan0~61_cout\)) # (!\top0|counter_r\(31) & ((\top0|counter_top_r\(31)) # (\top0|LessThan0~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(31),
	datab => \top0|counter_top_r\(31),
	cin => \top0|LessThan0~61_cout\,
	combout => \top0|LessThan0~62_combout\);

-- Location: LCCOMB_X75_Y46_N20
\top0|counter_r[11]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[11]~96_combout\ = (\deb0|neg_r~q\) # (!\top0|LessThan0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|LessThan0~62_combout\,
	datad => \deb0|neg_r~q\,
	combout => \top0|counter_r[11]~96_combout\);

-- Location: FF_X75_Y50_N1
\top0|counter_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[0]~32_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(0));

-- Location: LCCOMB_X75_Y50_N2
\top0|counter_r[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[1]~34_combout\ = (\top0|counter_r\(1) & (!\top0|counter_r[0]~33\)) # (!\top0|counter_r\(1) & ((\top0|counter_r[0]~33\) # (GND)))
-- \top0|counter_r[1]~35\ = CARRY((!\top0|counter_r[0]~33\) # (!\top0|counter_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(1),
	datad => VCC,
	cin => \top0|counter_r[0]~33\,
	combout => \top0|counter_r[1]~34_combout\,
	cout => \top0|counter_r[1]~35\);

-- Location: FF_X75_Y50_N3
\top0|counter_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[1]~34_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(1));

-- Location: LCCOMB_X75_Y50_N4
\top0|counter_r[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[2]~36_combout\ = (\top0|counter_r\(2) & (\top0|counter_r[1]~35\ $ (GND))) # (!\top0|counter_r\(2) & (!\top0|counter_r[1]~35\ & VCC))
-- \top0|counter_r[2]~37\ = CARRY((\top0|counter_r\(2) & !\top0|counter_r[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(2),
	datad => VCC,
	cin => \top0|counter_r[1]~35\,
	combout => \top0|counter_r[2]~36_combout\,
	cout => \top0|counter_r[2]~37\);

-- Location: FF_X75_Y50_N5
\top0|counter_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[2]~36_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(2));

-- Location: LCCOMB_X75_Y50_N6
\top0|counter_r[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[3]~38_combout\ = (\top0|counter_r\(3) & (!\top0|counter_r[2]~37\)) # (!\top0|counter_r\(3) & ((\top0|counter_r[2]~37\) # (GND)))
-- \top0|counter_r[3]~39\ = CARRY((!\top0|counter_r[2]~37\) # (!\top0|counter_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(3),
	datad => VCC,
	cin => \top0|counter_r[2]~37\,
	combout => \top0|counter_r[3]~38_combout\,
	cout => \top0|counter_r[3]~39\);

-- Location: FF_X75_Y50_N7
\top0|counter_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[3]~38_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(3));

-- Location: LCCOMB_X75_Y50_N8
\top0|counter_r[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[4]~40_combout\ = (\top0|counter_r\(4) & (\top0|counter_r[3]~39\ $ (GND))) # (!\top0|counter_r\(4) & (!\top0|counter_r[3]~39\ & VCC))
-- \top0|counter_r[4]~41\ = CARRY((\top0|counter_r\(4) & !\top0|counter_r[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(4),
	datad => VCC,
	cin => \top0|counter_r[3]~39\,
	combout => \top0|counter_r[4]~40_combout\,
	cout => \top0|counter_r[4]~41\);

-- Location: FF_X75_Y50_N9
\top0|counter_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[4]~40_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(4));

-- Location: LCCOMB_X75_Y50_N10
\top0|counter_r[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[5]~42_combout\ = (\top0|counter_r\(5) & (!\top0|counter_r[4]~41\)) # (!\top0|counter_r\(5) & ((\top0|counter_r[4]~41\) # (GND)))
-- \top0|counter_r[5]~43\ = CARRY((!\top0|counter_r[4]~41\) # (!\top0|counter_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(5),
	datad => VCC,
	cin => \top0|counter_r[4]~41\,
	combout => \top0|counter_r[5]~42_combout\,
	cout => \top0|counter_r[5]~43\);

-- Location: FF_X75_Y50_N11
\top0|counter_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[5]~42_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(5));

-- Location: LCCOMB_X75_Y50_N12
\top0|counter_r[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[6]~44_combout\ = (\top0|counter_r\(6) & (\top0|counter_r[5]~43\ $ (GND))) # (!\top0|counter_r\(6) & (!\top0|counter_r[5]~43\ & VCC))
-- \top0|counter_r[6]~45\ = CARRY((\top0|counter_r\(6) & !\top0|counter_r[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(6),
	datad => VCC,
	cin => \top0|counter_r[5]~43\,
	combout => \top0|counter_r[6]~44_combout\,
	cout => \top0|counter_r[6]~45\);

-- Location: FF_X75_Y50_N13
\top0|counter_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[6]~44_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(6));

-- Location: LCCOMB_X75_Y50_N14
\top0|counter_r[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[7]~46_combout\ = (\top0|counter_r\(7) & (!\top0|counter_r[6]~45\)) # (!\top0|counter_r\(7) & ((\top0|counter_r[6]~45\) # (GND)))
-- \top0|counter_r[7]~47\ = CARRY((!\top0|counter_r[6]~45\) # (!\top0|counter_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(7),
	datad => VCC,
	cin => \top0|counter_r[6]~45\,
	combout => \top0|counter_r[7]~46_combout\,
	cout => \top0|counter_r[7]~47\);

-- Location: FF_X75_Y50_N15
\top0|counter_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[7]~46_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(7));

-- Location: LCCOMB_X75_Y50_N16
\top0|counter_r[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[8]~48_combout\ = (\top0|counter_r\(8) & (\top0|counter_r[7]~47\ $ (GND))) # (!\top0|counter_r\(8) & (!\top0|counter_r[7]~47\ & VCC))
-- \top0|counter_r[8]~49\ = CARRY((\top0|counter_r\(8) & !\top0|counter_r[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(8),
	datad => VCC,
	cin => \top0|counter_r[7]~47\,
	combout => \top0|counter_r[8]~48_combout\,
	cout => \top0|counter_r[8]~49\);

-- Location: FF_X75_Y50_N17
\top0|counter_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[8]~48_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(8));

-- Location: LCCOMB_X75_Y50_N18
\top0|counter_r[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[9]~50_combout\ = (\top0|counter_r\(9) & (!\top0|counter_r[8]~49\)) # (!\top0|counter_r\(9) & ((\top0|counter_r[8]~49\) # (GND)))
-- \top0|counter_r[9]~51\ = CARRY((!\top0|counter_r[8]~49\) # (!\top0|counter_r\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(9),
	datad => VCC,
	cin => \top0|counter_r[8]~49\,
	combout => \top0|counter_r[9]~50_combout\,
	cout => \top0|counter_r[9]~51\);

-- Location: FF_X75_Y50_N19
\top0|counter_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[9]~50_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(9));

-- Location: LCCOMB_X75_Y50_N20
\top0|counter_r[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[10]~52_combout\ = (\top0|counter_r\(10) & (\top0|counter_r[9]~51\ $ (GND))) # (!\top0|counter_r\(10) & (!\top0|counter_r[9]~51\ & VCC))
-- \top0|counter_r[10]~53\ = CARRY((\top0|counter_r\(10) & !\top0|counter_r[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(10),
	datad => VCC,
	cin => \top0|counter_r[9]~51\,
	combout => \top0|counter_r[10]~52_combout\,
	cout => \top0|counter_r[10]~53\);

-- Location: FF_X75_Y50_N21
\top0|counter_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[10]~52_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(10));

-- Location: LCCOMB_X75_Y50_N22
\top0|counter_r[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[11]~54_combout\ = (\top0|counter_r\(11) & (!\top0|counter_r[10]~53\)) # (!\top0|counter_r\(11) & ((\top0|counter_r[10]~53\) # (GND)))
-- \top0|counter_r[11]~55\ = CARRY((!\top0|counter_r[10]~53\) # (!\top0|counter_r\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(11),
	datad => VCC,
	cin => \top0|counter_r[10]~53\,
	combout => \top0|counter_r[11]~54_combout\,
	cout => \top0|counter_r[11]~55\);

-- Location: FF_X75_Y50_N23
\top0|counter_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[11]~54_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(11));

-- Location: LCCOMB_X75_Y50_N24
\top0|counter_r[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[12]~56_combout\ = (\top0|counter_r\(12) & (\top0|counter_r[11]~55\ $ (GND))) # (!\top0|counter_r\(12) & (!\top0|counter_r[11]~55\ & VCC))
-- \top0|counter_r[12]~57\ = CARRY((\top0|counter_r\(12) & !\top0|counter_r[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(12),
	datad => VCC,
	cin => \top0|counter_r[11]~55\,
	combout => \top0|counter_r[12]~56_combout\,
	cout => \top0|counter_r[12]~57\);

-- Location: FF_X75_Y50_N25
\top0|counter_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[12]~56_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(12));

-- Location: LCCOMB_X75_Y50_N26
\top0|counter_r[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[13]~58_combout\ = (\top0|counter_r\(13) & (!\top0|counter_r[12]~57\)) # (!\top0|counter_r\(13) & ((\top0|counter_r[12]~57\) # (GND)))
-- \top0|counter_r[13]~59\ = CARRY((!\top0|counter_r[12]~57\) # (!\top0|counter_r\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(13),
	datad => VCC,
	cin => \top0|counter_r[12]~57\,
	combout => \top0|counter_r[13]~58_combout\,
	cout => \top0|counter_r[13]~59\);

-- Location: FF_X75_Y50_N27
\top0|counter_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[13]~58_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(13));

-- Location: LCCOMB_X75_Y50_N28
\top0|counter_r[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[14]~60_combout\ = (\top0|counter_r\(14) & (\top0|counter_r[13]~59\ $ (GND))) # (!\top0|counter_r\(14) & (!\top0|counter_r[13]~59\ & VCC))
-- \top0|counter_r[14]~61\ = CARRY((\top0|counter_r\(14) & !\top0|counter_r[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(14),
	datad => VCC,
	cin => \top0|counter_r[13]~59\,
	combout => \top0|counter_r[14]~60_combout\,
	cout => \top0|counter_r[14]~61\);

-- Location: FF_X75_Y50_N29
\top0|counter_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[14]~60_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(14));

-- Location: LCCOMB_X75_Y50_N30
\top0|counter_r[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[15]~62_combout\ = (\top0|counter_r\(15) & (!\top0|counter_r[14]~61\)) # (!\top0|counter_r\(15) & ((\top0|counter_r[14]~61\) # (GND)))
-- \top0|counter_r[15]~63\ = CARRY((!\top0|counter_r[14]~61\) # (!\top0|counter_r\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(15),
	datad => VCC,
	cin => \top0|counter_r[14]~61\,
	combout => \top0|counter_r[15]~62_combout\,
	cout => \top0|counter_r[15]~63\);

-- Location: FF_X75_Y50_N31
\top0|counter_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[15]~62_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(15));

-- Location: LCCOMB_X75_Y49_N0
\top0|counter_r[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[16]~64_combout\ = (\top0|counter_r\(16) & (\top0|counter_r[15]~63\ $ (GND))) # (!\top0|counter_r\(16) & (!\top0|counter_r[15]~63\ & VCC))
-- \top0|counter_r[16]~65\ = CARRY((\top0|counter_r\(16) & !\top0|counter_r[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(16),
	datad => VCC,
	cin => \top0|counter_r[15]~63\,
	combout => \top0|counter_r[16]~64_combout\,
	cout => \top0|counter_r[16]~65\);

-- Location: FF_X75_Y49_N1
\top0|counter_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[16]~64_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(16));

-- Location: LCCOMB_X75_Y49_N2
\top0|counter_r[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[17]~66_combout\ = (\top0|counter_r\(17) & (!\top0|counter_r[16]~65\)) # (!\top0|counter_r\(17) & ((\top0|counter_r[16]~65\) # (GND)))
-- \top0|counter_r[17]~67\ = CARRY((!\top0|counter_r[16]~65\) # (!\top0|counter_r\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(17),
	datad => VCC,
	cin => \top0|counter_r[16]~65\,
	combout => \top0|counter_r[17]~66_combout\,
	cout => \top0|counter_r[17]~67\);

-- Location: FF_X75_Y49_N3
\top0|counter_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[17]~66_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(17));

-- Location: LCCOMB_X75_Y49_N4
\top0|counter_r[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[18]~68_combout\ = (\top0|counter_r\(18) & (\top0|counter_r[17]~67\ $ (GND))) # (!\top0|counter_r\(18) & (!\top0|counter_r[17]~67\ & VCC))
-- \top0|counter_r[18]~69\ = CARRY((\top0|counter_r\(18) & !\top0|counter_r[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(18),
	datad => VCC,
	cin => \top0|counter_r[17]~67\,
	combout => \top0|counter_r[18]~68_combout\,
	cout => \top0|counter_r[18]~69\);

-- Location: FF_X75_Y49_N5
\top0|counter_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[18]~68_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(18));

-- Location: LCCOMB_X75_Y49_N6
\top0|counter_r[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[19]~70_combout\ = (\top0|counter_r\(19) & (!\top0|counter_r[18]~69\)) # (!\top0|counter_r\(19) & ((\top0|counter_r[18]~69\) # (GND)))
-- \top0|counter_r[19]~71\ = CARRY((!\top0|counter_r[18]~69\) # (!\top0|counter_r\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(19),
	datad => VCC,
	cin => \top0|counter_r[18]~69\,
	combout => \top0|counter_r[19]~70_combout\,
	cout => \top0|counter_r[19]~71\);

-- Location: FF_X75_Y49_N7
\top0|counter_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[19]~70_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(19));

-- Location: LCCOMB_X75_Y49_N8
\top0|counter_r[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[20]~72_combout\ = (\top0|counter_r\(20) & (\top0|counter_r[19]~71\ $ (GND))) # (!\top0|counter_r\(20) & (!\top0|counter_r[19]~71\ & VCC))
-- \top0|counter_r[20]~73\ = CARRY((\top0|counter_r\(20) & !\top0|counter_r[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(20),
	datad => VCC,
	cin => \top0|counter_r[19]~71\,
	combout => \top0|counter_r[20]~72_combout\,
	cout => \top0|counter_r[20]~73\);

-- Location: FF_X75_Y49_N9
\top0|counter_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[20]~72_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(20));

-- Location: LCCOMB_X75_Y49_N10
\top0|counter_r[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[21]~74_combout\ = (\top0|counter_r\(21) & (!\top0|counter_r[20]~73\)) # (!\top0|counter_r\(21) & ((\top0|counter_r[20]~73\) # (GND)))
-- \top0|counter_r[21]~75\ = CARRY((!\top0|counter_r[20]~73\) # (!\top0|counter_r\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(21),
	datad => VCC,
	cin => \top0|counter_r[20]~73\,
	combout => \top0|counter_r[21]~74_combout\,
	cout => \top0|counter_r[21]~75\);

-- Location: FF_X75_Y49_N11
\top0|counter_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[21]~74_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(21));

-- Location: LCCOMB_X75_Y49_N12
\top0|counter_r[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[22]~76_combout\ = (\top0|counter_r\(22) & (\top0|counter_r[21]~75\ $ (GND))) # (!\top0|counter_r\(22) & (!\top0|counter_r[21]~75\ & VCC))
-- \top0|counter_r[22]~77\ = CARRY((\top0|counter_r\(22) & !\top0|counter_r[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(22),
	datad => VCC,
	cin => \top0|counter_r[21]~75\,
	combout => \top0|counter_r[22]~76_combout\,
	cout => \top0|counter_r[22]~77\);

-- Location: FF_X75_Y49_N13
\top0|counter_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[22]~76_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(22));

-- Location: LCCOMB_X75_Y49_N14
\top0|counter_r[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|counter_r[23]~78_combout\ = (\top0|counter_r\(23) & (!\top0|counter_r[22]~77\)) # (!\top0|counter_r\(23) & ((\top0|counter_r[22]~77\) # (GND)))
-- \top0|counter_r[23]~79\ = CARRY((!\top0|counter_r[22]~77\) # (!\top0|counter_r\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|counter_r\(23),
	datad => VCC,
	cin => \top0|counter_r[22]~77\,
	combout => \top0|counter_r[23]~78_combout\,
	cout => \top0|counter_r[23]~79\);

-- Location: FF_X75_Y49_N15
\top0|counter_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[23]~78_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(23));

-- Location: FF_X75_Y49_N17
\top0|counter_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|counter_r[24]~80_combout\,
	sclr => \top0|counter_r[11]~96_combout\,
	ena => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|counter_r\(24));

-- Location: LCCOMB_X75_Y48_N18
\top0|state_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~1_combout\ = (((!\top0|counter_r\(22)) # (!\top0|counter_r\(20))) # (!\top0|counter_r\(21))) # (!\top0|counter_r\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(19),
	datab => \top0|counter_r\(21),
	datac => \top0|counter_r\(20),
	datad => \top0|counter_r\(22),
	combout => \top0|state_r~1_combout\);

-- Location: LCCOMB_X75_Y46_N18
\top0|state_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~2_combout\ = (((!\top0|counter_r\(12)) # (!\top0|counter_r\(15))) # (!\top0|counter_r\(13))) # (!\top0|counter_r\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(14),
	datab => \top0|counter_r\(13),
	datac => \top0|counter_r\(15),
	datad => \top0|counter_r\(12),
	combout => \top0|state_r~2_combout\);

-- Location: LCCOMB_X75_Y46_N16
\top0|state_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~3_combout\ = (!\top0|counter_r\(9) & (!\top0|counter_r\(8) & (!\top0|counter_r\(10) & !\top0|counter_r\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(9),
	datab => \top0|counter_r\(8),
	datac => \top0|counter_r\(10),
	datad => \top0|counter_r\(7),
	combout => \top0|state_r~3_combout\);

-- Location: LCCOMB_X75_Y46_N14
\top0|state_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~4_combout\ = (!\top0|counter_r\(16) & ((\top0|state_r~2_combout\) # ((!\top0|counter_r\(11) & \top0|state_r~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(16),
	datab => \top0|state_r~2_combout\,
	datac => \top0|counter_r\(11),
	datad => \top0|state_r~3_combout\,
	combout => \top0|state_r~4_combout\);

-- Location: LCCOMB_X75_Y48_N28
\top0|state_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~5_combout\ = (\top0|counter_r\(23) & ((\top0|counter_r\(18)) # ((!\top0|state_r~4_combout\ & \top0|counter_r\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(23),
	datab => \top0|counter_r\(18),
	datac => \top0|state_r~4_combout\,
	datad => \top0|counter_r\(17),
	combout => \top0|state_r~5_combout\);

-- Location: LCCOMB_X75_Y48_N10
\top0|state_r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~6_combout\ = (\top0|counter_r\(25) & ((\top0|counter_r\(24)) # ((!\top0|state_r~1_combout\ & \top0|state_r~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(24),
	datab => \top0|state_r~1_combout\,
	datac => \top0|counter_r\(25),
	datad => \top0|state_r~5_combout\,
	combout => \top0|state_r~6_combout\);

-- Location: LCCOMB_X75_Y48_N16
\top0|state_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~0_combout\ = (!\top0|counter_r\(27) & (!\top0|counter_r\(28) & (!\top0|counter_r\(26) & !\top0|counter_r\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|counter_r\(27),
	datab => \top0|counter_r\(28),
	datac => \top0|counter_r\(26),
	datad => \top0|counter_r\(29),
	combout => \top0|state_r~0_combout\);

-- Location: LCCOMB_X75_Y48_N0
\top0|state_r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~7_combout\ = (!\top0|state_r~6_combout\ & (\top0|state_r~0_combout\ & (!\top0|counter_r\(31) & !\top0|counter_r\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|state_r~6_combout\,
	datab => \top0|state_r~0_combout\,
	datac => \top0|counter_r\(31),
	datad => \top0|counter_r\(30),
	combout => \top0|state_r~7_combout\);

-- Location: LCCOMB_X75_Y46_N28
\top0|state_r~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|state_r~8_combout\ = (\deb0|neg_r~q\) # ((\top0|state_r~q\ & ((\top0|state_r~7_combout\) # (!\top0|LessThan0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|state_r~7_combout\,
	datab => \top0|LessThan0~62_combout\,
	datac => \top0|state_r~q\,
	datad => \deb0|neg_r~q\,
	combout => \top0|state_r~8_combout\);

-- Location: FF_X75_Y46_N29
\top0|state_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|state_r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|state_r~q\);

-- Location: LCCOMB_X75_Y46_N30
\top0|random_r[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[18]~65_combout\ = (\deb0|neg_r~q\) # ((\top0|state_r~q\ & !\top0|LessThan0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top0|state_r~q\,
	datac => \top0|LessThan0~62_combout\,
	datad => \deb0|neg_r~q\,
	combout => \top0|random_r[18]~65_combout\);

-- Location: FF_X72_Y43_N3
\top0|random_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[0]~31_combout\,
	asdata => \top0|time_r\(0),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(0));

-- Location: LCCOMB_X72_Y43_N4
\top0|random_r[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[1]~33_combout\ = (\top0|random_r\(1) & (!\top0|random_r[0]~32\)) # (!\top0|random_r\(1) & ((\top0|random_r[0]~32\) # (GND)))
-- \top0|random_r[1]~34\ = CARRY((!\top0|random_r[0]~32\) # (!\top0|random_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|random_r\(1),
	datad => VCC,
	cin => \top0|random_r[0]~32\,
	combout => \top0|random_r[1]~33_combout\,
	cout => \top0|random_r[1]~34\);

-- Location: LCCOMB_X73_Y43_N2
\top0|time_r[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[1]~30_combout\ = (\top0|time_r\(0) & (\top0|time_r\(1) $ (VCC))) # (!\top0|time_r\(0) & (\top0|time_r\(1) & VCC))
-- \top0|time_r[1]~31\ = CARRY((\top0|time_r\(0) & \top0|time_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(0),
	datab => \top0|time_r\(1),
	datad => VCC,
	combout => \top0|time_r[1]~30_combout\,
	cout => \top0|time_r[1]~31\);

-- Location: FF_X73_Y43_N3
\top0|time_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(1));

-- Location: FF_X72_Y43_N5
\top0|random_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[1]~33_combout\,
	asdata => \top0|time_r\(1),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(1));

-- Location: DSPMULT_X71_Y43_N0
\top0|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \top0|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \top0|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \top0|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y43_N2
\top0|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \top0|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X72_Y43_N6
\top0|random_r[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[2]~35_combout\ = (\top0|Mult0|auto_generated|w497w\(2) & (\top0|random_r[1]~34\ $ (GND))) # (!\top0|Mult0|auto_generated|w497w\(2) & (!\top0|random_r[1]~34\ & VCC))
-- \top0|random_r[2]~36\ = CARRY((\top0|Mult0|auto_generated|w497w\(2) & !\top0|random_r[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(2),
	datad => VCC,
	cin => \top0|random_r[1]~34\,
	combout => \top0|random_r[2]~35_combout\,
	cout => \top0|random_r[2]~36\);

-- Location: LCCOMB_X72_Y43_N8
\top0|random_r[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[3]~37_combout\ = (\top0|Mult0|auto_generated|w497w\(3) & (\top0|random_r[2]~36\ & VCC)) # (!\top0|Mult0|auto_generated|w497w\(3) & (!\top0|random_r[2]~36\))
-- \top0|random_r[3]~38\ = CARRY((!\top0|Mult0|auto_generated|w497w\(3) & !\top0|random_r[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|w497w\(3),
	datad => VCC,
	cin => \top0|random_r[2]~36\,
	combout => \top0|random_r[3]~37_combout\,
	cout => \top0|random_r[3]~38\);

-- Location: LCCOMB_X72_Y43_N10
\top0|random_r[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[4]~39_combout\ = (\top0|Mult0|auto_generated|w497w\(4) & ((GND) # (!\top0|random_r[3]~38\))) # (!\top0|Mult0|auto_generated|w497w\(4) & (\top0|random_r[3]~38\ $ (GND)))
-- \top0|random_r[4]~40\ = CARRY((\top0|Mult0|auto_generated|w497w\(4)) # (!\top0|random_r[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|w497w\(4),
	datad => VCC,
	cin => \top0|random_r[3]~38\,
	combout => \top0|random_r[4]~39_combout\,
	cout => \top0|random_r[4]~40\);

-- Location: LCCOMB_X72_Y43_N12
\top0|random_r[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[5]~41_combout\ = (\top0|Mult0|auto_generated|w497w\(5) & (\top0|random_r[4]~40\ & VCC)) # (!\top0|Mult0|auto_generated|w497w\(5) & (!\top0|random_r[4]~40\))
-- \top0|random_r[5]~42\ = CARRY((!\top0|Mult0|auto_generated|w497w\(5) & !\top0|random_r[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(5),
	datad => VCC,
	cin => \top0|random_r[4]~40\,
	combout => \top0|random_r[5]~41_combout\,
	cout => \top0|random_r[5]~42\);

-- Location: LCCOMB_X72_Y43_N14
\top0|random_r[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[6]~43_combout\ = (\top0|Mult0|auto_generated|w497w\(6) & (\top0|random_r[5]~42\ $ (GND))) # (!\top0|Mult0|auto_generated|w497w\(6) & (!\top0|random_r[5]~42\ & VCC))
-- \top0|random_r[6]~44\ = CARRY((\top0|Mult0|auto_generated|w497w\(6) & !\top0|random_r[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|w497w\(6),
	datad => VCC,
	cin => \top0|random_r[5]~42\,
	combout => \top0|random_r[6]~43_combout\,
	cout => \top0|random_r[6]~44\);

-- Location: LCCOMB_X72_Y43_N16
\top0|random_r[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[7]~45_combout\ = (\top0|Mult0|auto_generated|w497w\(7) & (!\top0|random_r[6]~44\)) # (!\top0|Mult0|auto_generated|w497w\(7) & ((\top0|random_r[6]~44\) # (GND)))
-- \top0|random_r[7]~46\ = CARRY((!\top0|random_r[6]~44\) # (!\top0|Mult0|auto_generated|w497w\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(7),
	datad => VCC,
	cin => \top0|random_r[6]~44\,
	combout => \top0|random_r[7]~45_combout\,
	cout => \top0|random_r[7]~46\);

-- Location: LCCOMB_X72_Y43_N18
\top0|random_r[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[8]~47_combout\ = (\top0|Mult0|auto_generated|w497w\(8) & (\top0|random_r[7]~46\ $ (GND))) # (!\top0|Mult0|auto_generated|w497w\(8) & (!\top0|random_r[7]~46\ & VCC))
-- \top0|random_r[8]~48\ = CARRY((\top0|Mult0|auto_generated|w497w\(8) & !\top0|random_r[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(8),
	datad => VCC,
	cin => \top0|random_r[7]~46\,
	combout => \top0|random_r[8]~47_combout\,
	cout => \top0|random_r[8]~48\);

-- Location: LCCOMB_X72_Y43_N20
\top0|random_r[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[9]~49_combout\ = (\top0|Mult0|auto_generated|w497w\(9) & (!\top0|random_r[8]~48\)) # (!\top0|Mult0|auto_generated|w497w\(9) & ((\top0|random_r[8]~48\) # (GND)))
-- \top0|random_r[9]~50\ = CARRY((!\top0|random_r[8]~48\) # (!\top0|Mult0|auto_generated|w497w\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|w497w\(9),
	datad => VCC,
	cin => \top0|random_r[8]~48\,
	combout => \top0|random_r[9]~49_combout\,
	cout => \top0|random_r[9]~50\);

-- Location: LCCOMB_X72_Y43_N22
\top0|random_r[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[10]~51_combout\ = (\top0|Mult0|auto_generated|w497w\(10) & (\top0|random_r[9]~50\ $ (GND))) # (!\top0|Mult0|auto_generated|w497w\(10) & (!\top0|random_r[9]~50\ & VCC))
-- \top0|random_r[10]~52\ = CARRY((\top0|Mult0|auto_generated|w497w\(10) & !\top0|random_r[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|w497w\(10),
	datad => VCC,
	cin => \top0|random_r[9]~50\,
	combout => \top0|random_r[10]~51_combout\,
	cout => \top0|random_r[10]~52\);

-- Location: LCCOMB_X72_Y43_N24
\top0|random_r[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[11]~53_combout\ = (\top0|Mult0|auto_generated|w497w\(11) & (!\top0|random_r[10]~52\)) # (!\top0|Mult0|auto_generated|w497w\(11) & ((\top0|random_r[10]~52\) # (GND)))
-- \top0|random_r[11]~54\ = CARRY((!\top0|random_r[10]~52\) # (!\top0|Mult0|auto_generated|w497w\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(11),
	datad => VCC,
	cin => \top0|random_r[10]~52\,
	combout => \top0|random_r[11]~53_combout\,
	cout => \top0|random_r[11]~54\);

-- Location: LCCOMB_X72_Y43_N26
\top0|random_r[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[12]~55_combout\ = (\top0|Mult0|auto_generated|w497w\(12) & ((GND) # (!\top0|random_r[11]~54\))) # (!\top0|Mult0|auto_generated|w497w\(12) & (\top0|random_r[11]~54\ $ (GND)))
-- \top0|random_r[12]~56\ = CARRY((\top0|Mult0|auto_generated|w497w\(12)) # (!\top0|random_r[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(12),
	datad => VCC,
	cin => \top0|random_r[11]~54\,
	combout => \top0|random_r[12]~55_combout\,
	cout => \top0|random_r[12]~56\);

-- Location: LCCOMB_X72_Y43_N28
\top0|random_r[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[13]~57_combout\ = (\top0|Mult0|auto_generated|w497w\(13) & (\top0|random_r[12]~56\ & VCC)) # (!\top0|Mult0|auto_generated|w497w\(13) & (!\top0|random_r[12]~56\))
-- \top0|random_r[13]~58\ = CARRY((!\top0|Mult0|auto_generated|w497w\(13) & !\top0|random_r[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|w497w\(13),
	datad => VCC,
	cin => \top0|random_r[12]~56\,
	combout => \top0|random_r[13]~57_combout\,
	cout => \top0|random_r[13]~58\);

-- Location: LCCOMB_X72_Y43_N30
\top0|random_r[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[14]~59_combout\ = (\top0|Mult0|auto_generated|w497w\(14) & (\top0|random_r[13]~58\ $ (GND))) # (!\top0|Mult0|auto_generated|w497w\(14) & (!\top0|random_r[13]~58\ & VCC))
-- \top0|random_r[14]~60\ = CARRY((\top0|Mult0|auto_generated|w497w\(14) & !\top0|random_r[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(14),
	datad => VCC,
	cin => \top0|random_r[13]~58\,
	combout => \top0|random_r[14]~59_combout\,
	cout => \top0|random_r[14]~60\);

-- Location: LCCOMB_X72_Y42_N0
\top0|random_r[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[15]~61_combout\ = (\top0|Mult0|auto_generated|w497w\(15) & (!\top0|random_r[14]~60\)) # (!\top0|Mult0|auto_generated|w497w\(15) & ((\top0|random_r[14]~60\) # (GND)))
-- \top0|random_r[15]~62\ = CARRY((!\top0|random_r[14]~60\) # (!\top0|Mult0|auto_generated|w497w\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(15),
	datad => VCC,
	cin => \top0|random_r[14]~60\,
	combout => \top0|random_r[15]~61_combout\,
	cout => \top0|random_r[15]~62\);

-- Location: LCCOMB_X72_Y42_N2
\top0|random_r[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[16]~63_combout\ = (\top0|Mult0|auto_generated|w497w\(16) & (\top0|random_r[15]~62\ $ (GND))) # (!\top0|Mult0|auto_generated|w497w\(16) & (!\top0|random_r[15]~62\ & VCC))
-- \top0|random_r[16]~64\ = CARRY((\top0|Mult0|auto_generated|w497w\(16) & !\top0|random_r[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|w497w\(16),
	datad => VCC,
	cin => \top0|random_r[15]~62\,
	combout => \top0|random_r[16]~63_combout\,
	cout => \top0|random_r[16]~64\);

-- Location: LCCOMB_X73_Y43_N4
\top0|time_r[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[2]~32_combout\ = (\top0|time_r\(2) & (!\top0|time_r[1]~31\)) # (!\top0|time_r\(2) & ((\top0|time_r[1]~31\) # (GND)))
-- \top0|time_r[2]~33\ = CARRY((!\top0|time_r[1]~31\) # (!\top0|time_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(2),
	datad => VCC,
	cin => \top0|time_r[1]~31\,
	combout => \top0|time_r[2]~32_combout\,
	cout => \top0|time_r[2]~33\);

-- Location: FF_X73_Y43_N5
\top0|time_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[2]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(2));

-- Location: LCCOMB_X73_Y43_N6
\top0|time_r[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[3]~34_combout\ = (\top0|time_r\(3) & (\top0|time_r[2]~33\ $ (GND))) # (!\top0|time_r\(3) & (!\top0|time_r[2]~33\ & VCC))
-- \top0|time_r[3]~35\ = CARRY((\top0|time_r\(3) & !\top0|time_r[2]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(3),
	datad => VCC,
	cin => \top0|time_r[2]~33\,
	combout => \top0|time_r[3]~34_combout\,
	cout => \top0|time_r[3]~35\);

-- Location: FF_X73_Y43_N7
\top0|time_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[3]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(3));

-- Location: LCCOMB_X73_Y43_N8
\top0|time_r[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[4]~36_combout\ = (\top0|time_r\(4) & (!\top0|time_r[3]~35\)) # (!\top0|time_r\(4) & ((\top0|time_r[3]~35\) # (GND)))
-- \top0|time_r[4]~37\ = CARRY((!\top0|time_r[3]~35\) # (!\top0|time_r\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(4),
	datad => VCC,
	cin => \top0|time_r[3]~35\,
	combout => \top0|time_r[4]~36_combout\,
	cout => \top0|time_r[4]~37\);

-- Location: FF_X73_Y43_N9
\top0|time_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[4]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(4));

-- Location: LCCOMB_X73_Y43_N10
\top0|time_r[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[5]~38_combout\ = (\top0|time_r\(5) & (\top0|time_r[4]~37\ $ (GND))) # (!\top0|time_r\(5) & (!\top0|time_r[4]~37\ & VCC))
-- \top0|time_r[5]~39\ = CARRY((\top0|time_r\(5) & !\top0|time_r[4]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(5),
	datad => VCC,
	cin => \top0|time_r[4]~37\,
	combout => \top0|time_r[5]~38_combout\,
	cout => \top0|time_r[5]~39\);

-- Location: FF_X73_Y43_N11
\top0|time_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(5));

-- Location: LCCOMB_X73_Y43_N12
\top0|time_r[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[6]~40_combout\ = (\top0|time_r\(6) & (!\top0|time_r[5]~39\)) # (!\top0|time_r\(6) & ((\top0|time_r[5]~39\) # (GND)))
-- \top0|time_r[6]~41\ = CARRY((!\top0|time_r[5]~39\) # (!\top0|time_r\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(6),
	datad => VCC,
	cin => \top0|time_r[5]~39\,
	combout => \top0|time_r[6]~40_combout\,
	cout => \top0|time_r[6]~41\);

-- Location: FF_X73_Y43_N13
\top0|time_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(6));

-- Location: LCCOMB_X73_Y43_N14
\top0|time_r[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[7]~42_combout\ = (\top0|time_r\(7) & (\top0|time_r[6]~41\ $ (GND))) # (!\top0|time_r\(7) & (!\top0|time_r[6]~41\ & VCC))
-- \top0|time_r[7]~43\ = CARRY((\top0|time_r\(7) & !\top0|time_r[6]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(7),
	datad => VCC,
	cin => \top0|time_r[6]~41\,
	combout => \top0|time_r[7]~42_combout\,
	cout => \top0|time_r[7]~43\);

-- Location: FF_X73_Y43_N15
\top0|time_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[7]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(7));

-- Location: LCCOMB_X73_Y43_N16
\top0|time_r[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[8]~44_combout\ = (\top0|time_r\(8) & (!\top0|time_r[7]~43\)) # (!\top0|time_r\(8) & ((\top0|time_r[7]~43\) # (GND)))
-- \top0|time_r[8]~45\ = CARRY((!\top0|time_r[7]~43\) # (!\top0|time_r\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(8),
	datad => VCC,
	cin => \top0|time_r[7]~43\,
	combout => \top0|time_r[8]~44_combout\,
	cout => \top0|time_r[8]~45\);

-- Location: FF_X73_Y43_N17
\top0|time_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[8]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(8));

-- Location: LCCOMB_X73_Y43_N18
\top0|time_r[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[9]~46_combout\ = (\top0|time_r\(9) & (\top0|time_r[8]~45\ $ (GND))) # (!\top0|time_r\(9) & (!\top0|time_r[8]~45\ & VCC))
-- \top0|time_r[9]~47\ = CARRY((\top0|time_r\(9) & !\top0|time_r[8]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(9),
	datad => VCC,
	cin => \top0|time_r[8]~45\,
	combout => \top0|time_r[9]~46_combout\,
	cout => \top0|time_r[9]~47\);

-- Location: FF_X73_Y43_N19
\top0|time_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[9]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(9));

-- Location: LCCOMB_X73_Y43_N20
\top0|time_r[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[10]~48_combout\ = (\top0|time_r\(10) & (!\top0|time_r[9]~47\)) # (!\top0|time_r\(10) & ((\top0|time_r[9]~47\) # (GND)))
-- \top0|time_r[10]~49\ = CARRY((!\top0|time_r[9]~47\) # (!\top0|time_r\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(10),
	datad => VCC,
	cin => \top0|time_r[9]~47\,
	combout => \top0|time_r[10]~48_combout\,
	cout => \top0|time_r[10]~49\);

-- Location: FF_X73_Y43_N21
\top0|time_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[10]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(10));

-- Location: LCCOMB_X73_Y43_N22
\top0|time_r[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[11]~50_combout\ = (\top0|time_r\(11) & (\top0|time_r[10]~49\ $ (GND))) # (!\top0|time_r\(11) & (!\top0|time_r[10]~49\ & VCC))
-- \top0|time_r[11]~51\ = CARRY((\top0|time_r\(11) & !\top0|time_r[10]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(11),
	datad => VCC,
	cin => \top0|time_r[10]~49\,
	combout => \top0|time_r[11]~50_combout\,
	cout => \top0|time_r[11]~51\);

-- Location: FF_X73_Y43_N23
\top0|time_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[11]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(11));

-- Location: LCCOMB_X73_Y43_N24
\top0|time_r[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[12]~52_combout\ = (\top0|time_r\(12) & (!\top0|time_r[11]~51\)) # (!\top0|time_r\(12) & ((\top0|time_r[11]~51\) # (GND)))
-- \top0|time_r[12]~53\ = CARRY((!\top0|time_r[11]~51\) # (!\top0|time_r\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(12),
	datad => VCC,
	cin => \top0|time_r[11]~51\,
	combout => \top0|time_r[12]~52_combout\,
	cout => \top0|time_r[12]~53\);

-- Location: FF_X73_Y43_N25
\top0|time_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[12]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(12));

-- Location: LCCOMB_X73_Y43_N26
\top0|time_r[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[13]~54_combout\ = (\top0|time_r\(13) & (\top0|time_r[12]~53\ $ (GND))) # (!\top0|time_r\(13) & (!\top0|time_r[12]~53\ & VCC))
-- \top0|time_r[13]~55\ = CARRY((\top0|time_r\(13) & !\top0|time_r[12]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(13),
	datad => VCC,
	cin => \top0|time_r[12]~53\,
	combout => \top0|time_r[13]~54_combout\,
	cout => \top0|time_r[13]~55\);

-- Location: FF_X73_Y43_N27
\top0|time_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[13]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(13));

-- Location: LCCOMB_X73_Y43_N28
\top0|time_r[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[14]~56_combout\ = (\top0|time_r\(14) & (!\top0|time_r[13]~55\)) # (!\top0|time_r\(14) & ((\top0|time_r[13]~55\) # (GND)))
-- \top0|time_r[14]~57\ = CARRY((!\top0|time_r[13]~55\) # (!\top0|time_r\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(14),
	datad => VCC,
	cin => \top0|time_r[13]~55\,
	combout => \top0|time_r[14]~56_combout\,
	cout => \top0|time_r[14]~57\);

-- Location: FF_X73_Y43_N29
\top0|time_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[14]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(14));

-- Location: LCCOMB_X73_Y43_N30
\top0|time_r[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[15]~58_combout\ = (\top0|time_r\(15) & (\top0|time_r[14]~57\ $ (GND))) # (!\top0|time_r\(15) & (!\top0|time_r[14]~57\ & VCC))
-- \top0|time_r[15]~59\ = CARRY((\top0|time_r\(15) & !\top0|time_r[14]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(15),
	datad => VCC,
	cin => \top0|time_r[14]~57\,
	combout => \top0|time_r[15]~58_combout\,
	cout => \top0|time_r[15]~59\);

-- Location: FF_X73_Y43_N31
\top0|time_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[15]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(15));

-- Location: LCCOMB_X73_Y42_N0
\top0|time_r[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[16]~60_combout\ = (\top0|time_r\(16) & (!\top0|time_r[15]~59\)) # (!\top0|time_r\(16) & ((\top0|time_r[15]~59\) # (GND)))
-- \top0|time_r[16]~61\ = CARRY((!\top0|time_r[15]~59\) # (!\top0|time_r\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(16),
	datad => VCC,
	cin => \top0|time_r[15]~59\,
	combout => \top0|time_r[16]~60_combout\,
	cout => \top0|time_r[16]~61\);

-- Location: FF_X73_Y42_N1
\top0|time_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[16]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(16));

-- Location: FF_X72_Y42_N3
\top0|random_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[16]~63_combout\,
	asdata => \top0|time_r\(16),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(16));

-- Location: FF_X72_Y42_N1
\top0|random_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[15]~61_combout\,
	asdata => \top0|time_r\(15),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(15));

-- Location: FF_X72_Y43_N31
\top0|random_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[14]~59_combout\,
	asdata => \top0|time_r\(14),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(14));

-- Location: FF_X72_Y43_N29
\top0|random_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[13]~57_combout\,
	asdata => \top0|time_r\(13),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(13));

-- Location: FF_X72_Y43_N27
\top0|random_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[12]~55_combout\,
	asdata => \top0|time_r\(12),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(12));

-- Location: FF_X72_Y43_N25
\top0|random_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[11]~53_combout\,
	asdata => \top0|time_r\(11),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(11));

-- Location: FF_X72_Y43_N23
\top0|random_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[10]~51_combout\,
	asdata => \top0|time_r\(10),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(10));

-- Location: FF_X72_Y43_N21
\top0|random_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[9]~49_combout\,
	asdata => \top0|time_r\(9),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(9));

-- Location: FF_X72_Y43_N19
\top0|random_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[8]~47_combout\,
	asdata => \top0|time_r\(8),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(8));

-- Location: FF_X72_Y43_N17
\top0|random_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[7]~45_combout\,
	asdata => \top0|time_r\(7),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(7));

-- Location: FF_X72_Y43_N15
\top0|random_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[6]~43_combout\,
	asdata => \top0|time_r\(6),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(6));

-- Location: FF_X72_Y43_N13
\top0|random_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[5]~41_combout\,
	asdata => \top0|time_r\(5),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(5));

-- Location: FF_X72_Y43_N11
\top0|random_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[4]~39_combout\,
	asdata => \top0|time_r\(4),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(4));

-- Location: FF_X72_Y43_N9
\top0|random_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[3]~37_combout\,
	asdata => \top0|time_r\(3),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(3));

-- Location: FF_X72_Y43_N7
\top0|random_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[2]~35_combout\,
	asdata => \top0|time_r\(2),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(2));

-- Location: LCCOMB_X72_Y42_N4
\top0|random_r[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[17]~66_combout\ = (\top0|Mult0|auto_generated|w497w\(17) & (!\top0|random_r[16]~64\)) # (!\top0|Mult0|auto_generated|w497w\(17) & ((\top0|random_r[16]~64\) # (GND)))
-- \top0|random_r[17]~67\ = CARRY((!\top0|random_r[16]~64\) # (!\top0|Mult0|auto_generated|w497w\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|w497w\(17),
	datad => VCC,
	cin => \top0|random_r[16]~64\,
	combout => \top0|random_r[17]~66_combout\,
	cout => \top0|random_r[17]~67\);

-- Location: LCCOMB_X73_Y42_N2
\top0|time_r[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[17]~62_combout\ = (\top0|time_r\(17) & (\top0|time_r[16]~61\ $ (GND))) # (!\top0|time_r\(17) & (!\top0|time_r[16]~61\ & VCC))
-- \top0|time_r[17]~63\ = CARRY((\top0|time_r\(17) & !\top0|time_r[16]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(17),
	datad => VCC,
	cin => \top0|time_r[16]~61\,
	combout => \top0|time_r[17]~62_combout\,
	cout => \top0|time_r[17]~63\);

-- Location: FF_X73_Y42_N3
\top0|time_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[17]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(17));

-- Location: FF_X72_Y42_N5
\top0|random_r[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[17]~66_combout\,
	asdata => \top0|time_r\(17),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(17));

-- Location: DSPMULT_X71_Y41_N0
\top0|Mult0|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \top0|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \top0|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \top0|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y41_N2
\top0|Mult0|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \top0|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPMULT_X71_Y42_N0
\top0|Mult0|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \top0|Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \top0|Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \top0|Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y42_N2
\top0|Mult0|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \top0|Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y41_N2
\top0|Mult0|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~0_combout\ = (\top0|Mult0|auto_generated|mac_out6~dataout\ & (\top0|Mult0|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\top0|Mult0|auto_generated|mac_out6~dataout\ & (\top0|Mult0|auto_generated|mac_out4~dataout\ & VCC))
-- \top0|Mult0|auto_generated|op_2~1\ = CARRY((\top0|Mult0|auto_generated|mac_out6~dataout\ & \top0|Mult0|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~dataout\,
	datab => \top0|Mult0|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \top0|Mult0|auto_generated|op_2~0_combout\,
	cout => \top0|Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X70_Y41_N4
\top0|Mult0|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~2_combout\ = (\top0|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\top0|Mult0|auto_generated|mac_out6~DATAOUT1\ & (\top0|Mult0|auto_generated|op_2~1\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- (!\top0|Mult0|auto_generated|op_2~1\)))) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\top0|Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\top0|Mult0|auto_generated|op_2~1\)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT1\ & 
-- ((\top0|Mult0|auto_generated|op_2~1\) # (GND)))))
-- \top0|Mult0|auto_generated|op_2~3\ = CARRY((\top0|Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\top0|Mult0|auto_generated|mac_out6~DATAOUT1\ & !\top0|Mult0|auto_generated|op_2~1\)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- ((!\top0|Mult0|auto_generated|op_2~1\) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datab => \top0|Mult0|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~1\,
	combout => \top0|Mult0|auto_generated|op_2~2_combout\,
	cout => \top0|Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X70_Y41_N6
\top0|Mult0|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~4_combout\ = ((\top0|Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\top0|Mult0|auto_generated|mac_out6~DATAOUT2\ $ (!\top0|Mult0|auto_generated|op_2~3\)))) # (GND)
-- \top0|Mult0|auto_generated|op_2~5\ = CARRY((\top0|Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\top0|Mult0|auto_generated|mac_out6~DATAOUT2\) # (!\top0|Mult0|auto_generated|op_2~3\))) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- (\top0|Mult0|auto_generated|mac_out6~DATAOUT2\ & !\top0|Mult0|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \top0|Mult0|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~3\,
	combout => \top0|Mult0|auto_generated|op_2~4_combout\,
	cout => \top0|Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X70_Y41_N8
\top0|Mult0|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~6_combout\ = (\top0|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT3\ & (\top0|Mult0|auto_generated|op_2~5\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\top0|Mult0|auto_generated|op_2~5\)))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\top0|Mult0|auto_generated|op_2~5\)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT3\ & 
-- ((\top0|Mult0|auto_generated|op_2~5\) # (GND)))))
-- \top0|Mult0|auto_generated|op_2~7\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT3\ & (!\top0|Mult0|auto_generated|mac_out4~DATAOUT3\ & !\top0|Mult0|auto_generated|op_2~5\)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- ((!\top0|Mult0|auto_generated|op_2~5\) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT3\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~5\,
	combout => \top0|Mult0|auto_generated|op_2~6_combout\,
	cout => \top0|Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X70_Y41_N10
\top0|Mult0|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~8_combout\ = ((\top0|Mult0|auto_generated|mac_out6~DATAOUT4\ $ (\top0|Mult0|auto_generated|mac_out4~DATAOUT4\ $ (!\top0|Mult0|auto_generated|op_2~7\)))) # (GND)
-- \top0|Mult0|auto_generated|op_2~9\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT4\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT4\) # (!\top0|Mult0|auto_generated|op_2~7\))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT4\ & 
-- (\top0|Mult0|auto_generated|mac_out4~DATAOUT4\ & !\top0|Mult0|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT4\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~7\,
	combout => \top0|Mult0|auto_generated|op_2~8_combout\,
	cout => \top0|Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X70_Y41_N12
\top0|Mult0|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~10_combout\ = (\top0|Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT5\ & (\top0|Mult0|auto_generated|op_2~9\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\top0|Mult0|auto_generated|op_2~9\)))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\top0|Mult0|auto_generated|op_2~9\)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT5\ & 
-- ((\top0|Mult0|auto_generated|op_2~9\) # (GND)))))
-- \top0|Mult0|auto_generated|op_2~11\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT5\ & (!\top0|Mult0|auto_generated|mac_out4~DATAOUT5\ & !\top0|Mult0|auto_generated|op_2~9\)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- ((!\top0|Mult0|auto_generated|op_2~9\) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT5\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~9\,
	combout => \top0|Mult0|auto_generated|op_2~10_combout\,
	cout => \top0|Mult0|auto_generated|op_2~11\);

-- Location: LCCOMB_X70_Y41_N14
\top0|Mult0|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~12_combout\ = ((\top0|Mult0|auto_generated|mac_out6~DATAOUT6\ $ (\top0|Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\top0|Mult0|auto_generated|op_2~11\)))) # (GND)
-- \top0|Mult0|auto_generated|op_2~13\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT6\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\top0|Mult0|auto_generated|op_2~11\))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT6\ & 
-- (\top0|Mult0|auto_generated|mac_out4~DATAOUT6\ & !\top0|Mult0|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT6\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~11\,
	combout => \top0|Mult0|auto_generated|op_2~12_combout\,
	cout => \top0|Mult0|auto_generated|op_2~13\);

-- Location: LCCOMB_X70_Y41_N16
\top0|Mult0|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~14_combout\ = (\top0|Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT7\ & (\top0|Mult0|auto_generated|op_2~13\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- (!\top0|Mult0|auto_generated|op_2~13\)))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\top0|Mult0|auto_generated|op_2~13\)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT7\ & 
-- ((\top0|Mult0|auto_generated|op_2~13\) # (GND)))))
-- \top0|Mult0|auto_generated|op_2~15\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\top0|Mult0|auto_generated|mac_out4~DATAOUT7\ & !\top0|Mult0|auto_generated|op_2~13\)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- ((!\top0|Mult0|auto_generated|op_2~13\) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT7\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~13\,
	combout => \top0|Mult0|auto_generated|op_2~14_combout\,
	cout => \top0|Mult0|auto_generated|op_2~15\);

-- Location: LCCOMB_X70_Y41_N18
\top0|Mult0|auto_generated|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~16_combout\ = ((\top0|Mult0|auto_generated|mac_out6~DATAOUT8\ $ (\top0|Mult0|auto_generated|mac_out4~DATAOUT8\ $ (!\top0|Mult0|auto_generated|op_2~15\)))) # (GND)
-- \top0|Mult0|auto_generated|op_2~17\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT8\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT8\) # (!\top0|Mult0|auto_generated|op_2~15\))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT8\ & 
-- (\top0|Mult0|auto_generated|mac_out4~DATAOUT8\ & !\top0|Mult0|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT8\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~15\,
	combout => \top0|Mult0|auto_generated|op_2~16_combout\,
	cout => \top0|Mult0|auto_generated|op_2~17\);

-- Location: LCCOMB_X70_Y41_N20
\top0|Mult0|auto_generated|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~18_combout\ = (\top0|Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT9\ & (\top0|Mult0|auto_generated|op_2~17\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- (!\top0|Mult0|auto_generated|op_2~17\)))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\top0|Mult0|auto_generated|op_2~17\)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT9\ & 
-- ((\top0|Mult0|auto_generated|op_2~17\) # (GND)))))
-- \top0|Mult0|auto_generated|op_2~19\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT9\ & (!\top0|Mult0|auto_generated|mac_out4~DATAOUT9\ & !\top0|Mult0|auto_generated|op_2~17\)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- ((!\top0|Mult0|auto_generated|op_2~17\) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT9\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~17\,
	combout => \top0|Mult0|auto_generated|op_2~18_combout\,
	cout => \top0|Mult0|auto_generated|op_2~19\);

-- Location: LCCOMB_X70_Y41_N22
\top0|Mult0|auto_generated|op_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~20_combout\ = ((\top0|Mult0|auto_generated|mac_out6~DATAOUT10\ $ (\top0|Mult0|auto_generated|mac_out4~DATAOUT10\ $ (!\top0|Mult0|auto_generated|op_2~19\)))) # (GND)
-- \top0|Mult0|auto_generated|op_2~21\ = CARRY((\top0|Mult0|auto_generated|mac_out6~DATAOUT10\ & ((\top0|Mult0|auto_generated|mac_out4~DATAOUT10\) # (!\top0|Mult0|auto_generated|op_2~19\))) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT10\ & 
-- (\top0|Mult0|auto_generated|mac_out4~DATAOUT10\ & !\top0|Mult0|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out6~DATAOUT10\,
	datab => \top0|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~19\,
	combout => \top0|Mult0|auto_generated|op_2~20_combout\,
	cout => \top0|Mult0|auto_generated|op_2~21\);

-- Location: LCCOMB_X70_Y41_N24
\top0|Mult0|auto_generated|op_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~22_combout\ = (\top0|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\top0|Mult0|auto_generated|mac_out6~DATAOUT11\ & (\top0|Mult0|auto_generated|op_2~21\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\top0|Mult0|auto_generated|op_2~21\)))) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\top0|Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\top0|Mult0|auto_generated|op_2~21\)) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT11\ & 
-- ((\top0|Mult0|auto_generated|op_2~21\) # (GND)))))
-- \top0|Mult0|auto_generated|op_2~23\ = CARRY((\top0|Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\top0|Mult0|auto_generated|mac_out6~DATAOUT11\ & !\top0|Mult0|auto_generated|op_2~21\)) # (!\top0|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- ((!\top0|Mult0|auto_generated|op_2~21\) # (!\top0|Mult0|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out4~DATAOUT11\,
	datab => \top0|Mult0|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_2~21\,
	combout => \top0|Mult0|auto_generated|op_2~22_combout\,
	cout => \top0|Mult0|auto_generated|op_2~23\);

-- Location: LCCOMB_X70_Y41_N26
\top0|Mult0|auto_generated|op_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_2~24_combout\ = \top0|Mult0|auto_generated|mac_out4~DATAOUT12\ $ (\top0|Mult0|auto_generated|op_2~23\ $ (!\top0|Mult0|auto_generated|mac_out6~DATAOUT12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => \top0|Mult0|auto_generated|mac_out6~DATAOUT12\,
	cin => \top0|Mult0|auto_generated|op_2~23\,
	combout => \top0|Mult0|auto_generated|op_2~24_combout\);

-- Location: LCCOMB_X70_Y42_N6
\top0|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~0_combout\ = (\top0|Mult0|auto_generated|op_2~0_combout\ & (\top0|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\top0|Mult0|auto_generated|op_2~0_combout\ & (\top0|Mult0|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \top0|Mult0|auto_generated|op_1~1\ = CARRY((\top0|Mult0|auto_generated|op_2~0_combout\ & \top0|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_2~0_combout\,
	datab => \top0|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \top0|Mult0|auto_generated|op_1~0_combout\,
	cout => \top0|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X70_Y42_N8
\top0|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~2_combout\ = (\top0|Mult0|auto_generated|op_2~2_combout\ & ((\top0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\top0|Mult0|auto_generated|op_1~1\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- (!\top0|Mult0|auto_generated|op_1~1\)))) # (!\top0|Mult0|auto_generated|op_2~2_combout\ & ((\top0|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\top0|Mult0|auto_generated|op_1~1\)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- ((\top0|Mult0|auto_generated|op_1~1\) # (GND)))))
-- \top0|Mult0|auto_generated|op_1~3\ = CARRY((\top0|Mult0|auto_generated|op_2~2_combout\ & (!\top0|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\top0|Mult0|auto_generated|op_1~1\)) # (!\top0|Mult0|auto_generated|op_2~2_combout\ & 
-- ((!\top0|Mult0|auto_generated|op_1~1\) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_2~2_combout\,
	datab => \top0|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~1\,
	combout => \top0|Mult0|auto_generated|op_1~2_combout\,
	cout => \top0|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X70_Y42_N10
\top0|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~4_combout\ = ((\top0|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (\top0|Mult0|auto_generated|op_2~4_combout\ $ (!\top0|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \top0|Mult0|auto_generated|op_1~5\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\top0|Mult0|auto_generated|op_2~4_combout\) # (!\top0|Mult0|auto_generated|op_1~3\))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- (\top0|Mult0|auto_generated|op_2~4_combout\ & !\top0|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \top0|Mult0|auto_generated|op_2~4_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~3\,
	combout => \top0|Mult0|auto_generated|op_1~4_combout\,
	cout => \top0|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X70_Y42_N12
\top0|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~6_combout\ = (\top0|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\top0|Mult0|auto_generated|op_2~6_combout\ & (\top0|Mult0|auto_generated|op_1~5\ & VCC)) # (!\top0|Mult0|auto_generated|op_2~6_combout\ & 
-- (!\top0|Mult0|auto_generated|op_1~5\)))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\top0|Mult0|auto_generated|op_2~6_combout\ & (!\top0|Mult0|auto_generated|op_1~5\)) # (!\top0|Mult0|auto_generated|op_2~6_combout\ & 
-- ((\top0|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \top0|Mult0|auto_generated|op_1~7\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\top0|Mult0|auto_generated|op_2~6_combout\ & !\top0|Mult0|auto_generated|op_1~5\)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\top0|Mult0|auto_generated|op_1~5\) # (!\top0|Mult0|auto_generated|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \top0|Mult0|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~5\,
	combout => \top0|Mult0|auto_generated|op_1~6_combout\,
	cout => \top0|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X70_Y42_N14
\top0|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~8_combout\ = ((\top0|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\top0|Mult0|auto_generated|op_2~8_combout\ $ (!\top0|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \top0|Mult0|auto_generated|op_1~9\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\top0|Mult0|auto_generated|op_2~8_combout\) # (!\top0|Mult0|auto_generated|op_1~7\))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- (\top0|Mult0|auto_generated|op_2~8_combout\ & !\top0|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \top0|Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~7\,
	combout => \top0|Mult0|auto_generated|op_1~8_combout\,
	cout => \top0|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X70_Y42_N16
\top0|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~10_combout\ = (\top0|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\top0|Mult0|auto_generated|op_2~10_combout\ & (\top0|Mult0|auto_generated|op_1~9\ & VCC)) # (!\top0|Mult0|auto_generated|op_2~10_combout\ & 
-- (!\top0|Mult0|auto_generated|op_1~9\)))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\top0|Mult0|auto_generated|op_2~10_combout\ & (!\top0|Mult0|auto_generated|op_1~9\)) # (!\top0|Mult0|auto_generated|op_2~10_combout\ & 
-- ((\top0|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \top0|Mult0|auto_generated|op_1~11\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\top0|Mult0|auto_generated|op_2~10_combout\ & !\top0|Mult0|auto_generated|op_1~9\)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\top0|Mult0|auto_generated|op_1~9\) # (!\top0|Mult0|auto_generated|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \top0|Mult0|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~9\,
	combout => \top0|Mult0|auto_generated|op_1~10_combout\,
	cout => \top0|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X70_Y42_N18
\top0|Mult0|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~12_combout\ = ((\top0|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\top0|Mult0|auto_generated|op_2~12_combout\ $ (!\top0|Mult0|auto_generated|op_1~11\)))) # (GND)
-- \top0|Mult0|auto_generated|op_1~13\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\top0|Mult0|auto_generated|op_2~12_combout\) # (!\top0|Mult0|auto_generated|op_1~11\))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- (\top0|Mult0|auto_generated|op_2~12_combout\ & !\top0|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \top0|Mult0|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~11\,
	combout => \top0|Mult0|auto_generated|op_1~12_combout\,
	cout => \top0|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X70_Y42_N20
\top0|Mult0|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~14_combout\ = (\top0|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\top0|Mult0|auto_generated|op_2~14_combout\ & (\top0|Mult0|auto_generated|op_1~13\ & VCC)) # (!\top0|Mult0|auto_generated|op_2~14_combout\ & 
-- (!\top0|Mult0|auto_generated|op_1~13\)))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\top0|Mult0|auto_generated|op_2~14_combout\ & (!\top0|Mult0|auto_generated|op_1~13\)) # (!\top0|Mult0|auto_generated|op_2~14_combout\ & 
-- ((\top0|Mult0|auto_generated|op_1~13\) # (GND)))))
-- \top0|Mult0|auto_generated|op_1~15\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\top0|Mult0|auto_generated|op_2~14_combout\ & !\top0|Mult0|auto_generated|op_1~13\)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((!\top0|Mult0|auto_generated|op_1~13\) # (!\top0|Mult0|auto_generated|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \top0|Mult0|auto_generated|op_2~14_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~13\,
	combout => \top0|Mult0|auto_generated|op_1~14_combout\,
	cout => \top0|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X70_Y42_N22
\top0|Mult0|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~16_combout\ = ((\top0|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (\top0|Mult0|auto_generated|op_2~16_combout\ $ (!\top0|Mult0|auto_generated|op_1~15\)))) # (GND)
-- \top0|Mult0|auto_generated|op_1~17\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\top0|Mult0|auto_generated|op_2~16_combout\) # (!\top0|Mult0|auto_generated|op_1~15\))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- (\top0|Mult0|auto_generated|op_2~16_combout\ & !\top0|Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \top0|Mult0|auto_generated|op_2~16_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~15\,
	combout => \top0|Mult0|auto_generated|op_1~16_combout\,
	cout => \top0|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X70_Y42_N24
\top0|Mult0|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~18_combout\ = (\top0|Mult0|auto_generated|op_2~18_combout\ & ((\top0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\top0|Mult0|auto_generated|op_1~17\ & VCC)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- (!\top0|Mult0|auto_generated|op_1~17\)))) # (!\top0|Mult0|auto_generated|op_2~18_combout\ & ((\top0|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\top0|Mult0|auto_generated|op_1~17\)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- ((\top0|Mult0|auto_generated|op_1~17\) # (GND)))))
-- \top0|Mult0|auto_generated|op_1~19\ = CARRY((\top0|Mult0|auto_generated|op_2~18_combout\ & (!\top0|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\top0|Mult0|auto_generated|op_1~17\)) # (!\top0|Mult0|auto_generated|op_2~18_combout\ & 
-- ((!\top0|Mult0|auto_generated|op_1~17\) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_2~18_combout\,
	datab => \top0|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~17\,
	combout => \top0|Mult0|auto_generated|op_1~18_combout\,
	cout => \top0|Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X70_Y42_N26
\top0|Mult0|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~20_combout\ = ((\top0|Mult0|auto_generated|op_2~20_combout\ $ (\top0|Mult0|auto_generated|mac_out2~DATAOUT28\ $ (!\top0|Mult0|auto_generated|op_1~19\)))) # (GND)
-- \top0|Mult0|auto_generated|op_1~21\ = CARRY((\top0|Mult0|auto_generated|op_2~20_combout\ & ((\top0|Mult0|auto_generated|mac_out2~DATAOUT28\) # (!\top0|Mult0|auto_generated|op_1~19\))) # (!\top0|Mult0|auto_generated|op_2~20_combout\ & 
-- (\top0|Mult0|auto_generated|mac_out2~DATAOUT28\ & !\top0|Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_2~20_combout\,
	datab => \top0|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~19\,
	combout => \top0|Mult0|auto_generated|op_1~20_combout\,
	cout => \top0|Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X70_Y42_N28
\top0|Mult0|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~22_combout\ = (\top0|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\top0|Mult0|auto_generated|op_2~22_combout\ & (\top0|Mult0|auto_generated|op_1~21\ & VCC)) # (!\top0|Mult0|auto_generated|op_2~22_combout\ & 
-- (!\top0|Mult0|auto_generated|op_1~21\)))) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\top0|Mult0|auto_generated|op_2~22_combout\ & (!\top0|Mult0|auto_generated|op_1~21\)) # (!\top0|Mult0|auto_generated|op_2~22_combout\ & 
-- ((\top0|Mult0|auto_generated|op_1~21\) # (GND)))))
-- \top0|Mult0|auto_generated|op_1~23\ = CARRY((\top0|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\top0|Mult0|auto_generated|op_2~22_combout\ & !\top0|Mult0|auto_generated|op_1~21\)) # (!\top0|Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- ((!\top0|Mult0|auto_generated|op_1~21\) # (!\top0|Mult0|auto_generated|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \top0|Mult0|auto_generated|op_2~22_combout\,
	datad => VCC,
	cin => \top0|Mult0|auto_generated|op_1~21\,
	combout => \top0|Mult0|auto_generated|op_1~22_combout\,
	cout => \top0|Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X70_Y42_N30
\top0|Mult0|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|Mult0|auto_generated|op_1~24_combout\ = \top0|Mult0|auto_generated|op_2~24_combout\ $ (\top0|Mult0|auto_generated|op_1~23\ $ (!\top0|Mult0|auto_generated|mac_out2~DATAOUT30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_2~24_combout\,
	datad => \top0|Mult0|auto_generated|mac_out2~DATAOUT30\,
	cin => \top0|Mult0|auto_generated|op_1~23\,
	combout => \top0|Mult0|auto_generated|op_1~24_combout\);

-- Location: LCCOMB_X72_Y42_N6
\top0|random_r[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[18]~68_combout\ = (\top0|Mult0|auto_generated|op_1~0_combout\ & (\top0|random_r[17]~67\ $ (GND))) # (!\top0|Mult0|auto_generated|op_1~0_combout\ & (!\top0|random_r[17]~67\ & VCC))
-- \top0|random_r[18]~69\ = CARRY((\top0|Mult0|auto_generated|op_1~0_combout\ & !\top0|random_r[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \top0|random_r[17]~67\,
	combout => \top0|random_r[18]~68_combout\,
	cout => \top0|random_r[18]~69\);

-- Location: LCCOMB_X72_Y42_N8
\top0|random_r[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[19]~70_combout\ = (\top0|Mult0|auto_generated|op_1~2_combout\ & (!\top0|random_r[18]~69\)) # (!\top0|Mult0|auto_generated|op_1~2_combout\ & ((\top0|random_r[18]~69\) # (GND)))
-- \top0|random_r[19]~71\ = CARRY((!\top0|random_r[18]~69\) # (!\top0|Mult0|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \top0|random_r[18]~69\,
	combout => \top0|random_r[19]~70_combout\,
	cout => \top0|random_r[19]~71\);

-- Location: LCCOMB_X72_Y42_N10
\top0|random_r[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[20]~72_combout\ = (\top0|Mult0|auto_generated|op_1~4_combout\ & (\top0|random_r[19]~71\ $ (GND))) # (!\top0|Mult0|auto_generated|op_1~4_combout\ & (!\top0|random_r[19]~71\ & VCC))
-- \top0|random_r[20]~73\ = CARRY((\top0|Mult0|auto_generated|op_1~4_combout\ & !\top0|random_r[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \top0|random_r[19]~71\,
	combout => \top0|random_r[20]~72_combout\,
	cout => \top0|random_r[20]~73\);

-- Location: LCCOMB_X72_Y42_N12
\top0|random_r[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[21]~74_combout\ = (\top0|Mult0|auto_generated|op_1~6_combout\ & (!\top0|random_r[20]~73\)) # (!\top0|Mult0|auto_generated|op_1~6_combout\ & ((\top0|random_r[20]~73\) # (GND)))
-- \top0|random_r[21]~75\ = CARRY((!\top0|random_r[20]~73\) # (!\top0|Mult0|auto_generated|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \top0|random_r[20]~73\,
	combout => \top0|random_r[21]~74_combout\,
	cout => \top0|random_r[21]~75\);

-- Location: LCCOMB_X72_Y42_N14
\top0|random_r[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[22]~76_combout\ = (\top0|Mult0|auto_generated|op_1~8_combout\ & (\top0|random_r[21]~75\ $ (GND))) # (!\top0|Mult0|auto_generated|op_1~8_combout\ & (!\top0|random_r[21]~75\ & VCC))
-- \top0|random_r[22]~77\ = CARRY((\top0|Mult0|auto_generated|op_1~8_combout\ & !\top0|random_r[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \top0|random_r[21]~75\,
	combout => \top0|random_r[22]~76_combout\,
	cout => \top0|random_r[22]~77\);

-- Location: LCCOMB_X72_Y42_N16
\top0|random_r[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[23]~78_combout\ = (\top0|Mult0|auto_generated|op_1~10_combout\ & (!\top0|random_r[22]~77\)) # (!\top0|Mult0|auto_generated|op_1~10_combout\ & ((\top0|random_r[22]~77\) # (GND)))
-- \top0|random_r[23]~79\ = CARRY((!\top0|random_r[22]~77\) # (!\top0|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \top0|random_r[22]~77\,
	combout => \top0|random_r[23]~78_combout\,
	cout => \top0|random_r[23]~79\);

-- Location: LCCOMB_X72_Y42_N18
\top0|random_r[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[24]~80_combout\ = (\top0|Mult0|auto_generated|op_1~12_combout\ & (\top0|random_r[23]~79\ $ (GND))) # (!\top0|Mult0|auto_generated|op_1~12_combout\ & (!\top0|random_r[23]~79\ & VCC))
-- \top0|random_r[24]~81\ = CARRY((\top0|Mult0|auto_generated|op_1~12_combout\ & !\top0|random_r[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \top0|random_r[23]~79\,
	combout => \top0|random_r[24]~80_combout\,
	cout => \top0|random_r[24]~81\);

-- Location: LCCOMB_X72_Y42_N20
\top0|random_r[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[25]~82_combout\ = (\top0|Mult0|auto_generated|op_1~14_combout\ & (!\top0|random_r[24]~81\)) # (!\top0|Mult0|auto_generated|op_1~14_combout\ & ((\top0|random_r[24]~81\) # (GND)))
-- \top0|random_r[25]~83\ = CARRY((!\top0|random_r[24]~81\) # (!\top0|Mult0|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \top0|random_r[24]~81\,
	combout => \top0|random_r[25]~82_combout\,
	cout => \top0|random_r[25]~83\);

-- Location: LCCOMB_X72_Y42_N22
\top0|random_r[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[26]~84_combout\ = (\top0|Mult0|auto_generated|op_1~16_combout\ & (\top0|random_r[25]~83\ $ (GND))) # (!\top0|Mult0|auto_generated|op_1~16_combout\ & (!\top0|random_r[25]~83\ & VCC))
-- \top0|random_r[26]~85\ = CARRY((\top0|Mult0|auto_generated|op_1~16_combout\ & !\top0|random_r[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \top0|random_r[25]~83\,
	combout => \top0|random_r[26]~84_combout\,
	cout => \top0|random_r[26]~85\);

-- Location: LCCOMB_X72_Y42_N24
\top0|random_r[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[27]~86_combout\ = (\top0|Mult0|auto_generated|op_1~18_combout\ & (!\top0|random_r[26]~85\)) # (!\top0|Mult0|auto_generated|op_1~18_combout\ & ((\top0|random_r[26]~85\) # (GND)))
-- \top0|random_r[27]~87\ = CARRY((!\top0|random_r[26]~85\) # (!\top0|Mult0|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \top0|random_r[26]~85\,
	combout => \top0|random_r[27]~86_combout\,
	cout => \top0|random_r[27]~87\);

-- Location: LCCOMB_X72_Y42_N26
\top0|random_r[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[28]~88_combout\ = (\top0|Mult0|auto_generated|op_1~20_combout\ & (\top0|random_r[27]~87\ $ (GND))) # (!\top0|Mult0|auto_generated|op_1~20_combout\ & (!\top0|random_r[27]~87\ & VCC))
-- \top0|random_r[28]~89\ = CARRY((\top0|Mult0|auto_generated|op_1~20_combout\ & !\top0|random_r[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \top0|random_r[27]~87\,
	combout => \top0|random_r[28]~88_combout\,
	cout => \top0|random_r[28]~89\);

-- Location: LCCOMB_X72_Y42_N28
\top0|random_r[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[29]~90_combout\ = (\top0|Mult0|auto_generated|op_1~22_combout\ & (!\top0|random_r[28]~89\)) # (!\top0|Mult0|auto_generated|op_1~22_combout\ & ((\top0|random_r[28]~89\) # (GND)))
-- \top0|random_r[29]~91\ = CARRY((!\top0|random_r[28]~89\) # (!\top0|Mult0|auto_generated|op_1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|Mult0|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \top0|random_r[28]~89\,
	combout => \top0|random_r[29]~90_combout\,
	cout => \top0|random_r[29]~91\);

-- Location: LCCOMB_X72_Y42_N30
\top0|random_r[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|random_r[30]~92_combout\ = \top0|Mult0|auto_generated|op_1~24_combout\ $ (!\top0|random_r[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|Mult0|auto_generated|op_1~24_combout\,
	cin => \top0|random_r[29]~91\,
	combout => \top0|random_r[30]~92_combout\);

-- Location: LCCOMB_X73_Y42_N4
\top0|time_r[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[18]~64_combout\ = (\top0|time_r\(18) & (!\top0|time_r[17]~63\)) # (!\top0|time_r\(18) & ((\top0|time_r[17]~63\) # (GND)))
-- \top0|time_r[18]~65\ = CARRY((!\top0|time_r[17]~63\) # (!\top0|time_r\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(18),
	datad => VCC,
	cin => \top0|time_r[17]~63\,
	combout => \top0|time_r[18]~64_combout\,
	cout => \top0|time_r[18]~65\);

-- Location: FF_X73_Y42_N5
\top0|time_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[18]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(18));

-- Location: LCCOMB_X73_Y42_N6
\top0|time_r[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[19]~66_combout\ = (\top0|time_r\(19) & (\top0|time_r[18]~65\ $ (GND))) # (!\top0|time_r\(19) & (!\top0|time_r[18]~65\ & VCC))
-- \top0|time_r[19]~67\ = CARRY((\top0|time_r\(19) & !\top0|time_r[18]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(19),
	datad => VCC,
	cin => \top0|time_r[18]~65\,
	combout => \top0|time_r[19]~66_combout\,
	cout => \top0|time_r[19]~67\);

-- Location: FF_X73_Y42_N7
\top0|time_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[19]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(19));

-- Location: LCCOMB_X73_Y42_N8
\top0|time_r[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[20]~68_combout\ = (\top0|time_r\(20) & (!\top0|time_r[19]~67\)) # (!\top0|time_r\(20) & ((\top0|time_r[19]~67\) # (GND)))
-- \top0|time_r[20]~69\ = CARRY((!\top0|time_r[19]~67\) # (!\top0|time_r\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(20),
	datad => VCC,
	cin => \top0|time_r[19]~67\,
	combout => \top0|time_r[20]~68_combout\,
	cout => \top0|time_r[20]~69\);

-- Location: FF_X73_Y42_N9
\top0|time_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[20]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(20));

-- Location: LCCOMB_X73_Y42_N10
\top0|time_r[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[21]~70_combout\ = (\top0|time_r\(21) & (\top0|time_r[20]~69\ $ (GND))) # (!\top0|time_r\(21) & (!\top0|time_r[20]~69\ & VCC))
-- \top0|time_r[21]~71\ = CARRY((\top0|time_r\(21) & !\top0|time_r[20]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(21),
	datad => VCC,
	cin => \top0|time_r[20]~69\,
	combout => \top0|time_r[21]~70_combout\,
	cout => \top0|time_r[21]~71\);

-- Location: FF_X73_Y42_N11
\top0|time_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[21]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(21));

-- Location: LCCOMB_X73_Y42_N12
\top0|time_r[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[22]~72_combout\ = (\top0|time_r\(22) & (!\top0|time_r[21]~71\)) # (!\top0|time_r\(22) & ((\top0|time_r[21]~71\) # (GND)))
-- \top0|time_r[22]~73\ = CARRY((!\top0|time_r[21]~71\) # (!\top0|time_r\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(22),
	datad => VCC,
	cin => \top0|time_r[21]~71\,
	combout => \top0|time_r[22]~72_combout\,
	cout => \top0|time_r[22]~73\);

-- Location: FF_X73_Y42_N13
\top0|time_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[22]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(22));

-- Location: LCCOMB_X73_Y42_N14
\top0|time_r[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[23]~74_combout\ = (\top0|time_r\(23) & (\top0|time_r[22]~73\ $ (GND))) # (!\top0|time_r\(23) & (!\top0|time_r[22]~73\ & VCC))
-- \top0|time_r[23]~75\ = CARRY((\top0|time_r\(23) & !\top0|time_r[22]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(23),
	datad => VCC,
	cin => \top0|time_r[22]~73\,
	combout => \top0|time_r[23]~74_combout\,
	cout => \top0|time_r[23]~75\);

-- Location: FF_X73_Y42_N15
\top0|time_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[23]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(23));

-- Location: LCCOMB_X73_Y42_N16
\top0|time_r[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[24]~76_combout\ = (\top0|time_r\(24) & (!\top0|time_r[23]~75\)) # (!\top0|time_r\(24) & ((\top0|time_r[23]~75\) # (GND)))
-- \top0|time_r[24]~77\ = CARRY((!\top0|time_r[23]~75\) # (!\top0|time_r\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(24),
	datad => VCC,
	cin => \top0|time_r[23]~75\,
	combout => \top0|time_r[24]~76_combout\,
	cout => \top0|time_r[24]~77\);

-- Location: FF_X73_Y42_N17
\top0|time_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[24]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(24));

-- Location: LCCOMB_X73_Y42_N18
\top0|time_r[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[25]~78_combout\ = (\top0|time_r\(25) & (\top0|time_r[24]~77\ $ (GND))) # (!\top0|time_r\(25) & (!\top0|time_r[24]~77\ & VCC))
-- \top0|time_r[25]~79\ = CARRY((\top0|time_r\(25) & !\top0|time_r[24]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(25),
	datad => VCC,
	cin => \top0|time_r[24]~77\,
	combout => \top0|time_r[25]~78_combout\,
	cout => \top0|time_r[25]~79\);

-- Location: FF_X73_Y42_N19
\top0|time_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[25]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(25));

-- Location: LCCOMB_X73_Y42_N20
\top0|time_r[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[26]~80_combout\ = (\top0|time_r\(26) & (!\top0|time_r[25]~79\)) # (!\top0|time_r\(26) & ((\top0|time_r[25]~79\) # (GND)))
-- \top0|time_r[26]~81\ = CARRY((!\top0|time_r[25]~79\) # (!\top0|time_r\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(26),
	datad => VCC,
	cin => \top0|time_r[25]~79\,
	combout => \top0|time_r[26]~80_combout\,
	cout => \top0|time_r[26]~81\);

-- Location: FF_X73_Y42_N21
\top0|time_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[26]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(26));

-- Location: LCCOMB_X73_Y42_N22
\top0|time_r[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[27]~82_combout\ = (\top0|time_r\(27) & (\top0|time_r[26]~81\ $ (GND))) # (!\top0|time_r\(27) & (!\top0|time_r[26]~81\ & VCC))
-- \top0|time_r[27]~83\ = CARRY((\top0|time_r\(27) & !\top0|time_r[26]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(27),
	datad => VCC,
	cin => \top0|time_r[26]~81\,
	combout => \top0|time_r[27]~82_combout\,
	cout => \top0|time_r[27]~83\);

-- Location: FF_X73_Y42_N23
\top0|time_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[27]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(27));

-- Location: LCCOMB_X73_Y42_N24
\top0|time_r[28]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[28]~84_combout\ = (\top0|time_r\(28) & (!\top0|time_r[27]~83\)) # (!\top0|time_r\(28) & ((\top0|time_r[27]~83\) # (GND)))
-- \top0|time_r[28]~85\ = CARRY((!\top0|time_r[27]~83\) # (!\top0|time_r\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top0|time_r\(28),
	datad => VCC,
	cin => \top0|time_r[27]~83\,
	combout => \top0|time_r[28]~84_combout\,
	cout => \top0|time_r[28]~85\);

-- Location: FF_X73_Y42_N25
\top0|time_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[28]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(28));

-- Location: LCCOMB_X73_Y42_N26
\top0|time_r[29]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[29]~86_combout\ = (\top0|time_r\(29) & (\top0|time_r[28]~85\ $ (GND))) # (!\top0|time_r\(29) & (!\top0|time_r[28]~85\ & VCC))
-- \top0|time_r[29]~87\ = CARRY((\top0|time_r\(29) & !\top0|time_r[28]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top0|time_r\(29),
	datad => VCC,
	cin => \top0|time_r[28]~85\,
	combout => \top0|time_r[29]~86_combout\,
	cout => \top0|time_r[29]~87\);

-- Location: FF_X73_Y42_N27
\top0|time_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[29]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(29));

-- Location: LCCOMB_X73_Y42_N28
\top0|time_r[30]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \top0|time_r[30]~88_combout\ = \top0|time_r[29]~87\ $ (\top0|time_r\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \top0|time_r\(30),
	cin => \top0|time_r[29]~87\,
	combout => \top0|time_r[30]~88_combout\);

-- Location: FF_X73_Y42_N29
\top0|time_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|time_r[30]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|time_r\(30));

-- Location: FF_X72_Y42_N31
\top0|random_r[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[30]~92_combout\,
	asdata => \top0|time_r\(30),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(30));

-- Location: FF_X72_Y42_N29
\top0|random_r[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[29]~90_combout\,
	asdata => \top0|time_r\(29),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(29));

-- Location: FF_X72_Y42_N27
\top0|random_r[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[28]~88_combout\,
	asdata => \top0|time_r\(28),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(28));

-- Location: FF_X72_Y42_N25
\top0|random_r[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[27]~86_combout\,
	asdata => \top0|time_r\(27),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(27));

-- Location: FF_X72_Y42_N23
\top0|random_r[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[26]~84_combout\,
	asdata => \top0|time_r\(26),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(26));

-- Location: FF_X72_Y42_N21
\top0|random_r[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[25]~82_combout\,
	asdata => \top0|time_r\(25),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(25));

-- Location: FF_X72_Y42_N19
\top0|random_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[24]~80_combout\,
	asdata => \top0|time_r\(24),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(24));

-- Location: FF_X72_Y42_N17
\top0|random_r[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[23]~78_combout\,
	asdata => \top0|time_r\(23),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(23));

-- Location: FF_X72_Y42_N15
\top0|random_r[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[22]~76_combout\,
	asdata => \top0|time_r\(22),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(22));

-- Location: FF_X72_Y42_N13
\top0|random_r[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[21]~74_combout\,
	asdata => \top0|time_r\(21),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(21));

-- Location: FF_X72_Y42_N11
\top0|random_r[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[20]~72_combout\,
	asdata => \top0|time_r\(20),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(20));

-- Location: FF_X72_Y42_N7
\top0|random_r[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[18]~68_combout\,
	asdata => \top0|time_r\(18),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(18));

-- Location: FF_X72_Y42_N9
\top0|random_r[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \top0|random_r[19]~70_combout\,
	asdata => \top0|time_r\(19),
	sload => \deb0|neg_r~q\,
	ena => \top0|random_r[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top0|random_r\(19));

-- Location: LCCOMB_X107_Y50_N12
\seven_dec0|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|WideOr6~0_combout\ = (\top0|random_r\(17) & (\top0|random_r\(19) & (\top0|random_r\(18) $ (\top0|random_r\(16))))) # (!\top0|random_r\(17) & (!\top0|random_r\(19) & (\top0|random_r\(18) $ (\top0|random_r\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	datad => \top0|random_r\(16),
	combout => \seven_dec0|WideOr6~0_combout\);

-- Location: LCCOMB_X107_Y50_N18
\seven_dec0|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|WideOr5~0_combout\ = (\top0|random_r\(18) & ((\top0|random_r\(17) & (\top0|random_r\(19) $ (!\top0|random_r\(16)))) # (!\top0|random_r\(17) & (!\top0|random_r\(19) & \top0|random_r\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	datad => \top0|random_r\(16),
	combout => \seven_dec0|WideOr5~0_combout\);

-- Location: LCCOMB_X107_Y50_N0
\seven_dec0|o_seven_one[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|o_seven_one[2]~0_combout\ = (!\top0|random_r\(16) & ((\top0|random_r\(17) & (!\top0|random_r\(19) & !\top0|random_r\(18))) # (!\top0|random_r\(17) & (\top0|random_r\(19) & \top0|random_r\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	datad => \top0|random_r\(16),
	combout => \seven_dec0|o_seven_one[2]~0_combout\);

-- Location: LCCOMB_X107_Y50_N6
\seven_dec0|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|WideOr4~0_combout\ = (\top0|random_r\(17) & ((\top0|random_r\(19) & (\top0|random_r\(18) $ (\top0|random_r\(16)))) # (!\top0|random_r\(19) & (\top0|random_r\(18) & \top0|random_r\(16))))) # (!\top0|random_r\(17) & (!\top0|random_r\(19) & 
-- (\top0|random_r\(18) $ (\top0|random_r\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	datad => \top0|random_r\(16),
	combout => \seven_dec0|WideOr4~0_combout\);

-- Location: LCCOMB_X107_Y50_N4
\seven_dec0|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|WideOr3~0_combout\ = (\top0|random_r\(16)) # ((\top0|random_r\(18) & (\top0|random_r\(17) $ (!\top0|random_r\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	datad => \top0|random_r\(16),
	combout => \seven_dec0|WideOr3~0_combout\);

-- Location: LCCOMB_X107_Y50_N2
\seven_dec0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|WideOr2~0_combout\ = (\top0|random_r\(17) & (!\top0|random_r\(18) & ((\top0|random_r\(16)) # (!\top0|random_r\(19))))) # (!\top0|random_r\(17) & ((\top0|random_r\(19) & (\top0|random_r\(18))) # (!\top0|random_r\(19) & (!\top0|random_r\(18) & 
-- \top0|random_r\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	datad => \top0|random_r\(16),
	combout => \seven_dec0|WideOr2~0_combout\);

-- Location: LCCOMB_X107_Y50_N24
\seven_dec0|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|WideOr1~0_combout\ = (\top0|random_r\(18) & (((\top0|random_r\(19)) # (!\top0|random_r\(16))) # (!\top0|random_r\(17)))) # (!\top0|random_r\(18) & (\top0|random_r\(17) $ ((\top0|random_r\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	datad => \top0|random_r\(16),
	combout => \seven_dec0|WideOr1~0_combout\);

-- Location: LCCOMB_X107_Y50_N30
\seven_dec0|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seven_dec0|WideOr0~0_combout\ = ((!\top0|random_r\(17) & !\top0|random_r\(18))) # (!\top0|random_r\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top0|random_r\(17),
	datab => \top0|random_r\(19),
	datac => \top0|random_r\(18),
	combout => \seven_dec0|WideOr0~0_combout\);

-- Location: IOIBUF_X58_Y0_N22
\CLOCK2_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK2_50,
	o => \CLOCK2_50~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\CLOCK3_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK3_50,
	o => \CLOCK3_50~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\ENETCLK_25~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENETCLK_25,
	o => \ENETCLK_25~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\SMA_CLKIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SMA_CLKIN,
	o => \SMA_CLKIN~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\UART_RTS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RTS,
	o => \UART_RTS~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\UART_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\SD_WP_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_WP_N,
	o => \SD_WP_N~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\ENET0_INT_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_INT_N,
	o => \ENET0_INT_N~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\ENET0_MDIO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_MDIO,
	o => \ENET0_MDIO~input_o\);

-- Location: IOIBUF_X56_Y73_N1
\ENET0_RX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_CLK,
	o => \ENET0_RX_CLK~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\ENET0_RX_COL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_COL,
	o => \ENET0_RX_COL~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\ENET0_RX_CRS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_CRS,
	o => \ENET0_RX_CRS~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\ENET0_RX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(0),
	o => \ENET0_RX_DATA[0]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\ENET0_RX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(1),
	o => \ENET0_RX_DATA[1]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\ENET0_RX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(2),
	o => \ENET0_RX_DATA[2]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\ENET0_RX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(3),
	o => \ENET0_RX_DATA[3]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\ENET0_RX_DV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DV,
	o => \ENET0_RX_DV~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\ENET0_RX_ER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_ER,
	o => \ENET0_RX_ER~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\ENET0_TX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_TX_CLK,
	o => \ENET0_TX_CLK~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\ENET0_LINK100~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_LINK100,
	o => \ENET0_LINK100~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\ENET1_INT_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_INT_N,
	o => \ENET1_INT_N~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\ENET1_MDIO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_MDIO,
	o => \ENET1_MDIO~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\ENET1_RX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_CLK,
	o => \ENET1_RX_CLK~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\ENET1_RX_COL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_COL,
	o => \ENET1_RX_COL~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\ENET1_RX_CRS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_CRS,
	o => \ENET1_RX_CRS~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\ENET1_RX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(0),
	o => \ENET1_RX_DATA[0]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\ENET1_RX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(1),
	o => \ENET1_RX_DATA[1]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\ENET1_RX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(2),
	o => \ENET1_RX_DATA[2]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\ENET1_RX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(3),
	o => \ENET1_RX_DATA[3]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\ENET1_RX_DV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DV,
	o => \ENET1_RX_DV~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\ENET1_RX_ER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_ER,
	o => \ENET1_RX_ER~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\ENET1_TX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_TX_CLK,
	o => \ENET1_TX_CLK~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\ENET1_LINK100~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_LINK100,
	o => \ENET1_LINK100~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\TD_CLK27~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_CLK27,
	o => \TD_CLK27~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\TD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(0),
	o => \TD_DATA[0]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\TD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(1),
	o => \TD_DATA[1]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\TD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(2),
	o => \TD_DATA[2]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\TD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(3),
	o => \TD_DATA[3]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\TD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(4),
	o => \TD_DATA[4]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\TD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(5),
	o => \TD_DATA[5]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\TD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(6),
	o => \TD_DATA[6]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\TD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(7),
	o => \TD_DATA[7]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\TD_HS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_HS,
	o => \TD_HS~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\TD_VS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_VS,
	o => \TD_VS~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\OTG_INT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OTG_INT,
	o => \OTG_INT~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\IRDA_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRDA_RXD,
	o => \IRDA_RXD~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\FL_RY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_RY,
	o => \FL_RY~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\HSMC_CLKIN_P1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_P1,
	ibar => \HSMC_CLKIN_P1(n)~padout\,
	o => \HSMC_CLKIN_P1~input_o\);

-- Location: IOIBUF_X115_Y37_N15
\HSMC_CLKIN_P2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_P2,
	ibar => \HSMC_CLKIN_P2(n)~padout\,
	o => \HSMC_CLKIN_P2~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\HSMC_CLKIN0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN0,
	o => \HSMC_CLKIN0~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\HSMC_RX_D_P[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(0),
	ibar => \HSMC_RX_D_P[0](n)~padout\,
	o => \HSMC_RX_D_P[0]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\HSMC_RX_D_P[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(1),
	ibar => \HSMC_RX_D_P[1](n)~padout\,
	o => \HSMC_RX_D_P[1]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\HSMC_RX_D_P[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(2),
	ibar => \HSMC_RX_D_P[2](n)~padout\,
	o => \HSMC_RX_D_P[2]~input_o\);

-- Location: IOIBUF_X115_Y66_N15
\HSMC_RX_D_P[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(3),
	ibar => \HSMC_RX_D_P[3](n)~padout\,
	o => \HSMC_RX_D_P[3]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\HSMC_RX_D_P[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(4),
	ibar => \HSMC_RX_D_P[4](n)~padout\,
	o => \HSMC_RX_D_P[4]~input_o\);

-- Location: IOIBUF_X115_Y55_N15
\HSMC_RX_D_P[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(5),
	ibar => \HSMC_RX_D_P[5](n)~padout\,
	o => \HSMC_RX_D_P[5]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\HSMC_RX_D_P[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(6),
	ibar => \HSMC_RX_D_P[6](n)~padout\,
	o => \HSMC_RX_D_P[6]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\HSMC_RX_D_P[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(7),
	ibar => \HSMC_RX_D_P[7](n)~padout\,
	o => \HSMC_RX_D_P[7]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\HSMC_RX_D_P[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(8),
	ibar => \HSMC_RX_D_P[8](n)~padout\,
	o => \HSMC_RX_D_P[8]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\HSMC_RX_D_P[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(9),
	ibar => \HSMC_RX_D_P[9](n)~padout\,
	o => \HSMC_RX_D_P[9]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\HSMC_RX_D_P[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(10),
	ibar => \HSMC_RX_D_P[10](n)~padout\,
	o => \HSMC_RX_D_P[10]~input_o\);

-- Location: IOIBUF_X115_Y62_N8
\HSMC_RX_D_P[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(11),
	ibar => \HSMC_RX_D_P[11](n)~padout\,
	o => \HSMC_RX_D_P[11]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\HSMC_RX_D_P[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(12),
	ibar => \HSMC_RX_D_P[12](n)~padout\,
	o => \HSMC_RX_D_P[12]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\HSMC_RX_D_P[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(13),
	ibar => \HSMC_RX_D_P[13](n)~padout\,
	o => \HSMC_RX_D_P[13]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\HSMC_RX_D_P[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(14),
	ibar => \HSMC_RX_D_P[14](n)~padout\,
	o => \HSMC_RX_D_P[14]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\HSMC_RX_D_P[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(15),
	ibar => \HSMC_RX_D_P[15](n)~padout\,
	o => \HSMC_RX_D_P[15]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\HSMC_RX_D_P[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(16),
	ibar => \HSMC_RX_D_P[16](n)~padout\,
	o => \HSMC_RX_D_P[16]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\PS2_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\PS2_DAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\PS2_CLK2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK2,
	o => \PS2_CLK2~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\PS2_DAT2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT2,
	o => \PS2_DAT2~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\SD_CMD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_CMD,
	o => \SD_CMD~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\SD_DAT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(0),
	o => \SD_DAT[0]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\SD_DAT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(1),
	o => \SD_DAT[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\SD_DAT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(2),
	o => \SD_DAT[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\SD_DAT[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(3),
	o => \SD_DAT[3]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\EEP_I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EEP_I2C_SDAT,
	o => \EEP_I2C_SDAT~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => I2C_SDAT,
	o => \I2C_SDAT~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\OTG_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(0),
	o => \OTG_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\OTG_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(1),
	o => \OTG_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\OTG_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(2),
	o => \OTG_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\OTG_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(3),
	o => \OTG_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\OTG_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(4),
	o => \OTG_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\OTG_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(5),
	o => \OTG_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\OTG_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(6),
	o => \OTG_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\OTG_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(7),
	o => \OTG_DATA[7]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\OTG_DATA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(8),
	o => \OTG_DATA[8]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\OTG_DATA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(9),
	o => \OTG_DATA[9]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\OTG_DATA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(10),
	o => \OTG_DATA[10]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\OTG_DATA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(11),
	o => \OTG_DATA[11]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\OTG_DATA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(12),
	o => \OTG_DATA[12]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\OTG_DATA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(13),
	o => \OTG_DATA[13]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\OTG_DATA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(14),
	o => \OTG_DATA[14]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\OTG_DATA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(15),
	o => \OTG_DATA[15]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\DRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\DRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\DRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\DRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\DRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\DRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\DRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\DRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\DRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\DRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\DRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\DRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\DRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\DRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\DRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\DRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\DRAM_DQ[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(16),
	o => \DRAM_DQ[16]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\DRAM_DQ[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(17),
	o => \DRAM_DQ[17]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\DRAM_DQ[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(18),
	o => \DRAM_DQ[18]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\DRAM_DQ[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(19),
	o => \DRAM_DQ[19]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\DRAM_DQ[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(20),
	o => \DRAM_DQ[20]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\DRAM_DQ[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(21),
	o => \DRAM_DQ[21]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\DRAM_DQ[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(22),
	o => \DRAM_DQ[22]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\DRAM_DQ[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(23),
	o => \DRAM_DQ[23]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\DRAM_DQ[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(24),
	o => \DRAM_DQ[24]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\DRAM_DQ[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(25),
	o => \DRAM_DQ[25]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\DRAM_DQ[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(26),
	o => \DRAM_DQ[26]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\DRAM_DQ[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(27),
	o => \DRAM_DQ[27]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\DRAM_DQ[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(28),
	o => \DRAM_DQ[28]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\DRAM_DQ[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(29),
	o => \DRAM_DQ[29]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\DRAM_DQ[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(30),
	o => \DRAM_DQ[30]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\DRAM_DQ[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(31),
	o => \DRAM_DQ[31]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\SRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\FL_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(0),
	o => \FL_DQ[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\FL_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(1),
	o => \FL_DQ[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\FL_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(2),
	o => \FL_DQ[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\FL_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(3),
	o => \FL_DQ[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\FL_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(4),
	o => \FL_DQ[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\FL_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(5),
	o => \FL_DQ[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\FL_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(6),
	o => \FL_DQ[6]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\FL_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(7),
	o => \FL_DQ[7]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

-- Location: IOIBUF_X115_Y8_N15
\HSMC_D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(0),
	o => \HSMC_D[0]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\HSMC_D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(1),
	o => \HSMC_D[1]~input_o\);

-- Location: IOIBUF_X115_Y12_N8
\HSMC_D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(2),
	o => \HSMC_D[2]~input_o\);

-- Location: IOIBUF_X115_Y8_N22
\HSMC_D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(3),
	o => \HSMC_D[3]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\EX_IO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(0),
	o => \EX_IO[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\EX_IO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(1),
	o => \EX_IO[1]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\EX_IO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(2),
	o => \EX_IO[2]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\EX_IO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(3),
	o => \EX_IO[3]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\EX_IO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(4),
	o => \EX_IO[4]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\EX_IO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(5),
	o => \EX_IO[5]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\EX_IO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(6),
	o => \EX_IO[6]~input_o\);

ww_SMA_CLKOUT <= \SMA_CLKOUT~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_UART_CTS <= \UART_CTS~output_o\;

ww_UART_TXD <= \UART_TXD~output_o\;

ww_SD_CLK <= \SD_CLK~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_VGA_BLANK_N <= \VGA_BLANK_N~output_o\;

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_SYNC_N <= \VGA_SYNC_N~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_AUD_DACDAT <= \AUD_DACDAT~output_o\;

ww_AUD_XCK <= \AUD_XCK~output_o\;

ww_EEP_I2C_SCLK <= \EEP_I2C_SCLK~output_o\;

ww_I2C_SCLK <= \I2C_SCLK~output_o\;

ww_ENET0_GTX_CLK <= \ENET0_GTX_CLK~output_o\;

ww_ENET0_MDC <= \ENET0_MDC~output_o\;

ww_ENET0_RST_N <= \ENET0_RST_N~output_o\;

ww_ENET0_TX_DATA(0) <= \ENET0_TX_DATA[0]~output_o\;

ww_ENET0_TX_DATA(1) <= \ENET0_TX_DATA[1]~output_o\;

ww_ENET0_TX_DATA(2) <= \ENET0_TX_DATA[2]~output_o\;

ww_ENET0_TX_DATA(3) <= \ENET0_TX_DATA[3]~output_o\;

ww_ENET0_TX_EN <= \ENET0_TX_EN~output_o\;

ww_ENET0_TX_ER <= \ENET0_TX_ER~output_o\;

ww_ENET1_GTX_CLK <= \ENET1_GTX_CLK~output_o\;

ww_ENET1_MDC <= \ENET1_MDC~output_o\;

ww_ENET1_RST_N <= \ENET1_RST_N~output_o\;

ww_ENET1_TX_DATA(0) <= \ENET1_TX_DATA[0]~output_o\;

ww_ENET1_TX_DATA(1) <= \ENET1_TX_DATA[1]~output_o\;

ww_ENET1_TX_DATA(2) <= \ENET1_TX_DATA[2]~output_o\;

ww_ENET1_TX_DATA(3) <= \ENET1_TX_DATA[3]~output_o\;

ww_ENET1_TX_EN <= \ENET1_TX_EN~output_o\;

ww_ENET1_TX_ER <= \ENET1_TX_ER~output_o\;

ww_TD_RESET_N <= \TD_RESET_N~output_o\;

ww_OTG_ADDR(0) <= \OTG_ADDR[0]~output_o\;

ww_OTG_ADDR(1) <= \OTG_ADDR[1]~output_o\;

ww_OTG_CS_N <= \OTG_CS_N~output_o\;

ww_OTG_WR_N <= \OTG_WR_N~output_o\;

ww_OTG_RD_N <= \OTG_RD_N~output_o\;

ww_OTG_RST_N <= \OTG_RST_N~output_o\;

ww_DRAM_ADDR(0) <= \DRAM_ADDR[0]~output_o\;

ww_DRAM_ADDR(1) <= \DRAM_ADDR[1]~output_o\;

ww_DRAM_ADDR(2) <= \DRAM_ADDR[2]~output_o\;

ww_DRAM_ADDR(3) <= \DRAM_ADDR[3]~output_o\;

ww_DRAM_ADDR(4) <= \DRAM_ADDR[4]~output_o\;

ww_DRAM_ADDR(5) <= \DRAM_ADDR[5]~output_o\;

ww_DRAM_ADDR(6) <= \DRAM_ADDR[6]~output_o\;

ww_DRAM_ADDR(7) <= \DRAM_ADDR[7]~output_o\;

ww_DRAM_ADDR(8) <= \DRAM_ADDR[8]~output_o\;

ww_DRAM_ADDR(9) <= \DRAM_ADDR[9]~output_o\;

ww_DRAM_ADDR(10) <= \DRAM_ADDR[10]~output_o\;

ww_DRAM_ADDR(11) <= \DRAM_ADDR[11]~output_o\;

ww_DRAM_ADDR(12) <= \DRAM_ADDR[12]~output_o\;

ww_DRAM_BA(0) <= \DRAM_BA[0]~output_o\;

ww_DRAM_BA(1) <= \DRAM_BA[1]~output_o\;

ww_DRAM_CAS_N <= \DRAM_CAS_N~output_o\;

ww_DRAM_CKE <= \DRAM_CKE~output_o\;

ww_DRAM_CLK <= \DRAM_CLK~output_o\;

ww_DRAM_CS_N <= \DRAM_CS_N~output_o\;

ww_DRAM_DQM(0) <= \DRAM_DQM[0]~output_o\;

ww_DRAM_DQM(1) <= \DRAM_DQM[1]~output_o\;

ww_DRAM_DQM(2) <= \DRAM_DQM[2]~output_o\;

ww_DRAM_DQM(3) <= \DRAM_DQM[3]~output_o\;

ww_DRAM_RAS_N <= \DRAM_RAS_N~output_o\;

ww_DRAM_WE_N <= \DRAM_WE_N~output_o\;

ww_SRAM_ADDR(0) <= \SRAM_ADDR[0]~output_o\;

ww_SRAM_ADDR(1) <= \SRAM_ADDR[1]~output_o\;

ww_SRAM_ADDR(2) <= \SRAM_ADDR[2]~output_o\;

ww_SRAM_ADDR(3) <= \SRAM_ADDR[3]~output_o\;

ww_SRAM_ADDR(4) <= \SRAM_ADDR[4]~output_o\;

ww_SRAM_ADDR(5) <= \SRAM_ADDR[5]~output_o\;

ww_SRAM_ADDR(6) <= \SRAM_ADDR[6]~output_o\;

ww_SRAM_ADDR(7) <= \SRAM_ADDR[7]~output_o\;

ww_SRAM_ADDR(8) <= \SRAM_ADDR[8]~output_o\;

ww_SRAM_ADDR(9) <= \SRAM_ADDR[9]~output_o\;

ww_SRAM_ADDR(10) <= \SRAM_ADDR[10]~output_o\;

ww_SRAM_ADDR(11) <= \SRAM_ADDR[11]~output_o\;

ww_SRAM_ADDR(12) <= \SRAM_ADDR[12]~output_o\;

ww_SRAM_ADDR(13) <= \SRAM_ADDR[13]~output_o\;

ww_SRAM_ADDR(14) <= \SRAM_ADDR[14]~output_o\;

ww_SRAM_ADDR(15) <= \SRAM_ADDR[15]~output_o\;

ww_SRAM_ADDR(16) <= \SRAM_ADDR[16]~output_o\;

ww_SRAM_ADDR(17) <= \SRAM_ADDR[17]~output_o\;

ww_SRAM_ADDR(18) <= \SRAM_ADDR[18]~output_o\;

ww_SRAM_ADDR(19) <= \SRAM_ADDR[19]~output_o\;

ww_SRAM_CE_N <= \SRAM_CE_N~output_o\;

ww_SRAM_LB_N <= \SRAM_LB_N~output_o\;

ww_SRAM_OE_N <= \SRAM_OE_N~output_o\;

ww_SRAM_UB_N <= \SRAM_UB_N~output_o\;

ww_SRAM_WE_N <= \SRAM_WE_N~output_o\;

ww_FL_ADDR(0) <= \FL_ADDR[0]~output_o\;

ww_FL_ADDR(1) <= \FL_ADDR[1]~output_o\;

ww_FL_ADDR(2) <= \FL_ADDR[2]~output_o\;

ww_FL_ADDR(3) <= \FL_ADDR[3]~output_o\;

ww_FL_ADDR(4) <= \FL_ADDR[4]~output_o\;

ww_FL_ADDR(5) <= \FL_ADDR[5]~output_o\;

ww_FL_ADDR(6) <= \FL_ADDR[6]~output_o\;

ww_FL_ADDR(7) <= \FL_ADDR[7]~output_o\;

ww_FL_ADDR(8) <= \FL_ADDR[8]~output_o\;

ww_FL_ADDR(9) <= \FL_ADDR[9]~output_o\;

ww_FL_ADDR(10) <= \FL_ADDR[10]~output_o\;

ww_FL_ADDR(11) <= \FL_ADDR[11]~output_o\;

ww_FL_ADDR(12) <= \FL_ADDR[12]~output_o\;

ww_FL_ADDR(13) <= \FL_ADDR[13]~output_o\;

ww_FL_ADDR(14) <= \FL_ADDR[14]~output_o\;

ww_FL_ADDR(15) <= \FL_ADDR[15]~output_o\;

ww_FL_ADDR(16) <= \FL_ADDR[16]~output_o\;

ww_FL_ADDR(17) <= \FL_ADDR[17]~output_o\;

ww_FL_ADDR(18) <= \FL_ADDR[18]~output_o\;

ww_FL_ADDR(19) <= \FL_ADDR[19]~output_o\;

ww_FL_ADDR(20) <= \FL_ADDR[20]~output_o\;

ww_FL_ADDR(21) <= \FL_ADDR[21]~output_o\;

ww_FL_ADDR(22) <= \FL_ADDR[22]~output_o\;

ww_FL_CE_N <= \FL_CE_N~output_o\;

ww_FL_OE_N <= \FL_OE_N~output_o\;

ww_FL_RST_N <= \FL_RST_N~output_o\;

ww_FL_WE_N <= \FL_WE_N~output_o\;

ww_FL_WP_N <= \FL_WP_N~output_o\;

ww_HSMC_CLKOUT_P1 <= \HSMC_CLKOUT_P1~output_o\;

ww_HSMC_CLKOUT_P2 <= \HSMC_CLKOUT_P2~output_o\;

ww_HSMC_CLKOUT0 <= \HSMC_CLKOUT0~output_o\;

ww_HSMC_TX_D_P(0) <= \HSMC_TX_D_P[0]~output_o\;

ww_HSMC_TX_D_P(1) <= \HSMC_TX_D_P[1]~output_o\;

ww_HSMC_TX_D_P(2) <= \HSMC_TX_D_P[2]~output_o\;

ww_HSMC_TX_D_P(3) <= \HSMC_TX_D_P[3]~output_o\;

ww_HSMC_TX_D_P(4) <= \HSMC_TX_D_P[4]~output_o\;

ww_HSMC_TX_D_P(5) <= \HSMC_TX_D_P[5]~output_o\;

ww_HSMC_TX_D_P(6) <= \HSMC_TX_D_P[6]~output_o\;

ww_HSMC_TX_D_P(7) <= \HSMC_TX_D_P[7]~output_o\;

ww_HSMC_TX_D_P(8) <= \HSMC_TX_D_P[8]~output_o\;

ww_HSMC_TX_D_P(9) <= \HSMC_TX_D_P[9]~output_o\;

ww_HSMC_TX_D_P(10) <= \HSMC_TX_D_P[10]~output_o\;

ww_HSMC_TX_D_P(11) <= \HSMC_TX_D_P[11]~output_o\;

ww_HSMC_TX_D_P(12) <= \HSMC_TX_D_P[12]~output_o\;

ww_HSMC_TX_D_P(13) <= \HSMC_TX_D_P[13]~output_o\;

ww_HSMC_TX_D_P(14) <= \HSMC_TX_D_P[14]~output_o\;

ww_HSMC_TX_D_P(15) <= \HSMC_TX_D_P[15]~output_o\;

ww_HSMC_TX_D_P(16) <= \HSMC_TX_D_P[16]~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

PS2_CLK <= \PS2_CLK~output_o\;

PS2_DAT <= \PS2_DAT~output_o\;

PS2_CLK2 <= \PS2_CLK2~output_o\;

PS2_DAT2 <= \PS2_DAT2~output_o\;

SD_CMD <= \SD_CMD~output_o\;

SD_DAT(0) <= \SD_DAT[0]~output_o\;

SD_DAT(1) <= \SD_DAT[1]~output_o\;

SD_DAT(2) <= \SD_DAT[2]~output_o\;

SD_DAT(3) <= \SD_DAT[3]~output_o\;

AUD_ADCLRCK <= \AUD_ADCLRCK~output_o\;

AUD_BCLK <= \AUD_BCLK~output_o\;

AUD_DACLRCK <= \AUD_DACLRCK~output_o\;

EEP_I2C_SDAT <= \EEP_I2C_SDAT~output_o\;

I2C_SDAT <= \I2C_SDAT~output_o\;

OTG_DATA(0) <= \OTG_DATA[0]~output_o\;

OTG_DATA(1) <= \OTG_DATA[1]~output_o\;

OTG_DATA(2) <= \OTG_DATA[2]~output_o\;

OTG_DATA(3) <= \OTG_DATA[3]~output_o\;

OTG_DATA(4) <= \OTG_DATA[4]~output_o\;

OTG_DATA(5) <= \OTG_DATA[5]~output_o\;

OTG_DATA(6) <= \OTG_DATA[6]~output_o\;

OTG_DATA(7) <= \OTG_DATA[7]~output_o\;

OTG_DATA(8) <= \OTG_DATA[8]~output_o\;

OTG_DATA(9) <= \OTG_DATA[9]~output_o\;

OTG_DATA(10) <= \OTG_DATA[10]~output_o\;

OTG_DATA(11) <= \OTG_DATA[11]~output_o\;

OTG_DATA(12) <= \OTG_DATA[12]~output_o\;

OTG_DATA(13) <= \OTG_DATA[13]~output_o\;

OTG_DATA(14) <= \OTG_DATA[14]~output_o\;

OTG_DATA(15) <= \OTG_DATA[15]~output_o\;

DRAM_DQ(0) <= \DRAM_DQ[0]~output_o\;

DRAM_DQ(1) <= \DRAM_DQ[1]~output_o\;

DRAM_DQ(2) <= \DRAM_DQ[2]~output_o\;

DRAM_DQ(3) <= \DRAM_DQ[3]~output_o\;

DRAM_DQ(4) <= \DRAM_DQ[4]~output_o\;

DRAM_DQ(5) <= \DRAM_DQ[5]~output_o\;

DRAM_DQ(6) <= \DRAM_DQ[6]~output_o\;

DRAM_DQ(7) <= \DRAM_DQ[7]~output_o\;

DRAM_DQ(8) <= \DRAM_DQ[8]~output_o\;

DRAM_DQ(9) <= \DRAM_DQ[9]~output_o\;

DRAM_DQ(10) <= \DRAM_DQ[10]~output_o\;

DRAM_DQ(11) <= \DRAM_DQ[11]~output_o\;

DRAM_DQ(12) <= \DRAM_DQ[12]~output_o\;

DRAM_DQ(13) <= \DRAM_DQ[13]~output_o\;

DRAM_DQ(14) <= \DRAM_DQ[14]~output_o\;

DRAM_DQ(15) <= \DRAM_DQ[15]~output_o\;

DRAM_DQ(16) <= \DRAM_DQ[16]~output_o\;

DRAM_DQ(17) <= \DRAM_DQ[17]~output_o\;

DRAM_DQ(18) <= \DRAM_DQ[18]~output_o\;

DRAM_DQ(19) <= \DRAM_DQ[19]~output_o\;

DRAM_DQ(20) <= \DRAM_DQ[20]~output_o\;

DRAM_DQ(21) <= \DRAM_DQ[21]~output_o\;

DRAM_DQ(22) <= \DRAM_DQ[22]~output_o\;

DRAM_DQ(23) <= \DRAM_DQ[23]~output_o\;

DRAM_DQ(24) <= \DRAM_DQ[24]~output_o\;

DRAM_DQ(25) <= \DRAM_DQ[25]~output_o\;

DRAM_DQ(26) <= \DRAM_DQ[26]~output_o\;

DRAM_DQ(27) <= \DRAM_DQ[27]~output_o\;

DRAM_DQ(28) <= \DRAM_DQ[28]~output_o\;

DRAM_DQ(29) <= \DRAM_DQ[29]~output_o\;

DRAM_DQ(30) <= \DRAM_DQ[30]~output_o\;

DRAM_DQ(31) <= \DRAM_DQ[31]~output_o\;

SRAM_DQ(0) <= \SRAM_DQ[0]~output_o\;

SRAM_DQ(1) <= \SRAM_DQ[1]~output_o\;

SRAM_DQ(2) <= \SRAM_DQ[2]~output_o\;

SRAM_DQ(3) <= \SRAM_DQ[3]~output_o\;

SRAM_DQ(4) <= \SRAM_DQ[4]~output_o\;

SRAM_DQ(5) <= \SRAM_DQ[5]~output_o\;

SRAM_DQ(6) <= \SRAM_DQ[6]~output_o\;

SRAM_DQ(7) <= \SRAM_DQ[7]~output_o\;

SRAM_DQ(8) <= \SRAM_DQ[8]~output_o\;

SRAM_DQ(9) <= \SRAM_DQ[9]~output_o\;

SRAM_DQ(10) <= \SRAM_DQ[10]~output_o\;

SRAM_DQ(11) <= \SRAM_DQ[11]~output_o\;

SRAM_DQ(12) <= \SRAM_DQ[12]~output_o\;

SRAM_DQ(13) <= \SRAM_DQ[13]~output_o\;

SRAM_DQ(14) <= \SRAM_DQ[14]~output_o\;

SRAM_DQ(15) <= \SRAM_DQ[15]~output_o\;

FL_DQ(0) <= \FL_DQ[0]~output_o\;

FL_DQ(1) <= \FL_DQ[1]~output_o\;

FL_DQ(2) <= \FL_DQ[2]~output_o\;

FL_DQ(3) <= \FL_DQ[3]~output_o\;

FL_DQ(4) <= \FL_DQ[4]~output_o\;

FL_DQ(5) <= \FL_DQ[5]~output_o\;

FL_DQ(6) <= \FL_DQ[6]~output_o\;

FL_DQ(7) <= \FL_DQ[7]~output_o\;

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(9) <= \GPIO[9]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;

GPIO(12) <= \GPIO[12]~output_o\;

GPIO(13) <= \GPIO[13]~output_o\;

GPIO(14) <= \GPIO[14]~output_o\;

GPIO(15) <= \GPIO[15]~output_o\;

GPIO(16) <= \GPIO[16]~output_o\;

GPIO(17) <= \GPIO[17]~output_o\;

GPIO(18) <= \GPIO[18]~output_o\;

GPIO(19) <= \GPIO[19]~output_o\;

GPIO(20) <= \GPIO[20]~output_o\;

GPIO(21) <= \GPIO[21]~output_o\;

GPIO(22) <= \GPIO[22]~output_o\;

GPIO(23) <= \GPIO[23]~output_o\;

GPIO(24) <= \GPIO[24]~output_o\;

GPIO(25) <= \GPIO[25]~output_o\;

GPIO(26) <= \GPIO[26]~output_o\;

GPIO(27) <= \GPIO[27]~output_o\;

GPIO(28) <= \GPIO[28]~output_o\;

GPIO(29) <= \GPIO[29]~output_o\;

GPIO(30) <= \GPIO[30]~output_o\;

GPIO(31) <= \GPIO[31]~output_o\;

GPIO(32) <= \GPIO[32]~output_o\;

GPIO(33) <= \GPIO[33]~output_o\;

GPIO(34) <= \GPIO[34]~output_o\;

GPIO(35) <= \GPIO[35]~output_o\;

HSMC_D(0) <= \HSMC_D[0]~output_o\;

HSMC_D(1) <= \HSMC_D[1]~output_o\;

HSMC_D(2) <= \HSMC_D[2]~output_o\;

HSMC_D(3) <= \HSMC_D[3]~output_o\;

EX_IO(0) <= \EX_IO[0]~output_o\;

EX_IO(1) <= \EX_IO[1]~output_o\;

EX_IO(2) <= \EX_IO[2]~output_o\;

EX_IO(3) <= \EX_IO[3]~output_o\;

EX_IO(4) <= \EX_IO[4]~output_o\;

EX_IO(5) <= \EX_IO[5]~output_o\;

EX_IO(6) <= \EX_IO[6]~output_o\;
END structure;


