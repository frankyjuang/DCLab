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

-- DATE "04/20/2016 13:44:14"

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
-- CLOCK2_50	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SMA_CLKOUT	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_BLON	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_CTS	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_TXD	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CLK	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EEP_I2C_SCLK	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_GTX_CLK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_MDC	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RST_N	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[2]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_DATA[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_EN	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_ER	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_GTX_CLK	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_MDC	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RST_N	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[0]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_DATA[3]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_EN	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_ER	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_RESET_N	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_ADDR[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_ADDR[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_CS_N	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_WR_N	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_RD_N	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_RST_N	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[12]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[1]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CLK	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[3]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[0]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[3]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[4]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[5]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[6]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[7]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[8]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[10]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[11]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[12]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[15]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[16]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[17]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[18]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[19]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_CE_N	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_LB_N	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_OE_N	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_UB_N	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_WE_N	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[4]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[7]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[8]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[10]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[11]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[12]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[13]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[15]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[16]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[17]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[18]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[19]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[20]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[21]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_ADDR[22]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_CE_N	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_OE_N	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_RST_N	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_WE_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_WP_N	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN_P1	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN_P2	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT_P1	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT_P2	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT0	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[2]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[5]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[6]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[8]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[9]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[11]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[13]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[14]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_D_P[16]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[2]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[9]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[10]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[11]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[12]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[13]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[14]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_D_P[16]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_CLK	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DAT	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_CLK2	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_DAT2	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CMD	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT[2]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_DAT[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EEP_I2C_SDAT	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[1]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[4]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[5]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[7]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[9]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[10]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[11]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[12]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[13]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[14]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_DATA[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[16]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[18]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[19]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[20]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[21]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[23]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[25]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[26]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[27]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[28]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[29]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[30]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[1]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[3]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[5]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[6]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[8]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[9]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[10]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[11]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[13]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[14]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[15]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[2]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[4]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[5]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[6]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FL_DQ[7]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[2]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[7]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[8]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[9]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[10]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[12]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[13]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[14]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[15]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[16]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[17]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[18]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[19]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[20]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[21]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[22]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[23]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[24]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[25]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[26]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[27]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[28]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[29]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[30]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[31]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[32]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[33]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[34]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[35]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[0]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[5]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EX_IO[6]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \my_qsys|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \my_qsys|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \my_qsys|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~5_combout\ : std_logic;
SIGNAL \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~feeder_combout\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~4_combout\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~1_combout\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[0]~7_combout\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|waiting_r.WAITING_READ~feeder_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector3~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector1~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|state_r.S_GET_DATA~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector3~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector2~3_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector18~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa_start_r~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~9_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~10\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~13_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~14\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~15_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~16\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~17_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~18\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~19_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~20\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~21_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~22\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~23_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~24\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~25_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~26\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[8]~27_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Equal0~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Equal0~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector797~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector0~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector0~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector8~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~1\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector7~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~3\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~4_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector6~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~5\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~6_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector5~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~7\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~8_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector4~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~9\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~10_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector3~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~11\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~12_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector2~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~13\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~14_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector1~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~15\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Add1~16_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector0~3_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector799~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|state_r.MA~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|state_w.INC~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|state_r.INC~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|Selector0~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|state_w.RESET~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|finished_r~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|rsa256_core|finished_r~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector3~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector3~3_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector1~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|state_r.S_SEND_DATA~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector277~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector2~4_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|dec_r[151]~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector277~3_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|waiting_r.WAITING_READ~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector15~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|avm_address_w~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[6]~9_combout\ : std_logic;
SIGNAL \UART_RXD~input_o\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|din_s1~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~feeder_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~8_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~1\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~7_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~3\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~4_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~6_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~5\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~6_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~5_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~7\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~8_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~4_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~9\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~10_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~3_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~11\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~12_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~13\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~14_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~15\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~16_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[5]~8_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[4]~7_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[3]~6_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[2]~5_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[1]~4_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[0]~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|always4~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[9]~3_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[8]~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[7]~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxrx_in_processxx3~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|avm_address_r[3]~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[6]~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[7]~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|state_w~4_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|state_w~5_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[0]~19_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[0]~8\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[1]~9_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[1]~10\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[2]~11_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[2]~12\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[3]~13_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[3]~14\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[4]~15_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[4]~16\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[5]~17_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[5]~18\ : std_logic;
SIGNAL \my_qsys|new_component_0|bytes_counter_r[6]~21_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector277~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector277~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|waiting_r.WAITING_WRITE~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector2~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector2~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector0~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector0~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|state_r.S_GET_KEY~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector11~1_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector11~2_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector11~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector11~3_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|avm_read_r~q\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~1_combout\ : std_logic;
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~9_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~22\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~23_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~24\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[8]~25_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~10\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~11_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~12\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~13_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~14\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~15_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~16\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~17_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~18\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~19_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~20\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~21_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~3_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[8]~4_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[7]~5_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[6]~6_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[5]~7_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[4]~8_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[3]~9_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[2]~10_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|dec_r[0]~4_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|dec_r[0]~5_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector266~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|dec_r[151]~3_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector258~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector250~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector242~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector234~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector226~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector218~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector210~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector202~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector194~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector186~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector178~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector170~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector162~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector154~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector146~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector138~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector130~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector122~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector114~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector106~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector98~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector90~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector82~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector74~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector66~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector58~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector50~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector42~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector34~0_combout\ : std_logic;
SIGNAL \my_qsys|new_component_0|Selector26~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data[0]~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[1]~11_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0~combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~0_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~2_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~3_combout\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|txd~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \my_qsys|new_component_0|rsa256_core|MA_counter_r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_regs|readdata\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \my_qsys|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \my_qsys|new_component_0|rsa256_core|ME_counter_r\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \my_qsys|new_component_0|bytes_counter_r\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \my_qsys|new_component_0|dec_r\ : std_logic_vector(255 DOWNTO 0);
SIGNAL \my_qsys|new_component_0|avm_address_r\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\ : std_logic;
SIGNAL \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\ : std_logic;
SIGNAL \my_qsys|rst_controller_001|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \my_qsys|uart_0|the_unsaved_uart_0_tx|ALT_INV_txd~q\ : std_logic;

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

\my_qsys|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\my_qsys|altpll_0|sd1|wire_pll7_clk\(0) <= \my_qsys|altpll_0|sd1|pll7_CLK_bus\(0);
\my_qsys|altpll_0|sd1|wire_pll7_clk\(1) <= \my_qsys|altpll_0|sd1|pll7_CLK_bus\(1);
\my_qsys|altpll_0|sd1|wire_pll7_clk\(2) <= \my_qsys|altpll_0|sd1|pll7_CLK_bus\(2);
\my_qsys|altpll_0|sd1|wire_pll7_clk\(3) <= \my_qsys|altpll_0|sd1|pll7_CLK_bus\(3);
\my_qsys|altpll_0|sd1|wire_pll7_clk\(4) <= \my_qsys|altpll_0|sd1|pll7_CLK_bus\(4);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);

\my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \my_qsys|altpll_0|sd1|wire_pll7_clk\(0));
\my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\ <= NOT \my_qsys|new_component_0|rsa256_core|state_r.INC~q\;
\my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\ <= NOT \my_qsys|new_component_0|state_r.S_GET_KEY~q\;
\my_qsys|rst_controller_001|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;
\my_qsys|uart_0|the_unsaved_uart_0_tx|ALT_INV_txd~q\ <= NOT \my_qsys|uart_0|the_unsaved_uart_0_tx|txd~q\;

-- Location: IOOBUF_X0_Y62_N23
\SMA_CLKOUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SMA_CLKOUT);

-- Location: IOOBUF_X23_Y73_N16
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X5_Y0_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X29_Y73_N9
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X81_Y73_N2
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X115_Y18_N2
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X115_Y50_N9
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X115_Y55_N16
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X115_Y15_N9
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X83_Y0_N23
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(8));

-- Location: IOOBUF_X115_Y54_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X13_Y0_N23
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X115_Y25_N23
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X7_Y0_N23
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X96_Y0_N2
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X89_Y0_N2
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X54_Y0_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X16_Y0_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X38_Y0_N9
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X67_Y0_N9
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X79_Y73_N9
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(10));

-- Location: IOOBUF_X56_Y0_N2
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(11));

-- Location: IOOBUF_X115_Y6_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(12));

-- Location: IOOBUF_X111_Y0_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(13));

-- Location: IOOBUF_X115_Y69_N23
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(14));

-- Location: IOOBUF_X115_Y51_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(15));

-- Location: IOOBUF_X0_Y47_N23
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(16));

-- Location: IOOBUF_X9_Y0_N9
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(17));

-- Location: IOOBUF_X115_Y66_N16
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X58_Y73_N2
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X7_Y73_N16
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X23_Y0_N16
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X85_Y73_N23
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X0_Y25_N23
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X0_Y16_N16
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X0_Y23_N16
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X0_Y49_N2
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X0_Y67_N16
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X0_Y16_N23
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X85_Y0_N16
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X0_Y19_N9
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X109_Y73_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X0_Y61_N23
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X1_Y0_N23
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X115_Y30_N2
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X29_Y0_N16
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X0_Y47_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X38_Y73_N23
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X115_Y4_N23
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X0_Y35_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X115_Y19_N9
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X67_Y0_N23
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X0_Y48_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X7_Y0_N16
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X100_Y0_N2
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X13_Y73_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X11_Y73_N16
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X115_Y5_N16
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X60_Y73_N23
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X0_Y14_N9
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X115_Y57_N16
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X42_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X100_Y0_N16
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X0_Y18_N23
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X115_Y50_N2
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X0_Y29_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X3_Y0_N23
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X67_Y73_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X115_Y65_N23
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X102_Y0_N23
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X115_Y63_N2
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(0));

-- Location: IOOBUF_X65_Y0_N16
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(1));

-- Location: IOOBUF_X52_Y73_N16
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(2));

-- Location: IOOBUF_X115_Y46_N2
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(3));

-- Location: IOOBUF_X49_Y0_N2
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(4));

-- Location: IOOBUF_X16_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(5));

-- Location: IOOBUF_X94_Y73_N9
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(6));

-- Location: IOOBUF_X5_Y73_N2
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(0));

-- Location: IOOBUF_X0_Y47_N16
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(1));

-- Location: IOOBUF_X0_Y4_N9
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(2));

-- Location: IOOBUF_X115_Y36_N2
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(3));

-- Location: IOOBUF_X96_Y73_N16
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(4));

-- Location: IOOBUF_X115_Y49_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(5));

-- Location: IOOBUF_X89_Y73_N16
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(6));

-- Location: IOOBUF_X0_Y43_N16
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_BLON);

-- Location: IOOBUF_X115_Y60_N16
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_EN);

-- Location: IOOBUF_X115_Y24_N2
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_ON);

-- Location: IOOBUF_X60_Y73_N9
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_RS);

-- Location: IOOBUF_X115_Y33_N2
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LCD_RW);

-- Location: IOOBUF_X18_Y0_N16
\UART_CTS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UART_CTS);

-- Location: IOOBUF_X67_Y73_N2
\UART_TXD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_qsys|uart_0|the_unsaved_uart_0_tx|ALT_INV_txd~q\,
	devoe => ww_devoe,
	o => ww_UART_TXD);

-- Location: IOOBUF_X0_Y68_N2
\SD_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SD_CLK);

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
	o => ww_VGA_B(0));

-- Location: IOOBUF_X0_Y57_N16
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X115_Y56_N16
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X0_Y58_N16
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X45_Y0_N23
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X0_Y27_N23
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X79_Y0_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X115_Y35_N16
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X115_Y22_N2
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X40_Y73_N9
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X115_Y29_N9
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X0_Y45_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X58_Y73_N23
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X0_Y46_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X72_Y73_N2
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X16_Y73_N16
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X115_Y28_N9
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X54_Y73_N9
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X0_Y26_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X20_Y73_N23
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X115_Y43_N9
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X115_Y63_N9
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X115_Y17_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X0_Y20_N16
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X0_Y57_N23
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X27_Y73_N9
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X113_Y0_N2
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X79_Y73_N2
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X115_Y41_N9
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X83_Y73_N16
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X115_Y47_N23
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X47_Y0_N9
\EEP_I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_EEP_I2C_SCLK);

-- Location: IOOBUF_X115_Y26_N23
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X115_Y40_N9
\ENET0_GTX_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_GTX_CLK);

-- Location: IOOBUF_X45_Y73_N2
\ENET0_MDC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_MDC);

-- Location: IOOBUF_X74_Y0_N16
\ENET0_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_RST_N);

-- Location: IOOBUF_X115_Y67_N16
\ENET0_TX_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_TX_DATA(0));

-- Location: IOOBUF_X62_Y0_N16
\ENET0_TX_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_TX_DATA(1));

-- Location: IOOBUF_X115_Y10_N9
\ENET0_TX_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_TX_DATA(2));

-- Location: IOOBUF_X0_Y30_N9
\ENET0_TX_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_TX_DATA(3));

-- Location: IOOBUF_X115_Y64_N9
\ENET0_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_TX_EN);

-- Location: IOOBUF_X85_Y0_N9
\ENET0_TX_ER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET0_TX_ER);

-- Location: IOOBUF_X69_Y0_N9
\ENET1_GTX_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_GTX_CLK);

-- Location: IOOBUF_X52_Y73_N23
\ENET1_MDC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_MDC);

-- Location: IOOBUF_X115_Y30_N9
\ENET1_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_RST_N);

-- Location: IOOBUF_X83_Y0_N16
\ENET1_TX_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_TX_DATA(0));

-- Location: IOOBUF_X87_Y73_N23
\ENET1_TX_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_TX_DATA(1));

-- Location: IOOBUF_X35_Y73_N23
\ENET1_TX_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_TX_DATA(2));

-- Location: IOOBUF_X1_Y0_N9
\ENET1_TX_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_TX_DATA(3));

-- Location: IOOBUF_X0_Y50_N23
\ENET1_TX_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_TX_EN);

-- Location: IOOBUF_X74_Y0_N23
\ENET1_TX_ER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENET1_TX_ER);

-- Location: IOOBUF_X115_Y62_N23
\TD_RESET_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_TD_RESET_N);

-- Location: IOOBUF_X96_Y73_N23
\OTG_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OTG_ADDR(0));

-- Location: IOOBUF_X0_Y29_N23
\OTG_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OTG_ADDR(1));

-- Location: IOOBUF_X115_Y57_N23
\OTG_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OTG_CS_N);

-- Location: IOOBUF_X0_Y66_N16
\OTG_WR_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OTG_WR_N);

-- Location: IOOBUF_X72_Y73_N16
\OTG_RD_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OTG_RD_N);

-- Location: IOOBUF_X18_Y0_N2
\OTG_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OTG_RST_N);

-- Location: IOOBUF_X49_Y0_N16
\DRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(0));

-- Location: IOOBUF_X1_Y0_N2
\DRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(1));

-- Location: IOOBUF_X0_Y11_N23
\DRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(2));

-- Location: IOOBUF_X56_Y0_N23
\DRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(3));

-- Location: IOOBUF_X33_Y73_N2
\DRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(4));

-- Location: IOOBUF_X115_Y13_N2
\DRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(5));

-- Location: IOOBUF_X115_Y56_N23
\DRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(6));

-- Location: IOOBUF_X105_Y73_N2
\DRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(7));

-- Location: IOOBUF_X115_Y14_N9
\DRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(8));

-- Location: IOOBUF_X115_Y36_N9
\DRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(9));

