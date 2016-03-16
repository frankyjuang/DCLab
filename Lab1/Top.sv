module Top(
	input i_clk,
	input i_start,
	input i_reset,
	input i_dec,
	input i_inc,
	output [3:0] o_random_out_0, o_random_out_1,
						o_random_out_2, o_random_out_3
);
	logic [2:0] state_r, state_w;
	logic [31:0] counter_r, counter_w;
	logic [31:0] counter_slow_r, counter_slow_w;
	logic [31:0] counter_top_r, counter_top_w;
	logic [31:0] time_r, time_w;	// Total clock passed.
	logic [4:0] active_r = 4'b00011, active_w = 4'b00011;	// Which bits are active.
	logic [31:0] random_r [3:0], random_w [3:0];
	
	// Constants.
	parameter CNT_TOP = 100000000;
	parameter CNT_INIT_TOP = 2000000;
	localparam CNT_CYCLE_TOP = CNT_INIT_TOP + 50;	// times to display when RUN
	
	// States.
	parameter RESET = 3'b000;
	parameter RUN = 3'b001;
	parameter SLOW_3 = 3'b010;
	parameter SLOW_2 = 3'b011;
	parameter SLOW_1 = 3'b100;
	parameter SLOW_0 = 3'b101;
	
	// Assignments
	// assign o_random_out = random_r[][30:16];
	assign o_random_out_0 = random_r[0][19:16];
	assign o_random_out_1 = random_r[1][19:16];
	assign o_random_out_2 = random_r[2][19:16];
	assign o_random_out_3 = random_r[3][19:16];
	
	always_comb begin
		state_w = state_r;
		counter_w = counter_r;
		counter_slow_w = counter_slow_r;
		counter_top_w = counter_top_r;
		time_w = time_r + 1;
		active_w = active_r;
		// Turn off ? bit
		for (int i = 0; i <= 3; i++)
			if (active_r[i] == 1'b0)
				random_w[i] = 32'h000a0000;
			else
				random_w[i] = random_r[i];
		
		if (i_reset == 1'b1) begin
			for (int i = 0; i <= 3; ++i)
				if (active_r[i] == 1'b1)
					random_w[i] = 32'h00000000;
			state_w = RESET;
		end else	if (i_start == 1'b1) begin
			counter_w = 0;
			counter_top_w = CNT_INIT_TOP;
			for (int i = 0; i <= 3; ++i)
				if (active_r[i] == 1'b1)
					random_w[i] = time_r + 7 * i;
			state_w = RUN;
		end else begin
			case (state_r)
				RESET		:	if (i_dec == 1'b1) begin
									for (int i = 1; i <= 3; i++)
										if (active_r[i] != active_r[i+1]) 
											active_w[i] = 1'b0;
								end else if (i_inc == 1'b1) begin
									for (int i = 3; i >= 1; i--)
										if (active_r[i] != active_r[i-1]) begin
											active_w[i] = 1'b1;
											random_w[i] = 32'h00000000;
										end
								end
				RUN		:	if (counter_r >= counter_top_r) begin
									counter_w = 0;
									counter_top_w = counter_top_r + 1;
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i] = (random_r[i] * 1103515245 + 12345) % 2147483648;
								end else if (counter_r >= CNT_CYCLE_TOP) begin
									counter_w = 0;
									counter_slow_w = 0;
									counter_top_w = CNT_INIT_TOP;
									state_w = SLOW_3;
								end else begin
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i][19:16] = random_r[i][19:16] % 10;
									counter_w = counter_r + 1;
								end
				SLOW_3	:	if (counter_r >= CNT_INIT_TOP) begin
									counter_w = 0;
									for (int i = 0; i <= 2; ++i)
										if (active_r[i] == 1'b1)
											random_w[i] = (random_r[i] * 1103515245 + 12345) % 2147483648;
								end else if (counter_slow_r >= counter_top_r) begin 
									counter_slow_w = 0;
									counter_top_w = counter_top_r + counter_top_r / 3;
									random_w[3] = (random_r[3] * 1103515245 + 12345) % 2147483648;
								end else if (counter_slow_r >= CNT_TOP) begin
									counter_w = 0;
									counter_slow_w = 0;
									counter_top_w = CNT_INIT_TOP;
									// state_w = SLOW_2;
									state_w = RESET;
								end else begin
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i][19:16] = random_r[i][19:16] % 10;
									counter_w = counter_r + 1;
									counter_slow_w = counter_slow_r + 1;
								end
			endcase
		end
	end
	
	always_ff @(posedge i_clk) begin
		state_r <= state_w;
		counter_r <= counter_w;
		counter_slow_r <= counter_slow_w;
		counter_top_r <= counter_top_w;
		time_r <= time_w;
		active_r <= active_w;
		random_r <= random_w;
	end
	
endmodule