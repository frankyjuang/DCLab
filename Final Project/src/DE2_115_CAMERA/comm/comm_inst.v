	comm u0 (
		.reset_reset_n                  (<connected-to-reset_reset_n>),                  //                      reset.reset_n
		.rs232_0_conduit_end_1_export   (<connected-to-rs232_0_conduit_end_1_export>),   //      rs232_0_conduit_end_1.export
		.rs232_0_conduit_end_export     (<connected-to-rs232_0_conduit_end_export>),     //        rs232_0_conduit_end.export
		.uart_0_external_connection_rxd (<connected-to-uart_0_external_connection_rxd>), // uart_0_external_connection.rxd
		.uart_0_external_connection_txd (<connected-to-uart_0_external_connection_txd>), //                           .txd
		.clk_clk                        (<connected-to-clk_clk>)                         //                        clk.clk
	);