-- Location: IOOBUF_X89_Y73_N9
\DRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(10));

-- Location: IOOBUF_X72_Y0_N9
\DRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(11));

-- Location: IOOBUF_X47_Y73_N16
\DRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(12));

-- Location: IOOBUF_X72_Y73_N23
\DRAM_BA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_BA(0));

-- Location: IOOBUF_X9_Y0_N2
\DRAM_BA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_BA(1));

-- Location: IOOBUF_X89_Y0_N16
\DRAM_CAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CAS_N);

-- Location: IOOBUF_X83_Y73_N9
\DRAM_CKE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CKE);

-- Location: IOOBUF_X0_Y50_N16
\DRAM_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CLK);

-- Location: IOOBUF_X18_Y73_N16
\DRAM_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CS_N);

-- Location: IOOBUF_X23_Y73_N2
\DRAM_DQM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(0));

-- Location: IOOBUF_X20_Y0_N23
\DRAM_DQM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(1));

-- Location: IOOBUF_X87_Y73_N9
\DRAM_DQM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(2));

-- Location: IOOBUF_X0_Y59_N23
\DRAM_DQM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(3));

-- Location: IOOBUF_X105_Y0_N9
\DRAM_RAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_RAS_N);

-- Location: IOOBUF_X115_Y65_N16
\DRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_WE_N);

-- Location: IOOBUF_X115_Y51_N2
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(0));

-- Location: IOOBUF_X115_Y52_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(1));

-- Location: IOOBUF_X7_Y73_N23
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(2));

-- Location: IOOBUF_X23_Y0_N23
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(3));

-- Location: IOOBUF_X115_Y55_N23
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(4));

-- Location: IOOBUF_X5_Y0_N23
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(5));

-- Location: IOOBUF_X74_Y73_N23
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(6));

-- Location: IOOBUF_X1_Y73_N16
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(7));

-- Location: IOOBUF_X0_Y23_N23
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(8));

-- Location: IOOBUF_X96_Y0_N23
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(9));

-- Location: IOOBUF_X0_Y62_N16
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(10));

-- Location: IOOBUF_X0_Y4_N2
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(11));

-- Location: IOOBUF_X0_Y12_N16
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(12));

-- Location: IOOBUF_X11_Y73_N9
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(13));

-- Location: IOOBUF_X27_Y73_N23
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(14));

-- Location: IOOBUF_X49_Y0_N23
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(15));

-- Location: IOOBUF_X69_Y0_N2
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(16));

-- Location: IOOBUF_X115_Y13_N9
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(17));

-- Location: IOOBUF_X3_Y73_N9
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(18));

-- Location: IOOBUF_X1_Y0_N16
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_ADDR(19));

-- Location: IOOBUF_X0_Y35_N9
\SRAM_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_CE_N);

-- Location: IOOBUF_X0_Y44_N9
\SRAM_LB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_LB_N);

-- Location: IOOBUF_X0_Y4_N23
\SRAM_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_OE_N);

-- Location: IOOBUF_X20_Y0_N16
\SRAM_UB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_UB_N);

-- Location: IOOBUF_X115_Y34_N16
\SRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_WE_N);

-- Location: IOOBUF_X0_Y64_N2
\FL_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(0));

-- Location: IOOBUF_X74_Y73_N16
\FL_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(1));

-- Location: IOOBUF_X60_Y0_N16
\FL_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(2));

-- Location: IOOBUF_X52_Y73_N2
\FL_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(3));

-- Location: IOOBUF_X115_Y8_N16
\FL_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(4));

-- Location: IOOBUF_X65_Y0_N9
\FL_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(5));

-- Location: IOOBUF_X115_Y42_N16
\FL_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(6));

-- Location: IOOBUF_X87_Y0_N16
\FL_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(7));

-- Location: IOOBUF_X27_Y0_N23
\FL_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(8));

-- Location: IOOBUF_X54_Y0_N16
\FL_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(9));

-- Location: IOOBUF_X9_Y73_N2
\FL_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(10));

-- Location: IOOBUF_X0_Y51_N16
\FL_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(11));

-- Location: IOOBUF_X47_Y0_N2
\FL_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(12));

-- Location: IOOBUF_X94_Y73_N2
\FL_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(13));

-- Location: IOOBUF_X72_Y0_N2
\FL_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(14));

-- Location: IOOBUF_X115_Y20_N9
\FL_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(15));

-- Location: IOOBUF_X83_Y0_N2
\FL_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(16));

-- Location: IOOBUF_X58_Y73_N16
\FL_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(17));

-- Location: IOOBUF_X0_Y32_N16
\FL_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(18));

-- Location: IOOBUF_X62_Y73_N23
\FL_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(19));

-- Location: IOOBUF_X115_Y32_N2
\FL_ADDR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(20));

-- Location: IOOBUF_X49_Y73_N16
\FL_ADDR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(21));

-- Location: IOOBUF_X33_Y0_N2
\FL_ADDR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_ADDR(22));

-- Location: IOOBUF_X100_Y0_N23
\FL_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_CE_N);

-- Location: IOOBUF_X0_Y22_N23
\FL_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_OE_N);

-- Location: IOOBUF_X0_Y10_N16
\FL_RST_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_RST_N);

-- Location: IOOBUF_X38_Y73_N2
\FL_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_WE_N);

-- Location: IOOBUF_X0_Y55_N16
\FL_WP_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_FL_WP_N);

-- Location: IOOBUF_X52_Y0_N16
\HSMC_CLKOUT_P1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT_P1);

-- Location: IOOBUF_X3_Y73_N23
\HSMC_CLKOUT_P2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT_P2);

-- Location: IOOBUF_X40_Y0_N16
\HSMC_CLKOUT0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT0);

-- Location: IOOBUF_X79_Y0_N2
\HSMC_TX_D_P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(0));

-- Location: IOOBUF_X0_Y24_N9
\HSMC_TX_D_P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(1));

-- Location: IOOBUF_X113_Y73_N2
\HSMC_TX_D_P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(2));

-- Location: IOOBUF_X25_Y73_N16
\HSMC_TX_D_P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(3));

-- Location: IOOBUF_X13_Y73_N9
\HSMC_TX_D_P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(4));

-- Location: IOOBUF_X0_Y17_N16
\HSMC_TX_D_P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(5));

-- Location: IOOBUF_X1_Y73_N23
\HSMC_TX_D_P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(6));

-- Location: IOOBUF_X115_Y36_N16
\HSMC_TX_D_P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(7));

-- Location: IOOBUF_X58_Y73_N9
\HSMC_TX_D_P[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(8));

-- Location: IOOBUF_X0_Y27_N16
\HSMC_TX_D_P[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(9));

-- Location: IOOBUF_X42_Y0_N23
\HSMC_TX_D_P[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(10));

-- Location: IOOBUF_X105_Y0_N23
\HSMC_TX_D_P[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(11));

-- Location: IOOBUF_X115_Y33_N9
\HSMC_TX_D_P[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(12));

-- Location: IOOBUF_X13_Y73_N23
\HSMC_TX_D_P[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(13));

-- Location: IOOBUF_X0_Y21_N23
\HSMC_TX_D_P[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(14));

-- Location: IOOBUF_X13_Y73_N16
\HSMC_TX_D_P[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(15));

-- Location: IOOBUF_X0_Y15_N16
\HSMC_TX_D_P[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_D_P(16));

-- Location: IOOBUF_X60_Y73_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(0));

-- Location: IOOBUF_X0_Y63_N23
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(1));

-- Location: IOOBUF_X0_Y52_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(2));

-- Location: IOOBUF_X72_Y73_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(3));

-- Location: IOOBUF_X91_Y0_N16
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(4));

-- Location: IOOBUF_X65_Y73_N9
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(5));

-- Location: IOOBUF_X115_Y19_N2
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(6));

-- Location: IOOBUF_X115_Y69_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => LCD_DATA(7));

-- Location: IOOBUF_X115_Y46_N9
\PS2_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_CLK);

-- Location: IOOBUF_X40_Y0_N23
\PS2_DAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_DAT);

-- Location: IOOBUF_X0_Y44_N23
\PS2_CLK2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_CLK2);

-- Location: IOOBUF_X102_Y0_N16
\PS2_DAT2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PS2_DAT2);

-- Location: IOOBUF_X115_Y27_N2
\SD_CMD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_CMD);

-- Location: IOOBUF_X0_Y32_N23
\SD_DAT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(0));

-- Location: IOOBUF_X35_Y0_N16
\SD_DAT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(1));

-- Location: IOOBUF_X105_Y0_N16
\SD_DAT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(2));

-- Location: IOOBUF_X0_Y55_N9
\SD_DAT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(3));

-- Location: IOOBUF_X105_Y73_N9
\AUD_ADCLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_ADCLRCK);

-- Location: IOOBUF_X65_Y73_N16
\AUD_BCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_BCLK);

-- Location: IOOBUF_X115_Y31_N9
\AUD_DACLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_DACLRCK);

-- Location: IOOBUF_X115_Y62_N9
\EEP_I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EEP_I2C_SDAT);

-- Location: IOOBUF_X3_Y73_N2
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => I2C_SDAT);

-- Location: IOOBUF_X0_Y53_N9
\OTG_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(0));

-- Location: IOOBUF_X115_Y61_N16
\OTG_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(1));

-- Location: IOOBUF_X115_Y44_N9
\OTG_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(2));

-- Location: IOOBUF_X115_Y23_N2
\OTG_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(3));

-- Location: IOOBUF_X115_Y68_N16
\OTG_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(4));

-- Location: IOOBUF_X85_Y0_N2
\OTG_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(5));

-- Location: IOOBUF_X0_Y24_N16
\OTG_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(6));

-- Location: IOOBUF_X115_Y10_N2
\OTG_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(7));

-- Location: IOOBUF_X33_Y73_N9
\OTG_DATA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(8));

-- Location: IOOBUF_X62_Y0_N23
\OTG_DATA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(9));

-- Location: IOOBUF_X115_Y48_N9
\OTG_DATA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(10));

-- Location: IOOBUF_X79_Y0_N16
\OTG_DATA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(11));

-- Location: IOOBUF_X115_Y66_N23
\OTG_DATA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(12));

-- Location: IOOBUF_X102_Y73_N2
\OTG_DATA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(13));

-- Location: IOOBUF_X0_Y5_N16
\OTG_DATA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(14));

-- Location: IOOBUF_X81_Y73_N9
\OTG_DATA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => OTG_DATA(15));

-- Location: IOOBUF_X18_Y0_N9
\DRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(0));

-- Location: IOOBUF_X54_Y0_N2
\DRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(1));

-- Location: IOOBUF_X0_Y19_N2
\DRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(2));

-- Location: IOOBUF_X69_Y73_N2
\DRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(3));

-- Location: IOOBUF_X33_Y0_N9
\DRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(4));

-- Location: IOOBUF_X9_Y0_N23
\DRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(5));

-- Location: IOOBUF_X62_Y73_N16
\DRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(6));

-- Location: IOOBUF_X11_Y0_N2
\DRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(7));

-- Location: IOOBUF_X0_Y55_N23
\DRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(8));

-- Location: IOOBUF_X38_Y0_N2
\DRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(9));

-- Location: IOOBUF_X87_Y73_N16
\DRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(10));

-- Location: IOOBUF_X115_Y9_N23
\DRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(11));

-- Location: IOOBUF_X3_Y0_N2
\DRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(12));

-- Location: IOOBUF_X9_Y0_N16
\DRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(13));

-- Location: IOOBUF_X40_Y73_N2
\DRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(14));

-- Location: IOOBUF_X98_Y0_N16
\DRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(15));

-- Location: IOOBUF_X0_Y33_N16
\DRAM_DQ[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(16));

-- Location: IOOBUF_X11_Y0_N9
\DRAM_DQ[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(17));

-- Location: IOOBUF_X115_Y44_N2
\DRAM_DQ[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(18));

-- Location: IOOBUF_X0_Y24_N2
\DRAM_DQ[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(19));

-- Location: IOOBUF_X60_Y0_N9
\DRAM_DQ[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(20));

-- Location: IOOBUF_X115_Y23_N9
\DRAM_DQ[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(21));

-- Location: IOOBUF_X65_Y0_N23
\DRAM_DQ[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(22));

-- Location: IOOBUF_X0_Y42_N2
\DRAM_DQ[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(23));

-- Location: IOOBUF_X27_Y73_N16
\DRAM_DQ[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(24));

-- Location: IOOBUF_X5_Y73_N23
\DRAM_DQ[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(25));

-- Location: IOOBUF_X115_Y22_N16
\DRAM_DQ[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(26));

-- Location: IOOBUF_X115_Y64_N2
\DRAM_DQ[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(27));

-- Location: IOOBUF_X31_Y0_N9
\DRAM_DQ[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(28));

-- Location: IOOBUF_X20_Y73_N16
\DRAM_DQ[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(29));

-- Location: IOOBUF_X0_Y68_N16
\DRAM_DQ[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(30));

-- Location: IOOBUF_X54_Y73_N2
\DRAM_DQ[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(31));

-- Location: IOOBUF_X31_Y73_N9
\SRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(0));

-- Location: IOOBUF_X109_Y0_N2
\SRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(1));

-- Location: IOOBUF_X16_Y73_N9
\SRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(2));

-- Location: IOOBUF_X98_Y0_N23
\SRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(3));

-- Location: IOOBUF_X20_Y0_N2
\SRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(4));

-- Location: IOOBUF_X111_Y0_N2
\SRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(5));

-- Location: IOOBUF_X115_Y24_N9
\SRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(6));

-- Location: IOOBUF_X0_Y10_N23
\SRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(7));

-- Location: IOOBUF_X115_Y25_N16
\SRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(8));

-- Location: IOOBUF_X87_Y73_N2
\SRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(9));

-- Location: IOOBUF_X31_Y0_N2
\SRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(10));

-- Location: IOOBUF_X0_Y34_N23
\SRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(11));

-- Location: IOOBUF_X0_Y34_N2
\SRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(12));

-- Location: IOOBUF_X91_Y0_N23
\SRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(13));

-- Location: IOOBUF_X85_Y73_N9
\SRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(14));

-- Location: IOOBUF_X83_Y73_N23
\SRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_DQ(15));

-- Location: IOOBUF_X38_Y73_N16
\FL_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(0));

-- Location: IOOBUF_X67_Y73_N16
\FL_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(1));

-- Location: IOOBUF_X115_Y14_N2
\FL_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(2));

-- Location: IOOBUF_X23_Y73_N9
\FL_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(3));

-- Location: IOOBUF_X115_Y58_N23
\FL_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(4));

-- Location: IOOBUF_X115_Y22_N23
\FL_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(5));

-- Location: IOOBUF_X60_Y0_N23
\FL_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(6));

-- Location: IOOBUF_X81_Y0_N23
\FL_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => FL_DQ(7));

-- Location: IOOBUF_X81_Y0_N16
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(0));

-- Location: IOOBUF_X89_Y0_N9
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(1));

-- Location: IOOBUF_X115_Y12_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(2));

-- Location: IOOBUF_X115_Y11_N2
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(3));

-- Location: IOOBUF_X16_Y0_N9
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(4));

-- Location: IOOBUF_X0_Y30_N2
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(5));

-- Location: IOOBUF_X89_Y0_N23
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(6));

-- Location: IOOBUF_X109_Y73_N2
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(7));

-- Location: IOOBUF_X45_Y0_N16
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(8));

-- Location: IOOBUF_X113_Y73_N9
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(9));

-- Location: IOOBUF_X115_Y49_N2
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(10));

-- Location: IOOBUF_X16_Y73_N23
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(11));

-- Location: IOOBUF_X115_Y48_N2
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(12));

