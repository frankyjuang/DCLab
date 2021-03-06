module DE2_115(
	input CLOCK_50,
	input CLOCK2_50,
	input CLOCK3_50,
	input ENETCLK_25,
	input SMA_CLKIN,
	output SMA_CLKOUT,
	output [8:0] LEDG,
	output [17:0] LEDR,
	input [3:0] KEY,
	input [17:0] SW,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3,
	output [6:0] HEX4,
	output [6:0] HEX5,
	output [6:0] HEX6,
	output [6:0] HEX7,
	output LCD_BLON,
	inout [7:0] LCD_DATA,
	output LCD_EN,
	output LCD_ON,
	output LCD_RS,
	output LCD_RW,
	output UART_CTS,
	input UART_RTS,
	input UART_RXD,
	output UART_TXD,
	inout PS2_CLK,
	inout PS2_DAT,
	inout PS2_CLK2,
	inout PS2_DAT2,
	output SD_CLK,
	inout SD_CMD,
	inout [3:0] SD_DAT,
	input SD_WP_N,
	output [7:0] VGA_B,
	output VGA_BLANK_N,
	output VGA_CLK,
	output [7:0] VGA_G,
	output VGA_HS,
	output [7:0] VGA_R,
	output VGA_SYNC_N,
	output VGA_VS,
	input AUD_ADCDAT,
	inout AUD_ADCLRCK,
	inout AUD_BCLK,
	output AUD_DACDAT,
	inout AUD_DACLRCK,
	output AUD_XCK,
	output EEP_I2C_SCLK,
	inout EEP_I2C_SDAT,
	output I2C_SCLK,
	inout I2C_SDAT,
	output ENET0_GTX_CLK,
	input ENET0_INT_N,
	output ENET0_MDC,
	input ENET0_MDIO,
	output ENET0_RST_N,
	input ENET0_RX_CLK,
	input ENET0_RX_COL,
	input ENET0_RX_CRS,
	input [3:0] ENET0_RX_DATA,
	input ENET0_RX_DV,
	input ENET0_RX_ER,
	input ENET0_TX_CLK,
	output [3:0] ENET0_TX_DATA,
	output ENET0_TX_EN,
	output ENET0_TX_ER,
	input ENET0_LINK100,
	output ENET1_GTX_CLK,
	input ENET1_INT_N,
	output ENET1_MDC,
	input ENET1_MDIO,
	output ENET1_RST_N,
	input ENET1_RX_CLK,
	input ENET1_RX_COL,
	input ENET1_RX_CRS,
	input [3:0] ENET1_RX_DATA,
	input ENET1_RX_DV,
	input ENET1_RX_ER,
	input ENET1_TX_CLK,
	output [3:0] ENET1_TX_DATA,
	output ENET1_TX_EN,
	output ENET1_TX_ER,
	input ENET1_LINK100,
	input TD_CLK27,
	input [7:0] TD_DATA,
	input TD_HS,
	output TD_RESET_N,
	input TD_VS,
	inout [15:0] OTG_DATA,
	output [1:0] OTG_ADDR,
	output OTG_CS_N,
	output OTG_WR_N,
	output OTG_RD_N,
	input OTG_INT,
	output OTG_RST_N,
	input IRDA_RXD,
	output [12:0] DRAM_ADDR,
	output [1:0] DRAM_BA,
	output DRAM_CAS_N,
	output DRAM_CKE,
	output DRAM_CLK,
	output DRAM_CS_N,
	inout [31:0] DRAM_DQ,
	output [3:0] DRAM_DQM,
	output DRAM_RAS_N,
	output DRAM_WE_N,
	output [19:0] SRAM_ADDR,
	output SRAM_CE_N,
	inout [15:0] SRAM_DQ,
	output SRAM_LB_N,
	output SRAM_OE_N,
	output SRAM_UB_N,
	output SRAM_WE_N,
	output [22:0] FL_ADDR,
	output FL_CE_N,
	inout [7:0] FL_DQ,
	output FL_OE_N,
	output FL_RST_N,
	input FL_RY,
	output FL_WE_N,
	output FL_WP_N,
	inout [35:0] GPIO,
	input HSMC_CLKIN_P1,
	input HSMC_CLKIN_P2,
	input HSMC_CLKIN0,
	output HSMC_CLKOUT_P1,
	output HSMC_CLKOUT_P2,
	output HSMC_CLKOUT0,
	inout [3:0] HSMC_D,
	input [16:0] HSMC_RX_D_P,
	output [16:0] HSMC_TX_D_P,
	inout [6:0] EX_IO
);
	logic key0, key1, key2, key3;
    logic [1:0] audi_state;
    logic [7:0] audi_time, audi_speed;
    logic clk_12M, clk_100k;
    
    jfjplayer player(
		.altpll_0_c0_clk(clk_12M), // 12 MHz
		.altpll_0_c1_clk(clk_100k), // 100 kHz
		.clk_clk(CLOCK_50),
		.reset_reset_n(KEY[0]) 
	);
    assign AUD_XCK = clk_12M;
	Debounce deb0(
		.i_in(KEY[0]),
		.i_clk(CLOCK_50),
		.o_neg(key0)
	);
	Debounce deb1(
		.i_in(KEY[1]),
		.i_clk(CLOCK_50),
		.o_neg(key1)
	);
	Debounce deb2(
		.i_in(KEY[2]),
		.i_clk(CLOCK_50),
		.o_neg(key2)
	);
	Debounce deb3(
		.i_in(KEY[3]),
		.i_clk(CLOCK_50),
		.o_neg(key3)
	);
    
    wire [8:0] led;
    assign LEDG = led;
	top top_module(
		.i_clk(CLOCK_50),
        .i_clk_100k(clk_100k),
        .key0(key0),
        .key1(key1),
        .key2(key2),
        .key3(key3),
        .sw0(SW[0]),
        .sw1(SW[1]),
        .sw16(SW[16]),
        .sw17(SW[17]),
		.audio_state(audi_state),
		.audio_time(audi_time),
		.audio_speed(audi_speed),
        .sram_addr(SRAM_ADDR),
        .sram_dq(SRAM_DQ),
        .sram_ce_n(SRAM_CE_N),
        .sram_oe_n(SRAM_OE_N),
        .sram_we_n(SRAM_WE_N),
        .sram_ub_n(SRAM_UB_N),
        .sram_lb_n(SRAM_LB_N),
        .aud_bclk(AUD_BCLK),
        .aud_dacdat(AUD_DACDAT),
        .aud_daclrck(AUD_DACLRCK),
        .aud_adcdat(AUD_ADCDAT),
        .aud_adclrck(AUD_ADCLRCK),
        .i2c_sclk(I2C_SCLK),
        .i2c_sdat(I2C_SDAT),
        .LR(led)
	);

    SevenHexAlphabet seven_alpha(
        .i_state(audi_state),
        .o_seven_0(HEX0),
        .o_seven_1(HEX1),
        .o_seven_2(HEX2),
        .o_seven_3(HEX3)
    );
	SevenHexTime seven_dec_time(
		.i_time(audi_time),
		.o_seven_ten(HEX5),
		.o_seven_one(HEX4)
	);
	SevenHexSpeed seven_dec_speed(
		.i_speed(audi_speed),
		.o_seven_ten(HEX7),
		.o_seven_one(HEX6)
	);
    
endmodule
