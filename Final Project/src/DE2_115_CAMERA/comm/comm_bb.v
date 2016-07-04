
module comm (
	reset_reset_n,
	rs232_0_conduit_end_1_export,
	rs232_0_conduit_end_export,
	uart_0_external_connection_rxd,
	uart_0_external_connection_txd,
	clk_clk);	

	input		reset_reset_n;
	input		rs232_0_conduit_end_1_export;
	input	[335:0]	rs232_0_conduit_end_export;
	input		uart_0_external_connection_rxd;
	output		uart_0_external_connection_txd;
	input		clk_clk;
endmodule