-- Location: IOOBUF_X115_Y58_N16
\GPIO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(13));

-- Location: IOOBUF_X11_Y0_N23
\GPIO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(14));

-- Location: IOOBUF_X115_Y12_N2
\GPIO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(15));

-- Location: IOOBUF_X107_Y73_N16
\GPIO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(16));

-- Location: IOOBUF_X52_Y73_N9
\GPIO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(17));

-- Location: IOOBUF_X0_Y11_N16
\GPIO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(18));

-- Location: IOOBUF_X81_Y73_N23
\GPIO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(19));

-- Location: IOOBUF_X100_Y73_N16
\GPIO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(20));

-- Location: IOOBUF_X27_Y0_N9
\GPIO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(21));

-- Location: IOOBUF_X5_Y73_N9
\GPIO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(22));

-- Location: IOOBUF_X115_Y26_N16
\GPIO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(23));

-- Location: IOOBUF_X115_Y47_N16
\GPIO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(24));

-- Location: IOOBUF_X81_Y73_N16
\GPIO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(25));

-- Location: IOOBUF_X0_Y33_N23
\GPIO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(26));

-- Location: IOOBUF_X115_Y28_N2
\GPIO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(27));

-- Location: IOOBUF_X0_Y59_N16
\GPIO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(28));

-- Location: IOOBUF_X115_Y8_N23
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(29));

-- Location: IOOBUF_X0_Y63_N16
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(30));

-- Location: IOOBUF_X54_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(31));

-- Location: IOOBUF_X115_Y52_N9
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(32));

-- Location: IOOBUF_X20_Y73_N2
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(33));

-- Location: IOOBUF_X115_Y11_N9
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(34));

-- Location: IOOBUF_X47_Y73_N2
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(35));

-- Location: IOOBUF_X16_Y73_N2
\HSMC_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(0));

-- Location: IOOBUF_X23_Y73_N23
\HSMC_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(1));

-- Location: IOOBUF_X0_Y28_N16
\HSMC_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(2));

-- Location: IOOBUF_X67_Y0_N16
\HSMC_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(3));

-- Location: IOOBUF_X98_Y73_N23
\EX_IO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EX_IO(0));

-- Location: IOOBUF_X0_Y65_N16
\EX_IO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EX_IO(1));

-- Location: IOOBUF_X0_Y8_N23
\EX_IO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EX_IO(2));

-- Location: IOOBUF_X0_Y28_N23
\EX_IO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EX_IO(3));

-- Location: IOOBUF_X11_Y73_N2
\EX_IO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EX_IO(4));

-- Location: IOOBUF_X115_Y59_N23
\EX_IO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EX_IO(5));

-- Location: IOOBUF_X74_Y0_N9
\EX_IO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => EX_IO(6));

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\my_qsys|altpll_0|sd1|pll7\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 8,
	c0_initial => 1,
	c0_low => 7,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \my_qsys|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \my_qsys|altpll_0|sd1|pll7_INCLK_bus\,
	fbout => \my_qsys|altpll_0|sd1|wire_pll7_fbout\,
	clk => \my_qsys|altpll_0|sd1|pll7_CLK_bus\);

-- Location: CLKCTRL_G3
\my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y63_N24
\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~5_combout\ = (!\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0) & \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0),
	datad => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\,
	combout => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~5_combout\);

-- Location: LCCOMB_X69_Y61_N0
\my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: FF_X69_Y61_N1
\my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: LCCOMB_X68_Y62_N6
\my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ = \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	combout => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\);

-- Location: FF_X68_Y62_N7
\my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: FF_X68_Y62_N23
\my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	clrn => \KEY[0]~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X67_Y63_N25
\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~5_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0));

-- Location: LCCOMB_X67_Y63_N26
\my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~feeder_combout\);

-- Location: FF_X67_Y63_N27
\my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~feeder_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\);

-- Location: LCCOMB_X67_Y63_N10
\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~4_combout\ = (\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\ & ((\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1) & 
-- ((!\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0)))) # (!\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1) & (!\my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\ & 
-- \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\,
	datab => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\,
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1),
	datad => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0),
	combout => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~4_combout\);

-- Location: FF_X67_Y63_N11
\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter~4_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1));

-- Location: LCCOMB_X67_Y63_N4
\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\ = (\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0) & (\my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\ & 
-- !\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(0),
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\,
	datad => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1),
	combout => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\);

-- Location: LCCOMB_X66_Y62_N0
\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~1_combout\ = (!\my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0) & 
-- ((\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\) # ((!\my_qsys|new_component_0|avm_read_r~q\ & \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0),
	datab => \my_qsys|new_component_0|avm_read_r~q\,
	datac => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\,
	datad => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\,
	combout => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~1_combout\);

-- Location: FF_X66_Y62_N1
\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\);

-- Location: LCCOMB_X67_Y63_N30
\my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg~0_combout\ = (!\my_qsys|new_component_0|avm_read_r~q\ & (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\ & 
-- \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|avm_read_r~q\,
	datac => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\,
	datad => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\,
	combout => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg~0_combout\);

-- Location: FF_X67_Y63_N31
\my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0));

-- Location: LCCOMB_X66_Y62_N8
\my_qsys|new_component_0|bytes_counter_r[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[0]~7_combout\ = \my_qsys|new_component_0|bytes_counter_r\(0) $ (VCC)
-- \my_qsys|new_component_0|bytes_counter_r[0]~8\ = CARRY(\my_qsys|new_component_0|bytes_counter_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|bytes_counter_r\(0),
	datad => VCC,
	combout => \my_qsys|new_component_0|bytes_counter_r[0]~7_combout\,
	cout => \my_qsys|new_component_0|bytes_counter_r[0]~8\);

-- Location: LCCOMB_X67_Y62_N30
\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\ = (\my_qsys|new_component_0|avm_read_r~q\ & (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\)) # 
-- (!\my_qsys|new_component_0|avm_read_r~q\ & ((!\my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\,
	datab => \my_qsys|new_component_0|avm_read_r~q\,
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0),
	combout => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\);

-- Location: LCCOMB_X68_Y63_N8
\my_qsys|new_component_0|waiting_r.WAITING_READ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|waiting_r.WAITING_READ~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \my_qsys|new_component_0|waiting_r.WAITING_READ~feeder_combout\);

-- Location: LCCOMB_X67_Y62_N0
\my_qsys|new_component_0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector3~0_combout\ = (\my_qsys|new_component_0|state_w~5_combout\ & (!\my_qsys|new_component_0|state_r.S_GET_KEY~q\ & ((\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\) # 
-- (\my_qsys|new_component_0|waiting_r.WAITING_READ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datab => \my_qsys|new_component_0|state_w~5_combout\,
	datac => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datad => \my_qsys|new_component_0|waiting_r.WAITING_READ~q\,
	combout => \my_qsys|new_component_0|Selector3~0_combout\);

-- Location: LCCOMB_X67_Y62_N8
\my_qsys|new_component_0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector1~1_combout\ = (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\ & (\my_qsys|new_component_0|state_w~5_combout\ & (!\my_qsys|new_component_0|state_r.S_GET_KEY~q\ & 
-- !\my_qsys|new_component_0|waiting_r.WAITING_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datab => \my_qsys|new_component_0|state_w~5_combout\,
	datac => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datad => \my_qsys|new_component_0|waiting_r.WAITING_READ~q\,
	combout => \my_qsys|new_component_0|Selector1~1_combout\);

-- Location: FF_X67_Y62_N9
\my_qsys|new_component_0|state_r.S_GET_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector1~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|state_r.S_GET_DATA~q\);

-- Location: LCCOMB_X68_Y62_N24
\my_qsys|new_component_0|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector3~1_combout\ = (!\my_qsys|new_component_0|state_r.S_GET_DATA~q\ & \my_qsys|new_component_0|state_r.S_GET_KEY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|state_r.S_GET_DATA~q\,
	datad => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	combout => \my_qsys|new_component_0|Selector3~1_combout\);

-- Location: LCCOMB_X67_Y62_N14
\my_qsys|new_component_0|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector2~3_combout\ = (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\ & (\my_qsys|new_component_0|bytes_counter_r\(6) & (\my_qsys|new_component_0|bytes_counter_r\(5) & 
-- \my_qsys|new_component_0|state_r.S_GET_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datab => \my_qsys|new_component_0|bytes_counter_r\(6),
	datac => \my_qsys|new_component_0|bytes_counter_r\(5),
	datad => \my_qsys|new_component_0|state_r.S_GET_DATA~q\,
	combout => \my_qsys|new_component_0|Selector2~3_combout\);

-- Location: LCCOMB_X68_Y62_N4
\my_qsys|new_component_0|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector18~0_combout\ = (\my_qsys|new_component_0|Selector2~3_combout\) # ((\my_qsys|new_component_0|rsa_start_r~q\ & ((\my_qsys|new_component_0|state_r.S_SEND_DATA~q\) # (!\my_qsys|new_component_0|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	datab => \my_qsys|new_component_0|Selector3~1_combout\,
	datac => \my_qsys|new_component_0|rsa_start_r~q\,
	datad => \my_qsys|new_component_0|Selector2~3_combout\,
	combout => \my_qsys|new_component_0|Selector18~0_combout\);

-- Location: FF_X68_Y62_N5
\my_qsys|new_component_0|rsa_start_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector18~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa_start_r~q\);

-- Location: LCCOMB_X65_Y61_N8
\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~9_combout\ = \my_qsys|new_component_0|rsa256_core|ME_counter_r\(0) $ (VCC)
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~10\ = CARRY(\my_qsys|new_component_0|rsa256_core|ME_counter_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(0),
	datad => VCC,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~9_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~10\);

-- Location: LCCOMB_X65_Y62_N30
\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11_combout\) # ((\my_qsys|new_component_0|rsa_start_r~q\ & !\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11_combout\,
	datab => \my_qsys|new_component_0|rsa_start_r~q\,
	datac => \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\);

-- Location: FF_X65_Y61_N9
\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~9_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(0));

-- Location: LCCOMB_X65_Y61_N10
\my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~13_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(1) & (!\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~10\)) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(1) & 
-- ((\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~10\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~14\ = CARRY((!\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~10\) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(1),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~10\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~13_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~14\);

-- Location: FF_X65_Y61_N11
\my_qsys|new_component_0|rsa256_core|ME_counter_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~13_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(1));

-- Location: LCCOMB_X65_Y61_N12
\my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~15_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(2) & (\my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~14\ $ (GND))) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(2) & 
-- (!\my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~14\ & VCC))
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~16\ = CARRY((\my_qsys|new_component_0|rsa256_core|ME_counter_r\(2) & !\my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(2),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[1]~14\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~15_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~16\);

-- Location: FF_X65_Y61_N13
\my_qsys|new_component_0|rsa256_core|ME_counter_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~15_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(2));

-- Location: LCCOMB_X65_Y61_N14
\my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~17_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(3) & (!\my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~16\)) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(3) & 
-- ((\my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~16\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~18\ = CARRY((!\my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~16\) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(3),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[2]~16\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~17_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~18\);

-- Location: FF_X65_Y61_N15
\my_qsys|new_component_0|rsa256_core|ME_counter_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~17_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(3));

-- Location: LCCOMB_X65_Y61_N16
\my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~19_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(4) & (\my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~18\ $ (GND))) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(4) & 
-- (!\my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~18\ & VCC))
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~20\ = CARRY((\my_qsys|new_component_0|rsa256_core|ME_counter_r\(4) & !\my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(4),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[3]~18\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~19_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~20\);

-- Location: FF_X65_Y61_N17
\my_qsys|new_component_0|rsa256_core|ME_counter_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~19_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(4));

-- Location: LCCOMB_X65_Y61_N18
\my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~21_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(5) & (!\my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~20\)) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(5) & 
-- ((\my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~20\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~22\ = CARRY((!\my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~20\) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(5),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[4]~20\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~21_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~22\);

-- Location: FF_X65_Y61_N19
\my_qsys|new_component_0|rsa256_core|ME_counter_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~21_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(5));

-- Location: LCCOMB_X65_Y61_N20
\my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~23_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(6) & (\my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~22\ $ (GND))) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(6) & 
-- (!\my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~22\ & VCC))
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~24\ = CARRY((\my_qsys|new_component_0|rsa256_core|ME_counter_r\(6) & !\my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(6),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[5]~22\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~23_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~24\);

-- Location: FF_X65_Y61_N21
\my_qsys|new_component_0|rsa256_core|ME_counter_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~23_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(6));

