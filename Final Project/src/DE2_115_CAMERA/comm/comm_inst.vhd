	component comm is
		port (
			reset_reset_n                  : in  std_logic                      := 'X';             -- reset_n
			rs232_0_conduit_end_1_export   : in  std_logic                      := 'X';             -- export
			rs232_0_conduit_end_export     : in  std_logic_vector(335 downto 0) := (others => 'X'); -- export
			uart_0_external_connection_rxd : in  std_logic                      := 'X';             -- rxd
			uart_0_external_connection_txd : out std_logic;                                         -- txd
			clk_clk                        : in  std_logic                      := 'X'              -- clk
		);
	end component comm;

	u0 : component comm
		port map (
			reset_reset_n                  => CONNECTED_TO_reset_reset_n,                  --                      reset.reset_n
			rs232_0_conduit_end_1_export   => CONNECTED_TO_rs232_0_conduit_end_1_export,   --      rs232_0_conduit_end_1.export
			rs232_0_conduit_end_export     => CONNECTED_TO_rs232_0_conduit_end_export,     --        rs232_0_conduit_end.export
			uart_0_external_connection_rxd => CONNECTED_TO_uart_0_external_connection_rxd, -- uart_0_external_connection.rxd
			uart_0_external_connection_txd => CONNECTED_TO_uart_0_external_connection_txd, --                           .txd
			clk_clk                        => CONNECTED_TO_clk_clk                         --                        clk.clk
		);

