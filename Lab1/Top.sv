module Top(
	input i_clk,
	input i_start,
	output [3:0] o_random_out
);
	logic state_r, state_w;
	logic [31:0] counter_r, counter_w;
	logic [31:0] counter_top_r, counter_top_w;
	logic [31:0] random_r, random_w;
	logic [31:0] time_r, time_w;
	parameter CNT_TOP = 50000000;
	parameter CNT_INIT_TOP = 10000;
	parameter RESET = 1'b0;
	parameter INC = 1'b1;
	
	assign o_random_out = random_r[30:16];
	
	always_comb begin
		state_w = state_r;
		random_w = random_r;
		counter_w = counter_r;
		counter_top_w = counter_top_r;
		time_w = time_r + 1;
		case (state_r)
			RESET	:	if (i_start == 1'b1) begin
							counter_w = 0;
							counter_top_w = CNT_INIT_TOP;
							state_w = INC;
							random_w = time_r;
						end
			INC	:	if (i_start == 1'b1) begin
							counter_w = 0;
							counter_top_w = CNT_INIT_TOP;
							random_w = time_r;
						end else if (counter_r >= counter_top_r) begin 
							counter_top_w = counter_top_r + counter_top_r / 3;
							counter_w = 0;
							random_w = (random_r * 1103515245 + 12345) % 2147483648;
						end else if (counter_r >= CNT_TOP) begin
							state_w = RESET;
						end else begin
							counter_w = counter_r + 1;
						end
		endcase
	end
	
	always_ff @(posedge i_clk) begin
		state_r <= state_w;
		random_r <= random_w;
		counter_r <= counter_w;
		counter_top_r <= counter_top_w;
		time_r <= time_w;		
	end
	
endmodule