-- Location: LCCOMB_X65_Y61_N22
\my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~25_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(7) & (!\my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~24\)) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(7) & 
-- ((\my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~24\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~26\ = CARRY((!\my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~24\) # (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(7),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[6]~24\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~25_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~26\);

-- Location: FF_X65_Y61_N23
\my_qsys|new_component_0|rsa256_core|ME_counter_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~25_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(7));

-- Location: LCCOMB_X65_Y61_N24
\my_qsys|new_component_0|rsa256_core|ME_counter_r[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[8]~27_combout\ = \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~26\ $ (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(8),
	cin => \my_qsys|new_component_0|rsa256_core|ME_counter_r[7]~26\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[8]~27_combout\);

-- Location: FF_X65_Y61_N25
\my_qsys|new_component_0|rsa256_core|ME_counter_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|ME_counter_r[8]~27_combout\,
	sclr => \my_qsys|new_component_0|rsa256_core|ALT_INV_state_r.INC~q\,
	ena => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(8));

-- Location: LCCOMB_X65_Y61_N26
\my_qsys|new_component_0|rsa256_core|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Equal0~1_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(6) & (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(4) & (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(7) & 
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(6),
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(4),
	datac => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(7),
	datad => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(5),
	combout => \my_qsys|new_component_0|rsa256_core|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y61_N0
\my_qsys|new_component_0|rsa256_core|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Equal0~0_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(1) & (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(0) & (\my_qsys|new_component_0|rsa256_core|ME_counter_r\(3) & 
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(1),
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(0),
	datac => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(3),
	datad => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(2),
	combout => \my_qsys|new_component_0|rsa256_core|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y61_N30
\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11_combout\ = (\my_qsys|new_component_0|rsa256_core|state_r.INC~q\ & ((\my_qsys|new_component_0|rsa256_core|ME_counter_r\(8)) # ((!\my_qsys|new_component_0|rsa256_core|Equal0~0_combout\) # 
-- (!\my_qsys|new_component_0|rsa256_core|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|state_r.INC~q\,
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(8),
	datac => \my_qsys|new_component_0|rsa256_core|Equal0~1_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|Equal0~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11_combout\);

-- Location: LCCOMB_X65_Y62_N10
\my_qsys|new_component_0|rsa256_core|Selector797~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector797~0_combout\ = (\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\ & (((\my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8))))) # 
-- (!\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\ & ((\my_qsys|new_component_0|rsa_start_r~q\) # ((\my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\,
	datab => \my_qsys|new_component_0|rsa_start_r~q\,
	datac => \my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	combout => \my_qsys|new_component_0|rsa256_core|Selector797~0_combout\);

-- Location: FF_X65_Y62_N11
\my_qsys|new_component_0|rsa256_core|state_r.PREPROP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector797~0_combout\,
	sclr => \my_qsys|rst_controller_001|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\);

-- Location: LCCOMB_X65_Y62_N2
\my_qsys|new_component_0|rsa256_core|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector0~1_combout\ = (!\my_qsys|new_component_0|rsa_start_r~q\ & !\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa_start_r~q\,
	datac => \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector0~1_combout\);

-- Location: LCCOMB_X65_Y62_N26
\my_qsys|new_component_0|rsa256_core|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector0~2_combout\ = (\my_qsys|new_component_0|rsa256_core|state_r.MA~q\) # ((\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8) & ((\my_qsys|new_component_0|rsa256_core|Selector0~1_combout\))) # 
-- (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8) & (\my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\,
	datab => \my_qsys|new_component_0|rsa256_core|state_r.MA~q\,
	datac => \my_qsys|new_component_0|rsa256_core|Selector0~1_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	combout => \my_qsys|new_component_0|rsa256_core|Selector0~2_combout\);

-- Location: LCCOMB_X65_Y62_N4
\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\ = ((\my_qsys|new_component_0|rsa256_core|state_r.INC~q\) # ((\my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\ & \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8)))) # 
-- (!\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\,
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	datac => \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\,
	datad => \my_qsys|new_component_0|rsa256_core|state_r.INC~q\,
	combout => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\);

-- Location: LCCOMB_X63_Y62_N2
\my_qsys|new_component_0|rsa256_core|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~0_combout\ = \my_qsys|new_component_0|rsa256_core|MA_counter_r\(0) $ (VCC)
-- \my_qsys|new_component_0|rsa256_core|Add1~1\ = CARRY(\my_qsys|new_component_0|rsa256_core|MA_counter_r\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(0),
	datad => VCC,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~0_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~1\);

-- Location: LCCOMB_X63_Y62_N30
\my_qsys|new_component_0|rsa256_core|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector8~0_combout\ = (\my_qsys|new_component_0|rsa256_core|Add1~0_combout\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|Add1~0_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector8~0_combout\);

-- Location: LCCOMB_X65_Y62_N14
\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\ = (!\my_qsys|new_component_0|rsa256_core|Selector0~1_combout\ & (!\my_qsys|new_component_0|rsa256_core|Selector0~0_combout\ & ((!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8)) # 
-- (!\my_qsys|new_component_0|rsa256_core|state_r.MA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|Selector0~1_combout\,
	datab => \my_qsys|new_component_0|rsa256_core|state_r.MA~q\,
	datac => \my_qsys|new_component_0|rsa256_core|Selector0~0_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	combout => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\);

-- Location: FF_X63_Y62_N31
\my_qsys|new_component_0|rsa256_core|MA_counter_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector8~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(0));

-- Location: LCCOMB_X63_Y62_N4
\my_qsys|new_component_0|rsa256_core|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~2_combout\ = (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(1) & (!\my_qsys|new_component_0|rsa256_core|Add1~1\)) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(1) & 
-- ((\my_qsys|new_component_0|rsa256_core|Add1~1\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|Add1~3\ = CARRY((!\my_qsys|new_component_0|rsa256_core|Add1~1\) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(1),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|Add1~1\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~2_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~3\);

-- Location: LCCOMB_X63_Y62_N20
\my_qsys|new_component_0|rsa256_core|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector7~0_combout\ = (\my_qsys|new_component_0|rsa256_core|Add1~2_combout\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|rsa256_core|Add1~2_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector7~0_combout\);

-- Location: FF_X63_Y62_N21
\my_qsys|new_component_0|rsa256_core|MA_counter_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector7~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(1));

-- Location: LCCOMB_X63_Y62_N6
\my_qsys|new_component_0|rsa256_core|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~4_combout\ = (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(2) & (\my_qsys|new_component_0|rsa256_core|Add1~3\ $ (GND))) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(2) & 
-- (!\my_qsys|new_component_0|rsa256_core|Add1~3\ & VCC))
-- \my_qsys|new_component_0|rsa256_core|Add1~5\ = CARRY((\my_qsys|new_component_0|rsa256_core|MA_counter_r\(2) & !\my_qsys|new_component_0|rsa256_core|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(2),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|Add1~3\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~4_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~5\);

-- Location: LCCOMB_X65_Y62_N0
\my_qsys|new_component_0|rsa256_core|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector6~0_combout\ = (!\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\ & \my_qsys|new_component_0|rsa256_core|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	datac => \my_qsys|new_component_0|rsa256_core|Add1~4_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector6~0_combout\);

-- Location: FF_X65_Y62_N1
\my_qsys|new_component_0|rsa256_core|MA_counter_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector6~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(2));

-- Location: LCCOMB_X63_Y62_N8
\my_qsys|new_component_0|rsa256_core|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~6_combout\ = (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(3) & (!\my_qsys|new_component_0|rsa256_core|Add1~5\)) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(3) & 
-- ((\my_qsys|new_component_0|rsa256_core|Add1~5\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|Add1~7\ = CARRY((!\my_qsys|new_component_0|rsa256_core|Add1~5\) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(3),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|Add1~5\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~6_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~7\);

-- Location: LCCOMB_X63_Y62_N26
\my_qsys|new_component_0|rsa256_core|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector5~0_combout\ = (\my_qsys|new_component_0|rsa256_core|Add1~6_combout\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|rsa256_core|Add1~6_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector5~0_combout\);

-- Location: FF_X63_Y62_N27
\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector5~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(3));

-- Location: LCCOMB_X63_Y62_N10
\my_qsys|new_component_0|rsa256_core|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~8_combout\ = (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(4) & (\my_qsys|new_component_0|rsa256_core|Add1~7\ $ (GND))) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(4) & 
-- (!\my_qsys|new_component_0|rsa256_core|Add1~7\ & VCC))
-- \my_qsys|new_component_0|rsa256_core|Add1~9\ = CARRY((\my_qsys|new_component_0|rsa256_core|MA_counter_r\(4) & !\my_qsys|new_component_0|rsa256_core|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(4),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|Add1~7\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~8_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~9\);

-- Location: LCCOMB_X63_Y62_N0
\my_qsys|new_component_0|rsa256_core|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector4~0_combout\ = (\my_qsys|new_component_0|rsa256_core|Add1~8_combout\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|Add1~8_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector4~0_combout\);

-- Location: FF_X63_Y62_N1
\my_qsys|new_component_0|rsa256_core|MA_counter_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector4~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(4));

-- Location: LCCOMB_X63_Y62_N12
\my_qsys|new_component_0|rsa256_core|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~10_combout\ = (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(5) & (!\my_qsys|new_component_0|rsa256_core|Add1~9\)) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(5) & 
-- ((\my_qsys|new_component_0|rsa256_core|Add1~9\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|Add1~11\ = CARRY((!\my_qsys|new_component_0|rsa256_core|Add1~9\) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(5),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|Add1~9\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~10_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~11\);

-- Location: LCCOMB_X63_Y62_N22
\my_qsys|new_component_0|rsa256_core|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector3~0_combout\ = (\my_qsys|new_component_0|rsa256_core|Add1~10_combout\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|rsa256_core|Add1~10_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector3~0_combout\);

-- Location: FF_X63_Y62_N23
\my_qsys|new_component_0|rsa256_core|MA_counter_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector3~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(5));

-- Location: LCCOMB_X63_Y62_N14
\my_qsys|new_component_0|rsa256_core|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~12_combout\ = (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(6) & (\my_qsys|new_component_0|rsa256_core|Add1~11\ $ (GND))) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(6) & 
-- (!\my_qsys|new_component_0|rsa256_core|Add1~11\ & VCC))
-- \my_qsys|new_component_0|rsa256_core|Add1~13\ = CARRY((\my_qsys|new_component_0|rsa256_core|MA_counter_r\(6) & !\my_qsys|new_component_0|rsa256_core|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(6),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|Add1~11\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~12_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~13\);

-- Location: LCCOMB_X63_Y62_N28
\my_qsys|new_component_0|rsa256_core|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector2~0_combout\ = (\my_qsys|new_component_0|rsa256_core|Add1~12_combout\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|rsa256_core|Add1~12_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector2~0_combout\);

-- Location: FF_X63_Y62_N29
\my_qsys|new_component_0|rsa256_core|MA_counter_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector2~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(6));

-- Location: LCCOMB_X63_Y62_N16
\my_qsys|new_component_0|rsa256_core|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~14_combout\ = (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(7) & (!\my_qsys|new_component_0|rsa256_core|Add1~13\)) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(7) & 
-- ((\my_qsys|new_component_0|rsa256_core|Add1~13\) # (GND)))
-- \my_qsys|new_component_0|rsa256_core|Add1~15\ = CARRY((!\my_qsys|new_component_0|rsa256_core|Add1~13\) # (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(7),
	datad => VCC,
	cin => \my_qsys|new_component_0|rsa256_core|Add1~13\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~14_combout\,
	cout => \my_qsys|new_component_0|rsa256_core|Add1~15\);

-- Location: LCCOMB_X63_Y62_N24
\my_qsys|new_component_0|rsa256_core|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector1~0_combout\ = (\my_qsys|new_component_0|rsa256_core|Add1~14_combout\ & !\my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|Add1~14_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector1~0_combout\);

-- Location: FF_X63_Y62_N25
\my_qsys|new_component_0|rsa256_core|MA_counter_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector1~0_combout\,
	ena => \my_qsys|new_component_0|rsa256_core|MA_counter_r[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(7));

-- Location: LCCOMB_X63_Y62_N18
\my_qsys|new_component_0|rsa256_core|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Add1~16_combout\ = \my_qsys|new_component_0|rsa256_core|Add1~15\ $ (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	cin => \my_qsys|new_component_0|rsa256_core|Add1~15\,
	combout => \my_qsys|new_component_0|rsa256_core|Add1~16_combout\);

-- Location: LCCOMB_X65_Y62_N20
\my_qsys|new_component_0|rsa256_core|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector0~3_combout\ = (\my_qsys|new_component_0|rsa256_core|Selector0~2_combout\ & (((\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8)) # (\my_qsys|new_component_0|rsa256_core|Add1~16_combout\)))) # 
-- (!\my_qsys|new_component_0|rsa256_core|Selector0~2_combout\ & (\my_qsys|new_component_0|rsa256_core|Selector0~0_combout\ & (\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|Selector0~2_combout\,
	datab => \my_qsys|new_component_0|rsa256_core|Selector0~0_combout\,
	datac => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	datad => \my_qsys|new_component_0|rsa256_core|Add1~16_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector0~3_combout\);

-- Location: FF_X65_Y62_N21
\my_qsys|new_component_0|rsa256_core|MA_counter_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8));

-- Location: LCCOMB_X65_Y62_N24
\my_qsys|new_component_0|rsa256_core|Selector799~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector799~0_combout\ = (\my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11_combout\) # ((\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8) & ((\my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\))) # 
-- (!\my_qsys|new_component_0|rsa256_core|MA_counter_r\(8) & (\my_qsys|new_component_0|rsa256_core|state_r.MA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|ME_counter_r[0]~11_combout\,
	datab => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	datac => \my_qsys|new_component_0|rsa256_core|state_r.MA~q\,
	datad => \my_qsys|new_component_0|rsa256_core|state_r.PREPROP~q\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector799~0_combout\);

-- Location: FF_X65_Y62_N25
\my_qsys|new_component_0|rsa256_core|state_r.MA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|Selector799~0_combout\,
	sclr => \my_qsys|rst_controller_001|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|state_r.MA~q\);

-- Location: LCCOMB_X65_Y62_N16
\my_qsys|new_component_0|rsa256_core|state_w.INC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|state_w.INC~0_combout\ = (\my_qsys|new_component_0|rsa256_core|state_r.MA~q\ & (\my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|state_r.MA~q\,
	datac => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \my_qsys|new_component_0|rsa256_core|MA_counter_r\(8),
	combout => \my_qsys|new_component_0|rsa256_core|state_w.INC~0_combout\);

-- Location: FF_X65_Y62_N17
\my_qsys|new_component_0|rsa256_core|state_r.INC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|state_w.INC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|state_r.INC~q\);

-- Location: LCCOMB_X65_Y61_N4
\my_qsys|new_component_0|rsa256_core|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|Selector0~0_combout\ = (\my_qsys|new_component_0|rsa256_core|state_r.INC~q\ & (!\my_qsys|new_component_0|rsa256_core|ME_counter_r\(8) & (\my_qsys|new_component_0|rsa256_core|Equal0~1_combout\ & 
-- \my_qsys|new_component_0|rsa256_core|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|state_r.INC~q\,
	datab => \my_qsys|new_component_0|rsa256_core|ME_counter_r\(8),
	datac => \my_qsys|new_component_0|rsa256_core|Equal0~1_combout\,
	datad => \my_qsys|new_component_0|rsa256_core|Equal0~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|Selector0~0_combout\);

-- Location: LCCOMB_X65_Y62_N22
\my_qsys|new_component_0|rsa256_core|state_w.RESET~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|state_w.RESET~2_combout\ = (\my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (!\my_qsys|new_component_0|rsa256_core|Selector0~0_combout\ & 
-- ((\my_qsys|new_component_0|rsa_start_r~q\) # (\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datab => \my_qsys|new_component_0|rsa_start_r~q\,
	datac => \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\,
	datad => \my_qsys|new_component_0|rsa256_core|Selector0~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|state_w.RESET~2_combout\);

-- Location: FF_X65_Y62_N23
\my_qsys|new_component_0|rsa256_core|state_r.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|state_w.RESET~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\);

-- Location: LCCOMB_X65_Y62_N28
\my_qsys|new_component_0|rsa256_core|finished_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|rsa256_core|finished_r~0_combout\ = (\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\ & (((\my_qsys|new_component_0|rsa256_core|finished_r~q\) # (\my_qsys|new_component_0|rsa256_core|Selector0~0_combout\)))) # 
-- (!\my_qsys|new_component_0|rsa256_core|state_r.RESET~q\ & (!\my_qsys|new_component_0|rsa_start_r~q\ & (\my_qsys|new_component_0|rsa256_core|finished_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|rsa256_core|state_r.RESET~q\,
	datab => \my_qsys|new_component_0|rsa_start_r~q\,
	datac => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	datad => \my_qsys|new_component_0|rsa256_core|Selector0~0_combout\,
	combout => \my_qsys|new_component_0|rsa256_core|finished_r~0_combout\);

-- Location: FF_X65_Y62_N29
\my_qsys|new_component_0|rsa256_core|finished_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|rsa256_core|finished_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|rsa256_core|finished_r~q\);

-- Location: LCCOMB_X67_Y62_N26
\my_qsys|new_component_0|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector3~2_combout\ = (\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & ((\my_qsys|new_component_0|bytes_counter_r\(6)) # ((\my_qsys|new_component_0|bytes_counter_r\(5))))) # (!\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & 
-- (((\my_qsys|new_component_0|rsa256_core|finished_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	datab => \my_qsys|new_component_0|bytes_counter_r\(6),
	datac => \my_qsys|new_component_0|bytes_counter_r\(5),
	datad => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	combout => \my_qsys|new_component_0|Selector3~2_combout\);

-- Location: LCCOMB_X67_Y62_N12
\my_qsys|new_component_0|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector3~3_combout\ = (\my_qsys|new_component_0|Selector3~2_combout\ & (\my_qsys|new_component_0|Selector3~1_combout\ & ((!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\) # 
-- (!\my_qsys|new_component_0|state_r.S_SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector3~2_combout\,
	datab => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	datac => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datad => \my_qsys|new_component_0|Selector3~1_combout\,
	combout => \my_qsys|new_component_0|Selector3~3_combout\);

-- Location: LCCOMB_X67_Y62_N16
\my_qsys|new_component_0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector1~0_combout\ = (\my_qsys|new_component_0|Selector3~3_combout\) # ((\my_qsys|new_component_0|Selector2~2_combout\) # ((\my_qsys|new_component_0|state_r.S_GET_KEY~q\ & \my_qsys|new_component_0|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector3~3_combout\,
	datab => \my_qsys|new_component_0|Selector2~2_combout\,
	datac => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datad => \my_qsys|new_component_0|Selector2~3_combout\,
	combout => \my_qsys|new_component_0|Selector1~0_combout\);

-- Location: FF_X67_Y62_N1
\my_qsys|new_component_0|state_r.S_SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector3~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\);

-- Location: LCCOMB_X66_Y62_N6
\my_qsys|new_component_0|Selector277~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector277~0_combout\ = (\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & ((\my_qsys|new_component_0|avm_read_r~q\ & ((\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\))) # 
-- (!\my_qsys|new_component_0|avm_read_r~q\ & (\my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0),
	datab => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	datac => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\,
	datad => \my_qsys|new_component_0|avm_read_r~q\,
	combout => \my_qsys|new_component_0|Selector277~0_combout\);

-- Location: LCCOMB_X66_Y62_N24
\my_qsys|new_component_0|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector2~4_combout\ = (\my_qsys|new_component_0|Selector2~3_combout\) # ((!\my_qsys|new_component_0|rsa256_core|finished_r~q\ & \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	datac => \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\,
	datad => \my_qsys|new_component_0|Selector2~3_combout\,
	combout => \my_qsys|new_component_0|Selector2~4_combout\);

-- Location: FF_X66_Y62_N25
\my_qsys|new_component_0|state_r.S_WAIT_CALCULATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector2~4_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\);

-- Location: LCCOMB_X66_Y62_N26
\my_qsys|new_component_0|dec_r[151]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|dec_r[151]~2_combout\ = (!\my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\) # (!\my_qsys|new_component_0|rsa256_core|finished_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	datad => \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\,
	combout => \my_qsys|new_component_0|dec_r[151]~2_combout\);

-- Location: LCCOMB_X66_Y62_N2
\my_qsys|new_component_0|Selector277~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector277~3_combout\ = ((\my_qsys|new_component_0|Selector277~0_combout\ & ((\my_qsys|new_component_0|bytes_counter_r\(5)) # (\my_qsys|new_component_0|bytes_counter_r\(6))))) # (!\my_qsys|new_component_0|dec_r[151]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector277~0_combout\,
	datab => \my_qsys|new_component_0|bytes_counter_r\(5),
	datac => \my_qsys|new_component_0|dec_r[151]~2_combout\,
	datad => \my_qsys|new_component_0|bytes_counter_r\(6),
	combout => \my_qsys|new_component_0|Selector277~3_combout\);

-- Location: FF_X68_Y63_N9
\my_qsys|new_component_0|waiting_r.WAITING_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|waiting_r.WAITING_READ~feeder_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|Selector277~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|waiting_r.WAITING_READ~q\);

-- Location: LCCOMB_X68_Y62_N20
\my_qsys|new_component_0|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector15~0_combout\ = (!\my_qsys|new_component_0|state_r.S_GET_KEY~q\ & ((\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\) # (\my_qsys|new_component_0|waiting_r.WAITING_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datac => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datad => \my_qsys|new_component_0|waiting_r.WAITING_READ~q\,
	combout => \my_qsys|new_component_0|Selector15~0_combout\);

-- Location: LCCOMB_X67_Y62_N6
\my_qsys|new_component_0|avm_address_w~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|avm_address_w~2_combout\ = (\my_qsys|new_component_0|state_r.S_GET_KEY~q\ & (\my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\ & ((\my_qsys|new_component_0|rsa256_core|finished_r~q\)))) # 
-- (!\my_qsys|new_component_0|state_r.S_GET_KEY~q\ & (((\my_qsys|new_component_0|state_w~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\,
	datab => \my_qsys|new_component_0|state_w~5_combout\,
	datac => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datad => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	combout => \my_qsys|new_component_0|avm_address_w~2_combout\);

-- Location: FF_X68_Y62_N21
\my_qsys|new_component_0|avm_address_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector15~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|avm_address_w~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|avm_address_r\(2));

-- Location: LCCOMB_X68_Y63_N26
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[6]~9_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(7)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(7),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[6]~9_combout\);

-- Location: IOIBUF_X69_Y73_N15
\UART_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RXD,
	o => \UART_RXD~input_o\);

-- Location: FF_X69_Y63_N7
\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \UART_RXD~input_o\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|din_s1~q\);

-- Location: LCCOMB_X69_Y63_N2
\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg[0]~feeder_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|din_s1~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X69_Y63_N3
\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg[0]~feeder_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0));

-- Location: LCCOMB_X69_Y63_N8
\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~feeder_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~feeder_combout\);

-- Location: FF_X69_Y63_N9
\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~feeder_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\);

-- Location: LCCOMB_X70_Y63_N10
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~0_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(0) $ (VCC)
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~1\ = CARRY(\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(0),
	datad => VCC,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~0_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~1\);

-- Location: LCCOMB_X69_Y63_N20
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~8_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\) # ((\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~0_combout\) # (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~0_combout\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~8_combout\);

-- Location: FF_X69_Y63_N21
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~8_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(0));

-- Location: LCCOMB_X70_Y63_N12
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~2_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(1) & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~1\ & VCC)) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(1) & 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~1\))
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~3\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(1) & !\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(1),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~1\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~2_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~3\);

-- Location: LCCOMB_X69_Y63_N26
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~7_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (((!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~2_combout\ & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~2_combout\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~7_combout\);

-- Location: FF_X69_Y63_N27
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~7_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(1));

-- Location: LCCOMB_X70_Y63_N14
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~4_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(2) & ((GND) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~3\))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(2) & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~3\ $ (GND)))
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~5\ = CARRY((\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(2)) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(2),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~3\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~4_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~5\);

-- Location: LCCOMB_X69_Y63_N16
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~6_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (((\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~4_combout\) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ (\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~4_combout\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~6_combout\);

-- Location: FF_X69_Y63_N17
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~6_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(2));

-- Location: LCCOMB_X70_Y63_N16
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~6_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(3) & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~5\ & VCC)) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(3) & 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~5\))
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~7\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(3) & !\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(3),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~5\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~6_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~7\);

-- Location: LCCOMB_X69_Y63_N14
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~5_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\) # ((\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~6_combout\) # (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~6_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~5_combout\);

-- Location: FF_X69_Y63_N15
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~5_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(3));

-- Location: LCCOMB_X70_Y63_N18
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~8_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(4) & ((GND) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~7\))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(4) & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~7\ $ (GND)))
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~9\ = CARRY((\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(4)) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(4),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~7\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~8_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~9\);

-- Location: LCCOMB_X69_Y63_N4
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~4_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~8_combout\ & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~8_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~4_combout\);

-- Location: FF_X69_Y63_N5
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~4_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(4));

-- Location: LCCOMB_X70_Y63_N20
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~10_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(5) & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~9\ & VCC)) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(5) & 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~9\))
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~11\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(5) & !\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(5),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~9\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~10_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~11\);

-- Location: LCCOMB_X69_Y63_N10
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~3_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (((\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~10_combout\) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ (\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~10_combout\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~3_combout\);

-- Location: FF_X69_Y63_N11
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~3_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(5));

-- Location: LCCOMB_X70_Y63_N22
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~12_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(6) & ((GND) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~11\))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(6) & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~11\ $ (GND)))
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~13\ = CARRY((\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(6)) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(6),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~11\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~12_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~13\);

-- Location: LCCOMB_X69_Y63_N0
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~2_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~12_combout\ & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~12_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~2_combout\);

-- Location: FF_X69_Y63_N1
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~2_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(6));

-- Location: LCCOMB_X70_Y63_N24
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~14_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(7) & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~13\ & VCC)) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(7) & 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~13\))
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~15\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(7) & !\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(7),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~13\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~14_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~15\);

-- Location: LCCOMB_X69_Y63_N30
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~1_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~14_combout\) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ (\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~14_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~1_combout\);

-- Location: FF_X69_Y63_N31
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(7));

-- Location: LCCOMB_X70_Y63_N26
\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~16_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~15\ $ (\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(8),
	cin => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~15\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~16_combout\);

-- Location: LCCOMB_X69_Y63_N12
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~16_combout\ & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|Add0~16_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~0_combout\);

-- Location: FF_X69_Y63_N13
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(8));

-- Location: LCCOMB_X70_Y63_N8
\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~0_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(5) & (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(7) & (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(6) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(5),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(7),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(6),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(8),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y63_N2
\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~1_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(2) & (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(4) & (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(1) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(2),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(4),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(1),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(3),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y63_N4
\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(0) & (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~0_combout\ & \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_rate_counter\(0),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~0_combout\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~1_combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\);

-- Location: LCCOMB_X69_Y63_N28
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ $ 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|Equal0~2_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~0_combout\);

-- Location: FF_X69_Y63_N29
\my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~q\);

-- Location: LCCOMB_X69_Y63_N22
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\) # 
-- ((\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0) & \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|baud_clk_en~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\);

-- Location: FF_X68_Y63_N27
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[6]~9_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(6));

-- Location: LCCOMB_X68_Y63_N16
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[5]~8_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(6)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(6),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[5]~8_combout\);

-- Location: FF_X68_Y63_N17
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[5]~8_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(5));

-- Location: LCCOMB_X68_Y63_N14
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[4]~7_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(5)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(5),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[4]~7_combout\);

-- Location: FF_X68_Y63_N15
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[4]~7_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(4));

-- Location: LCCOMB_X68_Y63_N20
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[3]~6_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(4)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(4),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[3]~6_combout\);

-- Location: FF_X68_Y63_N21
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[3]~6_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(3));

-- Location: LCCOMB_X68_Y63_N10
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[2]~5_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(3)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(3),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[2]~5_combout\);

-- Location: FF_X68_Y63_N11
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[2]~5_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(2));

-- Location: LCCOMB_X68_Y63_N0
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[1]~4_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(2)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(2),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[1]~4_combout\);

-- Location: FF_X68_Y63_N1
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[1]~4_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(1));

-- Location: LCCOMB_X68_Y63_N12
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[0]~1_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(1)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(1),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[0]~1_combout\);

-- Location: FF_X68_Y63_N13
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[0]~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0));

-- Location: LCCOMB_X69_Y63_N24
\my_qsys|uart_0|the_unsaved_uart_0_rx|always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|always4~0_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0) & (\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\ & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxsync_rxdxx1~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|always4~0_combout\);

-- Location: FF_X69_Y63_N25
\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|always4~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\);

-- Location: LCCOMB_X69_Y63_N18
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[9]~3_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\) # (\my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|the_altera_std_synchronizer|dreg\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[9]~3_combout\);

-- Location: FF_X69_Y63_N19
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[9]~3_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(9));

-- Location: LCCOMB_X68_Y63_N18
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[8]~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(9)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(9),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[8]~0_combout\);

-- Location: FF_X68_Y63_N19
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[8]~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(8));

-- Location: LCCOMB_X68_Y63_N22
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[7]~2_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(8)) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(8),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|do_start_rx~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[7]~2_combout\);

-- Location: FF_X68_Y63_N23
\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_in[7]~2_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(7));

-- Location: LCCOMB_X67_Y63_N2
\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[6]~feeder_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(7),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[6]~feeder_combout\);

-- Location: FF_X67_Y63_N13
\my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxrx_in_processxx3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0),
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxrx_in_processxx3~q\);

-- Location: LCCOMB_X67_Y63_N12
\my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0) & \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxrx_in_processxx3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(0),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|delayed_unxrx_in_processxx3~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\);

-- Location: FF_X67_Y63_N3
\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[6]~feeder_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data\(6));

-- Location: LCCOMB_X68_Y62_N0
\my_qsys|new_component_0|avm_address_r[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|avm_address_r[3]~0_combout\ = !\my_qsys|new_component_0|state_r.S_GET_KEY~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	combout => \my_qsys|new_component_0|avm_address_r[3]~0_combout\);

-- Location: FF_X68_Y62_N1
\my_qsys|new_component_0|avm_address_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|avm_address_r[3]~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|avm_address_w~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|avm_address_r\(3));

-- Location: LCCOMB_X67_Y63_N20
\my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[6]~1_combout\ = (!\my_qsys|new_component_0|avm_address_r\(2) & ((\my_qsys|new_component_0|avm_address_r\(3) & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data\(6)))) # 
-- (!\my_qsys|new_component_0|avm_address_r\(3) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|avm_address_r\(2),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data\(6),
	datad => \my_qsys|new_component_0|avm_address_r\(3),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[6]~1_combout\);

-- Location: FF_X67_Y63_N21
\my_qsys|uart_0|the_unsaved_uart_0_regs|readdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[6]~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_regs|readdata\(6));

-- Location: FF_X68_Y62_N19
\my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \my_qsys|uart_0|the_unsaved_uart_0_regs|readdata\(6),
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(6));

-- Location: LCCOMB_X67_Y63_N6
\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[7]~feeder_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|unxshiftxrxd_shift_regxshift_reg_start_bit_nxx6_out\(8),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[7]~feeder_combout\);

-- Location: FF_X67_Y63_N7
\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data[7]~feeder_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data\(7));

-- Location: LCCOMB_X67_Y63_N22
\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~0_combout\ = (\my_qsys|new_component_0|avm_read_r~q\) # (((\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\) # (\my_qsys|new_component_0|avm_address_r\(2))) # 
-- (!\my_qsys|new_component_0|avm_address_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|avm_read_r~q\,
	datab => \my_qsys|new_component_0|avm_address_r\(3),
	datac => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\,
	datad => \my_qsys|new_component_0|avm_address_r\(2),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~0_combout\);

-- Location: LCCOMB_X67_Y63_N8
\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~1_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~0_combout\ & (((\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~q\) # 
-- (\my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\)))) # (!\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~0_combout\ & (\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\ & 
-- ((\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~q\) # (\my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~0_combout\,
	datab => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_rx|got_new_char~combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~1_combout\);

-- Location: FF_X67_Y63_N9
\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~q\);

-- Location: LCCOMB_X67_Y63_N18
\my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[7]~0_combout\ = (!\my_qsys|new_component_0|avm_address_r\(2) & ((\my_qsys|new_component_0|avm_address_r\(3) & (\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data\(7))) # 
-- (!\my_qsys|new_component_0|avm_address_r\(3) & ((\my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_data\(7),
	datab => \my_qsys|new_component_0|avm_address_r\(3),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_rx|rx_char_ready~q\,
	datad => \my_qsys|new_component_0|avm_address_r\(2),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[7]~0_combout\);

-- Location: FF_X67_Y63_N19
\my_qsys|uart_0|the_unsaved_uart_0_regs|readdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_regs|selected_read_data[7]~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_regs|readdata\(7));

-- Location: FF_X68_Y62_N31
\my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \my_qsys|uart_0|the_unsaved_uart_0_regs|readdata\(7),
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(7));

-- Location: LCCOMB_X68_Y62_N18
\my_qsys|new_component_0|state_w~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|state_w~4_combout\ = (\my_qsys|new_component_0|waiting_r.WAITING_READ~q\ & (\my_qsys|new_component_0|waiting_r.WAITING_WRITE~q\ & (\my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(6)))) # 
-- (!\my_qsys|new_component_0|waiting_r.WAITING_READ~q\ & (((\my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|waiting_r.WAITING_WRITE~q\,
	datab => \my_qsys|new_component_0|waiting_r.WAITING_READ~q\,
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(6),
	datad => \my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(7),
	combout => \my_qsys|new_component_0|state_w~4_combout\);

-- Location: LCCOMB_X67_Y62_N4
\my_qsys|new_component_0|state_w~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|state_w~5_combout\ = (\my_qsys|new_component_0|state_w~4_combout\ & ((\my_qsys|new_component_0|avm_read_r~q\ & (\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\)) # 
-- (!\my_qsys|new_component_0|avm_read_r~q\ & ((\my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\,
	datab => \my_qsys|new_component_0|avm_read_r~q\,
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0),
	datad => \my_qsys|new_component_0|state_w~4_combout\,
	combout => \my_qsys|new_component_0|state_w~5_combout\);

-- Location: LCCOMB_X67_Y62_N18
\my_qsys|new_component_0|bytes_counter_r[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[0]~19_combout\ = (!\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & !\my_qsys|new_component_0|state_r.S_GET_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	datad => \my_qsys|new_component_0|state_r.S_GET_DATA~q\,
	combout => \my_qsys|new_component_0|bytes_counter_r[0]~19_combout\);

-- Location: LCCOMB_X67_Y62_N20
\my_qsys|new_component_0|bytes_counter_r[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\ = (\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\ & (\my_qsys|new_component_0|state_w~5_combout\ & (!\my_qsys|new_component_0|state_r.S_GET_KEY~q\))) # 
-- (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\ & (((\my_qsys|new_component_0|state_w~5_combout\ & !\my_qsys|new_component_0|state_r.S_GET_KEY~q\)) # 
-- (!\my_qsys|new_component_0|bytes_counter_r[0]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datab => \my_qsys|new_component_0|state_w~5_combout\,
	datac => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datad => \my_qsys|new_component_0|bytes_counter_r[0]~19_combout\,
	combout => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\);

-- Location: FF_X66_Y62_N9
\my_qsys|new_component_0|bytes_counter_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|bytes_counter_r[0]~7_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\,
	ena => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|bytes_counter_r\(0));

-- Location: LCCOMB_X66_Y62_N10
\my_qsys|new_component_0|bytes_counter_r[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[1]~9_combout\ = (\my_qsys|new_component_0|bytes_counter_r\(1) & (!\my_qsys|new_component_0|bytes_counter_r[0]~8\)) # (!\my_qsys|new_component_0|bytes_counter_r\(1) & 
-- ((\my_qsys|new_component_0|bytes_counter_r[0]~8\) # (GND)))
-- \my_qsys|new_component_0|bytes_counter_r[1]~10\ = CARRY((!\my_qsys|new_component_0|bytes_counter_r[0]~8\) # (!\my_qsys|new_component_0|bytes_counter_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|bytes_counter_r\(1),
	datad => VCC,
	cin => \my_qsys|new_component_0|bytes_counter_r[0]~8\,
	combout => \my_qsys|new_component_0|bytes_counter_r[1]~9_combout\,
	cout => \my_qsys|new_component_0|bytes_counter_r[1]~10\);

-- Location: FF_X66_Y62_N11
\my_qsys|new_component_0|bytes_counter_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|bytes_counter_r[1]~9_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\,
	ena => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|bytes_counter_r\(1));

-- Location: LCCOMB_X66_Y62_N12
\my_qsys|new_component_0|bytes_counter_r[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[2]~11_combout\ = (\my_qsys|new_component_0|bytes_counter_r\(2) & (\my_qsys|new_component_0|bytes_counter_r[1]~10\ $ (GND))) # (!\my_qsys|new_component_0|bytes_counter_r\(2) & 
-- (!\my_qsys|new_component_0|bytes_counter_r[1]~10\ & VCC))
-- \my_qsys|new_component_0|bytes_counter_r[2]~12\ = CARRY((\my_qsys|new_component_0|bytes_counter_r\(2) & !\my_qsys|new_component_0|bytes_counter_r[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|bytes_counter_r\(2),
	datad => VCC,
	cin => \my_qsys|new_component_0|bytes_counter_r[1]~10\,
	combout => \my_qsys|new_component_0|bytes_counter_r[2]~11_combout\,
	cout => \my_qsys|new_component_0|bytes_counter_r[2]~12\);

-- Location: FF_X66_Y62_N13
\my_qsys|new_component_0|bytes_counter_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|bytes_counter_r[2]~11_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\,
	ena => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|bytes_counter_r\(2));

-- Location: LCCOMB_X66_Y62_N14
\my_qsys|new_component_0|bytes_counter_r[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[3]~13_combout\ = (\my_qsys|new_component_0|bytes_counter_r\(3) & (!\my_qsys|new_component_0|bytes_counter_r[2]~12\)) # (!\my_qsys|new_component_0|bytes_counter_r\(3) & 
-- ((\my_qsys|new_component_0|bytes_counter_r[2]~12\) # (GND)))
-- \my_qsys|new_component_0|bytes_counter_r[3]~14\ = CARRY((!\my_qsys|new_component_0|bytes_counter_r[2]~12\) # (!\my_qsys|new_component_0|bytes_counter_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|bytes_counter_r\(3),
	datad => VCC,
	cin => \my_qsys|new_component_0|bytes_counter_r[2]~12\,
	combout => \my_qsys|new_component_0|bytes_counter_r[3]~13_combout\,
	cout => \my_qsys|new_component_0|bytes_counter_r[3]~14\);

-- Location: FF_X66_Y62_N15
\my_qsys|new_component_0|bytes_counter_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|bytes_counter_r[3]~13_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\,
	ena => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|bytes_counter_r\(3));

-- Location: LCCOMB_X66_Y62_N16
\my_qsys|new_component_0|bytes_counter_r[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[4]~15_combout\ = (\my_qsys|new_component_0|bytes_counter_r\(4) & (\my_qsys|new_component_0|bytes_counter_r[3]~14\ $ (GND))) # (!\my_qsys|new_component_0|bytes_counter_r\(4) & 
-- (!\my_qsys|new_component_0|bytes_counter_r[3]~14\ & VCC))
-- \my_qsys|new_component_0|bytes_counter_r[4]~16\ = CARRY((\my_qsys|new_component_0|bytes_counter_r\(4) & !\my_qsys|new_component_0|bytes_counter_r[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|bytes_counter_r\(4),
	datad => VCC,
	cin => \my_qsys|new_component_0|bytes_counter_r[3]~14\,
	combout => \my_qsys|new_component_0|bytes_counter_r[4]~15_combout\,
	cout => \my_qsys|new_component_0|bytes_counter_r[4]~16\);

-- Location: FF_X66_Y62_N17
\my_qsys|new_component_0|bytes_counter_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|bytes_counter_r[4]~15_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\,
	ena => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|bytes_counter_r\(4));

-- Location: LCCOMB_X66_Y62_N18
\my_qsys|new_component_0|bytes_counter_r[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[5]~17_combout\ = (\my_qsys|new_component_0|bytes_counter_r\(5) & (!\my_qsys|new_component_0|bytes_counter_r[4]~16\)) # (!\my_qsys|new_component_0|bytes_counter_r\(5) & 
-- ((\my_qsys|new_component_0|bytes_counter_r[4]~16\) # (GND)))
-- \my_qsys|new_component_0|bytes_counter_r[5]~18\ = CARRY((!\my_qsys|new_component_0|bytes_counter_r[4]~16\) # (!\my_qsys|new_component_0|bytes_counter_r\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|bytes_counter_r\(5),
	datad => VCC,
	cin => \my_qsys|new_component_0|bytes_counter_r[4]~16\,
	combout => \my_qsys|new_component_0|bytes_counter_r[5]~17_combout\,
	cout => \my_qsys|new_component_0|bytes_counter_r[5]~18\);

-- Location: FF_X66_Y62_N19
\my_qsys|new_component_0|bytes_counter_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|bytes_counter_r[5]~17_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\,
	ena => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|bytes_counter_r\(5));

-- Location: LCCOMB_X66_Y62_N20
\my_qsys|new_component_0|bytes_counter_r[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|bytes_counter_r[6]~21_combout\ = \my_qsys|new_component_0|bytes_counter_r[5]~18\ $ (!\my_qsys|new_component_0|bytes_counter_r\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \my_qsys|new_component_0|bytes_counter_r\(6),
	cin => \my_qsys|new_component_0|bytes_counter_r[5]~18\,
	combout => \my_qsys|new_component_0|bytes_counter_r[6]~21_combout\);

-- Location: FF_X66_Y62_N21
\my_qsys|new_component_0|bytes_counter_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|bytes_counter_r[6]~21_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \my_qsys|new_component_0|ALT_INV_state_r.S_GET_KEY~q\,
	ena => \my_qsys|new_component_0|bytes_counter_r[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|bytes_counter_r\(6));

-- Location: LCCOMB_X67_Y62_N28
\my_qsys|new_component_0|Selector277~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector277~1_combout\ = (\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & ((\my_qsys|new_component_0|bytes_counter_r\(6)) # (\my_qsys|new_component_0|bytes_counter_r\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|bytes_counter_r\(6),
	datac => \my_qsys|new_component_0|bytes_counter_r\(5),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector277~1_combout\);

-- Location: LCCOMB_X67_Y62_N10
\my_qsys|new_component_0|Selector277~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector277~2_combout\ = ((\my_qsys|new_component_0|avm_read_r~q\ & (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\)) # (!\my_qsys|new_component_0|avm_read_r~q\ & 
-- ((!\my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0))))) # (!\my_qsys|new_component_0|Selector277~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\,
	datab => \my_qsys|new_component_0|avm_read_r~q\,
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|read_latency_shift_reg\(0),
	datad => \my_qsys|new_component_0|Selector277~1_combout\,
	combout => \my_qsys|new_component_0|Selector277~2_combout\);

-- Location: FF_X67_Y62_N11
\my_qsys|new_component_0|waiting_r.WAITING_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector277~2_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|Selector277~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|waiting_r.WAITING_WRITE~q\);

-- Location: LCCOMB_X68_Y62_N30
\my_qsys|new_component_0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector2~1_combout\ = (\my_qsys|new_component_0|waiting_r.WAITING_READ~q\ & (\my_qsys|new_component_0|waiting_r.WAITING_WRITE~q\ & (\my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(6)))) # 
-- (!\my_qsys|new_component_0|waiting_r.WAITING_READ~q\ & (((\my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|waiting_r.WAITING_WRITE~q\,
	datab => \my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(6),
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|av_readdata_pre\(7),
	datad => \my_qsys|new_component_0|waiting_r.WAITING_READ~q\,
	combout => \my_qsys|new_component_0|Selector2~1_combout\);

-- Location: LCCOMB_X68_Y62_N22
\my_qsys|new_component_0|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector2~2_combout\ = (\my_qsys|new_component_0|Selector2~1_combout\ & (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\ & !\my_qsys|new_component_0|state_r.S_GET_KEY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector2~1_combout\,
	datab => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datad => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	combout => \my_qsys|new_component_0|Selector2~2_combout\);

-- Location: LCCOMB_X68_Y62_N2
\my_qsys|new_component_0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector0~0_combout\ = (\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & (!\my_qsys|new_component_0|Selector277~2_combout\)) # (!\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & 
-- (\my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\ & ((\my_qsys|new_component_0|rsa256_core|finished_r~q\) # (!\my_qsys|new_component_0|Selector277~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector277~2_combout\,
	datab => \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\,
	datac => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector0~0_combout\);

-- Location: LCCOMB_X68_Y62_N28
\my_qsys|new_component_0|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector0~1_combout\ = (\my_qsys|new_component_0|Selector2~2_combout\) # ((\my_qsys|new_component_0|Selector2~3_combout\) # ((!\my_qsys|new_component_0|Selector0~0_combout\ & \my_qsys|new_component_0|state_r.S_GET_KEY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector2~2_combout\,
	datab => \my_qsys|new_component_0|Selector0~0_combout\,
	datac => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datad => \my_qsys|new_component_0|Selector2~3_combout\,
	combout => \my_qsys|new_component_0|Selector0~1_combout\);

-- Location: FF_X68_Y62_N29
\my_qsys|new_component_0|state_r.S_GET_KEY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector0~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|state_r.S_GET_KEY~q\);

-- Location: LCCOMB_X67_Y62_N24
\my_qsys|new_component_0|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector11~1_combout\ = (\my_qsys|new_component_0|state_r.S_GET_DATA~q\ & ((\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\) # ((!\my_qsys|new_component_0|bytes_counter_r\(5)) # 
-- (!\my_qsys|new_component_0|bytes_counter_r\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|av_waitrequest~0_combout\,
	datab => \my_qsys|new_component_0|bytes_counter_r\(6),
	datac => \my_qsys|new_component_0|bytes_counter_r\(5),
	datad => \my_qsys|new_component_0|state_r.S_GET_DATA~q\,
	combout => \my_qsys|new_component_0|Selector11~1_combout\);

-- Location: LCCOMB_X67_Y62_N2
\my_qsys|new_component_0|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector11~2_combout\ = (!\my_qsys|new_component_0|avm_read_r~q\ & ((\my_qsys|new_component_0|Selector11~1_combout\) # ((!\my_qsys|new_component_0|state_r.S_GET_KEY~q\ & !\my_qsys|new_component_0|state_w~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|state_r.S_GET_KEY~q\,
	datab => \my_qsys|new_component_0|Selector11~1_combout\,
	datac => \my_qsys|new_component_0|state_w~5_combout\,
	datad => \my_qsys|new_component_0|avm_read_r~q\,
	combout => \my_qsys|new_component_0|Selector11~2_combout\);

-- Location: LCCOMB_X67_Y62_N22
\my_qsys|new_component_0|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector11~0_combout\ = (\my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\ & (((\my_qsys|new_component_0|rsa256_core|finished_r~q\)) # (!\my_qsys|new_component_0|avm_read_r~q\))) # 
-- (!\my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\ & (!\my_qsys|new_component_0|avm_read_r~q\ & ((\my_qsys|new_component_0|state_r.S_SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\,
	datab => \my_qsys|new_component_0|avm_read_r~q\,
	datac => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector11~0_combout\);

-- Location: LCCOMB_X66_Y62_N28
\my_qsys|new_component_0|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector11~3_combout\ = (!\my_qsys|new_component_0|Selector11~2_combout\ & (!\my_qsys|new_component_0|Selector1~1_combout\ & !\my_qsys|new_component_0|Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector11~2_combout\,
	datac => \my_qsys|new_component_0|Selector1~1_combout\,
	datad => \my_qsys|new_component_0|Selector11~0_combout\,
	combout => \my_qsys|new_component_0|Selector11~3_combout\);

-- Location: FF_X66_Y62_N29
\my_qsys|new_component_0|avm_read_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector11~3_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|avm_read_r~q\);

-- Location: LCCOMB_X67_Y63_N0
\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\ = (\my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\ & ((\my_qsys|new_component_0|avm_address_r\(2)) # ((!\my_qsys|new_component_0|avm_read_r~q\ & 
-- !\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|avm_read_r~q\,
	datab => \my_qsys|mm_interconnect_0|uart_0_s1_translator|waitrequest_reset_override~q\,
	datac => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~q\,
	datad => \my_qsys|new_component_0|avm_address_r\(2),
	combout => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\);

-- Location: LCCOMB_X67_Y63_N14
\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~1_combout\ = (!\my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\ & ((\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\) 
-- # (\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~0_combout\,
	datac => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\,
	datad => \my_qsys|mm_interconnect_0|new_component_0_avalon_master_translator|read_accepted~0_combout\,
	combout => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~1_combout\);

-- Location: FF_X67_Y63_N15
\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~1_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\);

-- Location: LCCOMB_X67_Y63_N28
\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\ = (!\my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1) & (\my_qsys|new_component_0|avm_address_r\(3) & \my_qsys|new_component_0|avm_address_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|mm_interconnect_0|uart_0_s1_translator|wait_latency_counter\(1),
	datab => \my_qsys|new_component_0|avm_address_r\(3),
	datad => \my_qsys|new_component_0|avm_address_r\(2),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\);

-- Location: LCCOMB_X67_Y63_N16
\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & (!\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\ & 
-- ((\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\)))) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & ((\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\) # 
-- ((!\my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\ & \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datab => \my_qsys|mm_interconnect_0|uart_0_s1_translator|end_begintransfer~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~0_combout\);

-- Location: FF_X67_Y63_N17
\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\);

-- Location: LCCOMB_X70_Y62_N6
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~9_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(0) $ (VCC)
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~10\ = CARRY(\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(0),
	datad => VCC,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~9_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~10\);

-- Location: LCCOMB_X70_Y62_N24
\my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(3) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(2) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(1) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(3),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(2),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(1),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y62_N18
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~21_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(6) & ((GND) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~20\))) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(6) & (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~20\ $ (GND)))
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~22\ = CARRY((\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(6)) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(6),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~20\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~21_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~22\);

-- Location: LCCOMB_X70_Y62_N20
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~23_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(7) & (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~22\ & VCC)) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(7) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~22\))
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~24\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(7) & !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(7),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~22\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~23_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~24\);

-- Location: LCCOMB_X70_Y62_N4
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

-- Location: FF_X70_Y62_N21
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(7));

-- Location: LCCOMB_X70_Y62_N22
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[8]~25_combout\ = \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(8) $ (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(8),
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[7]~24\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[8]~25_combout\);

-- Location: FF_X70_Y62_N23
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[8]~25_combout\,
	asdata => VCC,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(8));

-- Location: LCCOMB_X69_Y62_N6
\my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\) # ((\my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0_combout\ & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(8),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\);

-- Location: FF_X70_Y62_N7
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~9_combout\,
	asdata => VCC,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(0));

-- Location: LCCOMB_X70_Y62_N8
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~11_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(1) & (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~10\ & VCC)) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(1) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~10\))
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~12\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(1) & !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(1),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[0]~10\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~11_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~12\);

-- Location: FF_X70_Y62_N9
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~11_combout\,
	asdata => VCC,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(1));

-- Location: LCCOMB_X70_Y62_N10
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~13_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(2) & ((GND) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~12\))) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(2) & (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~12\ $ (GND)))
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~14\ = CARRY((\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(2)) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(2),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[1]~12\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~13_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~14\);

-- Location: FF_X70_Y62_N11
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(2));

-- Location: LCCOMB_X70_Y62_N12
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~15_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(3) & (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~14\ & VCC)) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(3) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~14\))
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~16\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(3) & !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(3),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[2]~14\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~15_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~16\);

-- Location: FF_X70_Y62_N13
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~15_combout\,
	asdata => VCC,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(3));

-- Location: LCCOMB_X70_Y62_N14
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~17_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(4) & ((GND) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~16\))) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(4) & (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~16\ $ (GND)))
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~18\ = CARRY((\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(4)) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(4),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[3]~16\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~17_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~18\);

-- Location: FF_X70_Y62_N15
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~17_combout\,
	asdata => VCC,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(4));

-- Location: LCCOMB_X70_Y62_N16
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~19_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(5) & (\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~18\ & VCC)) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(5) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~18\))
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~20\ = CARRY((!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(5) & !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(5),
	datad => VCC,
	cin => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[4]~18\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~19_combout\,
	cout => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~20\);

-- Location: FF_X70_Y62_N17
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[5]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(5));

-- Location: FF_X70_Y62_N19
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter[6]~21_combout\,
	asdata => VCC,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \my_qsys|uart_0|the_unsaved_uart_0_tx|always4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(6));

-- Location: LCCOMB_X70_Y62_N2
\my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(6) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(5) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(4) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(6),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(5),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(4),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(7),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1_combout\);

-- Location: LCCOMB_X69_Y62_N16
\my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~2_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1_combout\ & (\my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0_combout\ & !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~1_combout\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~0_combout\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_rate_counter\(8),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~2_combout\);

-- Location: FF_X69_Y62_N17
\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|Equal0~2_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\);

-- Location: LCCOMB_X69_Y62_N8
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~3_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\) # 
-- ((\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(9) & !\my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(9),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~3_combout\);

-- Location: FF_X69_Y62_N9
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~3_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(9));

-- Location: LCCOMB_X69_Y62_N10
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[8]~4_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(9) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(9),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[8]~4_combout\);

-- Location: LCCOMB_X69_Y62_N28
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\) # ((\my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0~combout\ & 
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0~combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\);

-- Location: FF_X69_Y62_N11
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[8]~4_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(8));

-- Location: LCCOMB_X69_Y62_N20
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[7]~5_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & 
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(8),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[7]~5_combout\);

-- Location: FF_X69_Y62_N21
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[7]~5_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(7));

-- Location: LCCOMB_X69_Y62_N14
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[6]~6_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & 
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(7),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[6]~6_combout\);

-- Location: FF_X69_Y62_N15
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[6]~6_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(6));

-- Location: LCCOMB_X69_Y62_N26
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[5]~7_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(6) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(6),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[5]~7_combout\);

-- Location: FF_X69_Y62_N27
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[5]~7_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(5));

-- Location: LCCOMB_X69_Y62_N12
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[4]~8_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(5) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(5),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[4]~8_combout\);

-- Location: FF_X69_Y62_N13
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[4]~8_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(4));

-- Location: LCCOMB_X69_Y62_N30
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[3]~9_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & 
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(4),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[3]~9_combout\);

-- Location: FF_X69_Y62_N31
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[3]~9_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(3));

-- Location: LCCOMB_X69_Y62_N0
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[2]~10_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(3) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(3),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[2]~10_combout\);

-- Location: FF_X69_Y62_N1
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[2]~10_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(2));

-- Location: LCCOMB_X66_Y62_N30
\my_qsys|new_component_0|dec_r[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|dec_r[0]~4_combout\ = (\my_qsys|new_component_0|dec_r\(0) & (((\my_qsys|new_component_0|bytes_counter_r\(5)) # (\my_qsys|new_component_0|bytes_counter_r\(6))) # (!\my_qsys|new_component_0|Selector277~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector277~0_combout\,
	datab => \my_qsys|new_component_0|bytes_counter_r\(5),
	datac => \my_qsys|new_component_0|dec_r\(0),
	datad => \my_qsys|new_component_0|bytes_counter_r\(6),
	combout => \my_qsys|new_component_0|dec_r[0]~4_combout\);

-- Location: LCCOMB_X66_Y62_N4
\my_qsys|new_component_0|dec_r[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|dec_r[0]~5_combout\ = (\my_qsys|new_component_0|dec_r[0]~4_combout\) # ((\my_qsys|new_component_0|rsa256_core|finished_r~q\ & (!\my_qsys|new_component_0|state_r.S_SEND_DATA~q\ & 
-- \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r[0]~4_combout\,
	datab => \my_qsys|new_component_0|rsa256_core|finished_r~q\,
	datac => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	datad => \my_qsys|new_component_0|state_r.S_WAIT_CALCULATE~q\,
	combout => \my_qsys|new_component_0|dec_r[0]~5_combout\);

-- Location: FF_X66_Y62_N5
\my_qsys|new_component_0|dec_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|dec_r[0]~5_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(0));

-- Location: LCCOMB_X66_Y63_N30
\my_qsys|new_component_0|Selector266~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector266~0_combout\ = (\my_qsys|new_component_0|dec_r\(0) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r\(0),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector266~0_combout\);

-- Location: LCCOMB_X66_Y62_N22
\my_qsys|new_component_0|dec_r[151]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|dec_r[151]~3_combout\ = ((\my_qsys|new_component_0|Selector277~0_combout\ & (!\my_qsys|new_component_0|bytes_counter_r\(5) & !\my_qsys|new_component_0|bytes_counter_r\(6)))) # (!\my_qsys|new_component_0|dec_r[151]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|Selector277~0_combout\,
	datab => \my_qsys|new_component_0|bytes_counter_r\(5),
	datac => \my_qsys|new_component_0|dec_r[151]~2_combout\,
	datad => \my_qsys|new_component_0|bytes_counter_r\(6),
	combout => \my_qsys|new_component_0|dec_r[151]~3_combout\);

-- Location: FF_X66_Y63_N31
\my_qsys|new_component_0|dec_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector266~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(8));

-- Location: LCCOMB_X66_Y63_N4
\my_qsys|new_component_0|Selector258~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector258~0_combout\ = (\my_qsys|new_component_0|dec_r\(8) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(8),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector258~0_combout\);

-- Location: FF_X66_Y63_N5
\my_qsys|new_component_0|dec_r[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector258~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(16));

-- Location: LCCOMB_X66_Y63_N18
\my_qsys|new_component_0|Selector250~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector250~0_combout\ = (\my_qsys|new_component_0|dec_r\(16) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(16),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector250~0_combout\);

-- Location: FF_X66_Y63_N19
\my_qsys|new_component_0|dec_r[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector250~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(24));

-- Location: LCCOMB_X66_Y63_N16
\my_qsys|new_component_0|Selector242~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector242~0_combout\ = (\my_qsys|new_component_0|dec_r\(24) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(24),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector242~0_combout\);

-- Location: FF_X66_Y63_N17
\my_qsys|new_component_0|dec_r[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector242~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(32));

-- Location: LCCOMB_X66_Y63_N22
\my_qsys|new_component_0|Selector234~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector234~0_combout\ = (\my_qsys|new_component_0|dec_r\(32) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(32),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector234~0_combout\);

-- Location: FF_X66_Y63_N23
\my_qsys|new_component_0|dec_r[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector234~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(40));

-- Location: LCCOMB_X66_Y63_N28
\my_qsys|new_component_0|Selector226~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector226~0_combout\ = (\my_qsys|new_component_0|dec_r\(40) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(40),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector226~0_combout\);

-- Location: FF_X66_Y63_N29
\my_qsys|new_component_0|dec_r[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector226~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(48));

-- Location: LCCOMB_X66_Y63_N2
\my_qsys|new_component_0|Selector218~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector218~0_combout\ = (\my_qsys|new_component_0|dec_r\(48) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(48),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector218~0_combout\);

-- Location: FF_X66_Y63_N3
\my_qsys|new_component_0|dec_r[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector218~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(56));

-- Location: LCCOMB_X66_Y63_N8
\my_qsys|new_component_0|Selector210~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector210~0_combout\ = (\my_qsys|new_component_0|dec_r\(56) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(56),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector210~0_combout\);

-- Location: FF_X66_Y63_N9
\my_qsys|new_component_0|dec_r[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector210~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(64));

-- Location: LCCOMB_X66_Y63_N14
\my_qsys|new_component_0|Selector202~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector202~0_combout\ = (\my_qsys|new_component_0|dec_r\(64) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(64),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector202~0_combout\);

-- Location: FF_X66_Y63_N15
\my_qsys|new_component_0|dec_r[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector202~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(72));

-- Location: LCCOMB_X66_Y63_N20
\my_qsys|new_component_0|Selector194~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector194~0_combout\ = (\my_qsys|new_component_0|dec_r\(72) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(72),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector194~0_combout\);

-- Location: FF_X66_Y63_N21
\my_qsys|new_component_0|dec_r[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector194~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(80));

-- Location: LCCOMB_X66_Y63_N10
\my_qsys|new_component_0|Selector186~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector186~0_combout\ = (\my_qsys|new_component_0|dec_r\(80) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(80),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector186~0_combout\);

-- Location: FF_X66_Y63_N11
\my_qsys|new_component_0|dec_r[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector186~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(88));

-- Location: LCCOMB_X66_Y63_N24
\my_qsys|new_component_0|Selector178~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector178~0_combout\ = (\my_qsys|new_component_0|dec_r\(88) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r\(88),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector178~0_combout\);

-- Location: FF_X66_Y63_N25
\my_qsys|new_component_0|dec_r[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector178~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(96));

-- Location: LCCOMB_X66_Y63_N6
\my_qsys|new_component_0|Selector170~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector170~0_combout\ = (\my_qsys|new_component_0|dec_r\(96) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(96),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector170~0_combout\);

-- Location: FF_X66_Y63_N7
\my_qsys|new_component_0|dec_r[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector170~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(104));

-- Location: LCCOMB_X66_Y63_N12
\my_qsys|new_component_0|Selector162~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector162~0_combout\ = (\my_qsys|new_component_0|dec_r\(104) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r\(104),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector162~0_combout\);

-- Location: FF_X66_Y63_N13
\my_qsys|new_component_0|dec_r[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector162~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(112));

-- Location: LCCOMB_X66_Y63_N26
\my_qsys|new_component_0|Selector154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector154~0_combout\ = (\my_qsys|new_component_0|dec_r\(112) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r\(112),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector154~0_combout\);

-- Location: FF_X66_Y63_N27
\my_qsys|new_component_0|dec_r[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector154~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(120));

-- Location: LCCOMB_X66_Y63_N0
\my_qsys|new_component_0|Selector146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector146~0_combout\ = (\my_qsys|new_component_0|dec_r\(120) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(120),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector146~0_combout\);

-- Location: FF_X66_Y63_N1
\my_qsys|new_component_0|dec_r[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector146~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(128));

-- Location: LCCOMB_X66_Y64_N4
\my_qsys|new_component_0|Selector138~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector138~0_combout\ = (\my_qsys|new_component_0|dec_r\(128) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(128),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector138~0_combout\);

-- Location: FF_X66_Y64_N5
\my_qsys|new_component_0|dec_r[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector138~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(136));

-- Location: LCCOMB_X66_Y64_N18
\my_qsys|new_component_0|Selector130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector130~0_combout\ = (\my_qsys|new_component_0|dec_r\(136) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(136),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector130~0_combout\);

-- Location: FF_X66_Y64_N19
\my_qsys|new_component_0|dec_r[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector130~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(144));

-- Location: LCCOMB_X66_Y64_N0
\my_qsys|new_component_0|Selector122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector122~0_combout\ = (\my_qsys|new_component_0|dec_r\(144) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(144),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector122~0_combout\);

-- Location: FF_X66_Y64_N1
\my_qsys|new_component_0|dec_r[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector122~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(152));

-- Location: LCCOMB_X66_Y64_N30
\my_qsys|new_component_0|Selector114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector114~0_combout\ = (\my_qsys|new_component_0|dec_r\(152) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(152),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector114~0_combout\);

-- Location: FF_X66_Y64_N31
\my_qsys|new_component_0|dec_r[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector114~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(160));

-- Location: LCCOMB_X66_Y64_N28
\my_qsys|new_component_0|Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector106~0_combout\ = (\my_qsys|new_component_0|dec_r\(160) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(160),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector106~0_combout\);

-- Location: FF_X66_Y64_N29
\my_qsys|new_component_0|dec_r[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector106~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(168));

-- Location: LCCOMB_X66_Y64_N2
\my_qsys|new_component_0|Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector98~0_combout\ = (\my_qsys|new_component_0|dec_r\(168) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(168),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector98~0_combout\);

-- Location: FF_X66_Y64_N3
\my_qsys|new_component_0|dec_r[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector98~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(176));

-- Location: LCCOMB_X66_Y64_N16
\my_qsys|new_component_0|Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector90~0_combout\ = (\my_qsys|new_component_0|dec_r\(176) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(176),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector90~0_combout\);

-- Location: FF_X66_Y64_N17
\my_qsys|new_component_0|dec_r[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector90~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(184));

-- Location: LCCOMB_X66_Y64_N22
\my_qsys|new_component_0|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector82~0_combout\ = (\my_qsys|new_component_0|dec_r\(184) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(184),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector82~0_combout\);

-- Location: FF_X66_Y64_N23
\my_qsys|new_component_0|dec_r[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector82~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(192));

-- Location: LCCOMB_X66_Y64_N20
\my_qsys|new_component_0|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector74~0_combout\ = (\my_qsys|new_component_0|dec_r\(192) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(192),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector74~0_combout\);

-- Location: FF_X66_Y64_N21
\my_qsys|new_component_0|dec_r[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector74~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(200));

-- Location: LCCOMB_X66_Y64_N26
\my_qsys|new_component_0|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector66~0_combout\ = (\my_qsys|new_component_0|dec_r\(200) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|new_component_0|dec_r\(200),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector66~0_combout\);

-- Location: FF_X66_Y64_N27
\my_qsys|new_component_0|dec_r[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector66~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(208));

-- Location: LCCOMB_X66_Y64_N8
\my_qsys|new_component_0|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector58~0_combout\ = (\my_qsys|new_component_0|dec_r\(208) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(208),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector58~0_combout\);

-- Location: FF_X66_Y64_N9
\my_qsys|new_component_0|dec_r[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector58~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(216));

-- Location: LCCOMB_X66_Y64_N6
\my_qsys|new_component_0|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector50~0_combout\ = (\my_qsys|new_component_0|dec_r\(216) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|new_component_0|dec_r\(216),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector50~0_combout\);

-- Location: FF_X66_Y64_N7
\my_qsys|new_component_0|dec_r[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector50~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(224));

-- Location: LCCOMB_X66_Y64_N12
\my_qsys|new_component_0|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector42~0_combout\ = (\my_qsys|new_component_0|dec_r\(224) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r\(224),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector42~0_combout\);

-- Location: FF_X66_Y64_N13
\my_qsys|new_component_0|dec_r[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector42~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(232));

-- Location: LCCOMB_X66_Y64_N10
\my_qsys|new_component_0|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector34~0_combout\ = (\my_qsys|new_component_0|dec_r\(232) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r\(232),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector34~0_combout\);

-- Location: FF_X66_Y64_N11
\my_qsys|new_component_0|dec_r[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector34~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(240));

-- Location: LCCOMB_X66_Y64_N24
\my_qsys|new_component_0|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|new_component_0|Selector26~0_combout\ = (\my_qsys|new_component_0|dec_r\(240) & \my_qsys|new_component_0|state_r.S_SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|new_component_0|dec_r\(240),
	datad => \my_qsys|new_component_0|state_r.S_SEND_DATA~q\,
	combout => \my_qsys|new_component_0|Selector26~0_combout\);

-- Location: FF_X66_Y64_N25
\my_qsys|new_component_0|dec_r[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|new_component_0|Selector26~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|new_component_0|dec_r[151]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|new_component_0|dec_r\(248));

-- Location: LCCOMB_X68_Y62_N26
\my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data[0]~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\ & (\my_qsys|new_component_0|dec_r\(248))) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\ & 
-- ((\my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_wr_strobe_onset~0_combout\,
	datac => \my_qsys|new_component_0|dec_r\(248),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data[0]~0_combout\);

-- Location: FF_X69_Y62_N3
\my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data[0]~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data\(0));

-- Location: LCCOMB_X69_Y62_N4
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[1]~11_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & ((\my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data\(0)))) # 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(2),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_regs|tx_data\(0),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[1]~11_combout\);

-- Location: FF_X69_Y62_N5
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[1]~11_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(1));

-- Location: LCCOMB_X69_Y62_N24
\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(8) & 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(6) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(9) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(8),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(6),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(9),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(7),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0_combout\);

-- Location: LCCOMB_X69_Y62_N18
\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(5) & 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(2) & (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(3) & 
-- !\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(5),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(2),
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(3),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(4),
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1_combout\);

-- Location: LCCOMB_X68_Y62_N10
\my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0~combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(1)) # 
-- (((\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(0)) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1_combout\)) # (!\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(1),
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(0),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1_combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0~combout\);

-- Location: LCCOMB_X68_Y62_N16
\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~0_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\ & !\my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|tx_ready~q\,
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|WideOr0~combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~0_combout\);

-- Location: FF_X68_Y62_N17
\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~0_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\);

-- Location: LCCOMB_X69_Y62_N2
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~0_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\ & 
-- (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(1) & \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|do_load_shifter~q\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(1),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|baud_clk_en~q\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~0_combout\);

-- Location: LCCOMB_X68_Y62_N8
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~2_combout\ = (\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~0_combout\) # 
-- ((\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(0) & !\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~0_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(0),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[9]~1_combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~2_combout\);

-- Location: FF_X68_Y62_N9
\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_in[0]~2_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(0));

-- Location: LCCOMB_X69_Y62_N22
\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~2_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~q\ & (\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0_combout\ & 
-- (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(1) & \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~q\,
	datab => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~0_combout\,
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(1),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~1_combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~2_combout\);

-- Location: LCCOMB_X68_Y62_N14
\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~3_combout\ = (!\my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(0) & !\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \my_qsys|uart_0|the_unsaved_uart_0_tx|unxshiftxtx_shift_register_contentsxtx_shift_reg_outxx5_out\(0),
	datad => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~2_combout\,
	combout => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~3_combout\);

-- Location: FF_X68_Y62_N15
\my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~3_combout\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~q\);

-- Location: FF_X68_Y62_N13
\my_qsys|uart_0|the_unsaved_uart_0_tx|txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \my_qsys|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \my_qsys|uart_0|the_unsaved_uart_0_tx|pre_txd~q\,
	clrn => \my_qsys|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \my_qsys|uart_0|the_unsaved_uart_0_tx|txd~q\);

-- Location: IOIBUF_X0_Y36_N22
\CLOCK2_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK2_50,
	o => \CLOCK2_50~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLOCK3_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK3_50,
	o => \CLOCK3_50~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\ENETCLK_25~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENETCLK_25,
	o => \ENETCLK_25~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\SMA_CLKIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SMA_CLKIN,
	o => \SMA_CLKIN~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y31_N1
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\UART_RTS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RTS,
	o => \UART_RTS~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\SD_WP_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_WP_N,
	o => \SD_WP_N~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\ENET0_INT_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_INT_N,
	o => \ENET0_INT_N~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\ENET0_MDIO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_MDIO,
	o => \ENET0_MDIO~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\ENET0_RX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_CLK,
	o => \ENET0_RX_CLK~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\ENET0_RX_COL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_COL,
	o => \ENET0_RX_COL~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\ENET0_RX_CRS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_CRS,
	o => \ENET0_RX_CRS~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\ENET0_RX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(0),
	o => \ENET0_RX_DATA[0]~input_o\);

-- Location: IOIBUF_X107_Y0_N8
\ENET0_RX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(1),
	o => \ENET0_RX_DATA[1]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\ENET0_RX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(2),
	o => \ENET0_RX_DATA[2]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\ENET0_RX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DATA(3),
	o => \ENET0_RX_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\ENET0_RX_DV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_DV,
	o => \ENET0_RX_DV~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\ENET0_RX_ER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_RX_ER,
	o => \ENET0_RX_ER~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\ENET0_TX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_TX_CLK,
	o => \ENET0_TX_CLK~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\ENET0_LINK100~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET0_LINK100,
	o => \ENET0_LINK100~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\ENET1_INT_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_INT_N,
	o => \ENET1_INT_N~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\ENET1_MDIO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_MDIO,
	o => \ENET1_MDIO~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\ENET1_RX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_CLK,
	o => \ENET1_RX_CLK~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\ENET1_RX_COL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_COL,
	o => \ENET1_RX_COL~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\ENET1_RX_CRS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_CRS,
	o => \ENET1_RX_CRS~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\ENET1_RX_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(0),
	o => \ENET1_RX_DATA[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\ENET1_RX_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(1),
	o => \ENET1_RX_DATA[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\ENET1_RX_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(2),
	o => \ENET1_RX_DATA[2]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\ENET1_RX_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DATA(3),
	o => \ENET1_RX_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\ENET1_RX_DV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_DV,
	o => \ENET1_RX_DV~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\ENET1_RX_ER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_RX_ER,
	o => \ENET1_RX_ER~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\ENET1_TX_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_TX_CLK,
	o => \ENET1_TX_CLK~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\ENET1_LINK100~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENET1_LINK100,
	o => \ENET1_LINK100~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\TD_CLK27~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_CLK27,
	o => \TD_CLK27~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\TD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(0),
	o => \TD_DATA[0]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\TD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(1),
	o => \TD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\TD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(2),
	o => \TD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\TD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(3),
	o => \TD_DATA[3]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\TD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(4),
	o => \TD_DATA[4]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\TD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(5),
	o => \TD_DATA[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\TD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(6),
	o => \TD_DATA[6]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\TD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_DATA(7),
	o => \TD_DATA[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\TD_HS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_HS,
	o => \TD_HS~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\TD_VS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TD_VS,
	o => \TD_VS~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\OTG_INT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OTG_INT,
	o => \OTG_INT~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\IRDA_RXD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRDA_RXD,
	o => \IRDA_RXD~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\FL_RY~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FL_RY,
	o => \FL_RY~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\HSMC_CLKIN_P1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_P1,
	o => \HSMC_CLKIN_P1~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\HSMC_CLKIN_P2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_P2,
	o => \HSMC_CLKIN_P2~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\HSMC_CLKIN0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN0,
	o => \HSMC_CLKIN0~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\HSMC_RX_D_P[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(0),
	o => \HSMC_RX_D_P[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\HSMC_RX_D_P[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(1),
	o => \HSMC_RX_D_P[1]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\HSMC_RX_D_P[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(2),
	o => \HSMC_RX_D_P[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\HSMC_RX_D_P[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(3),
	o => \HSMC_RX_D_P[3]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\HSMC_RX_D_P[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(4),
	o => \HSMC_RX_D_P[4]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\HSMC_RX_D_P[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(5),
	o => \HSMC_RX_D_P[5]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\HSMC_RX_D_P[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(6),
	o => \HSMC_RX_D_P[6]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\HSMC_RX_D_P[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(7),
	o => \HSMC_RX_D_P[7]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\HSMC_RX_D_P[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(8),
	o => \HSMC_RX_D_P[8]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\HSMC_RX_D_P[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(9),
	o => \HSMC_RX_D_P[9]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\HSMC_RX_D_P[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(10),
	o => \HSMC_RX_D_P[10]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\HSMC_RX_D_P[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(11),
	o => \HSMC_RX_D_P[11]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\HSMC_RX_D_P[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(12),
	o => \HSMC_RX_D_P[12]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\HSMC_RX_D_P[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(13),
	o => \HSMC_RX_D_P[13]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\HSMC_RX_D_P[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(14),
	o => \HSMC_RX_D_P[14]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\HSMC_RX_D_P[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(15),
	o => \HSMC_RX_D_P[15]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\HSMC_RX_D_P[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_RX_D_P(16),
	o => \HSMC_RX_D_P[16]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\PS2_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK,
	o => \PS2_CLK~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\PS2_DAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT,
	o => \PS2_DAT~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\PS2_CLK2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_CLK2,
	o => \PS2_CLK2~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\PS2_DAT2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PS2_DAT2,
	o => \PS2_DAT2~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\SD_CMD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_CMD,
	o => \SD_CMD~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\SD_DAT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(0),
	o => \SD_DAT[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\SD_DAT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(1),
	o => \SD_DAT[1]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\SD_DAT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(2),
	o => \SD_DAT[2]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\SD_DAT[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(3),
	o => \SD_DAT[3]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: IOIBUF_X115_Y62_N8
\EEP_I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EEP_I2C_SDAT,
	o => \EEP_I2C_SDAT~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => I2C_SDAT,
	o => \I2C_SDAT~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\OTG_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(0),
	o => \OTG_DATA[0]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\OTG_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(1),
	o => \OTG_DATA[1]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\OTG_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(2),
	o => \OTG_DATA[2]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\OTG_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(3),
	o => \OTG_DATA[3]~input_o\);

-- Location: IOIBUF_X115_Y68_N15
\OTG_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(4),
	o => \OTG_DATA[4]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\OTG_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(5),
	o => \OTG_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\OTG_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(6),
	o => \OTG_DATA[6]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\OTG_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(7),
	o => \OTG_DATA[7]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\OTG_DATA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(8),
	o => \OTG_DATA[8]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\OTG_DATA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(9),
	o => \OTG_DATA[9]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\OTG_DATA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(10),
	o => \OTG_DATA[10]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\OTG_DATA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(11),
	o => \OTG_DATA[11]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\OTG_DATA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(12),
	o => \OTG_DATA[12]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\OTG_DATA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(13),
	o => \OTG_DATA[13]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\OTG_DATA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(14),
	o => \OTG_DATA[14]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\OTG_DATA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => OTG_DATA(15),
	o => \OTG_DATA[15]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\DRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\DRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\DRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\DRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\DRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\DRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\DRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\DRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\DRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\DRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\DRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\DRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\DRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\DRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\DRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X98_Y0_N15
\DRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\DRAM_DQ[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(16),
	o => \DRAM_DQ[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\DRAM_DQ[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(17),
	o => \DRAM_DQ[17]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\DRAM_DQ[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(18),
	o => \DRAM_DQ[18]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\DRAM_DQ[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(19),
	o => \DRAM_DQ[19]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\DRAM_DQ[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(20),
	o => \DRAM_DQ[20]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\DRAM_DQ[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(21),
	o => \DRAM_DQ[21]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\DRAM_DQ[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(22),
	o => \DRAM_DQ[22]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\DRAM_DQ[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(23),
	o => \DRAM_DQ[23]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\DRAM_DQ[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(24),
	o => \DRAM_DQ[24]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\DRAM_DQ[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(25),
	o => \DRAM_DQ[25]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\DRAM_DQ[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(26),
	o => \DRAM_DQ[26]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\DRAM_DQ[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(27),
	o => \DRAM_DQ[27]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\DRAM_DQ[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(28),
	o => \DRAM_DQ[28]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\DRAM_DQ[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(29),
	o => \DRAM_DQ[29]~input_o\);

-- Location: IOIBUF_X0_Y68_N15
\DRAM_DQ[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(30),
	o => \DRAM_DQ[30]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\DRAM_DQ[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(31),
	o => \DRAM_DQ[31]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X111_Y0_N1
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X115_Y24_N8
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\SRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X115_Y25_N15
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\FL_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(0),
	o => \FL_DQ[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\FL_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(1),
	o => \FL_DQ[1]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\FL_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(2),
	o => \FL_DQ[2]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\FL_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(3),
	o => \FL_DQ[3]~input_o\);

-- Location: IOIBUF_X115_Y58_N22
\FL_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(4),
	o => \FL_DQ[4]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\FL_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(5),
	o => \FL_DQ[5]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\FL_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(6),
	o => \FL_DQ[6]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\FL_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => FL_DQ(7),
	o => \FL_DQ[7]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: IOIBUF_X115_Y12_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X115_Y12_N1
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X5_Y73_N8
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X115_Y28_N1
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X115_Y8_N22
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\HSMC_D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(0),
	o => \HSMC_D[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\HSMC_D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(1),
	o => \HSMC_D[1]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\HSMC_D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(2),
	o => \HSMC_D[2]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\HSMC_D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(3),
	o => \HSMC_D[3]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\EX_IO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(0),
	o => \EX_IO[0]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\EX_IO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(1),
	o => \EX_IO[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\EX_IO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(2),
	o => \EX_IO[2]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\EX_IO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(3),
	o => \EX_IO[3]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\EX_IO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(4),
	o => \EX_IO[4]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\EX_IO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(5),
	o => \EX_IO[5]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\EX_IO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(6),
	o => \EX_IO[6]~input_o\);
END structure;


