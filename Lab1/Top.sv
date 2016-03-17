module Top(
	input i_clk,
	input i_start,
	input i_reset,
	input i_dec,
	input i_inc,
	output [4:0] o_random_out_0, o_random_out_1,
						o_random_out_2, o_random_out_3
);
	logic [2:0] state_r, state_w;
	logic [63:0] counter_r, counter_w;
	logic [31:0] counter_slow_r, counter_slow_w;
	logic [31:0] counter_top_r, counter_top_w;
	logic [31:0] time_r, time_w;	// Total clock passed.
	logic [31:0] counter_flash_r, counter_flash_w;
	logic [4:0] active_r = 4'b00011, active_w = 4'b00011;	// Which bits are active.
	logic [31:0] random_r [4:0], random_w [4:0], 
						random_store_r [4:0], random_store_w [4:0];
	
	// Constants.
	parameter CNT_TOP = 20000000;
	parameter CNT_INIT_TOP = 2000000;
	localparam CNT_CYCLE_TOP = CNT_INIT_TOP + 50;	// times to display when RUN
	
	// Flash Constants.
	parameter  CNT_FLASH_0  = 3000000;
	localparam CNT_FLASH_1  = 1 * CNT_FLASH_0;
	localparam CNT_FLASH_2  = 2 * CNT_FLASH_0;
	localparam CNT_FLASH_3  = 3 * CNT_FLASH_0;
	localparam CNT_FLASH_4  = 4 * CNT_FLASH_0;
	localparam CNT_FLASH_5  = 5 * CNT_FLASH_0;
	localparam CNT_FLASH_6  = 6 * CNT_FLASH_0;
	localparam CNT_FLASH_7  = 7 * CNT_FLASH_0;
	localparam CNT_FLASH_8  = 8 * CNT_FLASH_0;
	localparam CNT_FLASH_9  = 9 * CNT_FLASH_0;
	localparam CNT_FLASH_10 = 10 * CNT_FLASH_0;
	localparam CNT_FLASH_11 = 11 * CNT_FLASH_0;
	localparam CNT_FLASH_12 = 12 * CNT_FLASH_0;
	localparam CNT_FLASH_13 = 13 * CNT_FLASH_0;
	localparam CNT_FLASH_14 = 14 * CNT_FLASH_0;
	localparam CNT_FLASH_15 = 15 * CNT_FLASH_0;
	localparam CNT_FLASH_TOP = 16 * CNT_FLASH_0;
	
	// SevenHexDecoder Parameters.
	parameter D1   = 5'h01;
	parameter DCON = 5'h0a; //CONCON
	parameter DRB2	= 5'h0b; //right bottom segments
	parameter DB1	= 5'h0c; //bottom segment
	parameter DLB2	= 5'h0d; //left bottom segments
	parameter DL2	= 5'h0e; //left segments (reverse 1)
	parameter DLU1	= 5'h0f; // #5
	parameter DU1	= 5'h10; //upper segment
	parameter DRU1 = 5'h11; // #1
	parameter DLU2 = 5'h12; //left upper segments
	parameter DRU2 = 5'h13; //right upper segments
	
	// States.
	parameter RESET  = 3'b000;
	parameter RUN    = 3'b001;
	parameter SLOW_3 = 3'b010;
	parameter SLOW_2 = 3'b011;
	parameter SLOW_1 = 3'b100;
	parameter SLOW_0 = 3'b101;
	parameter FLASH  = 3'b110;
	
	// Assignments.
	assign o_random_out_0 = random_r[0][20:16];
	assign o_random_out_1 = random_r[1][20:16];
	assign o_random_out_2 = random_r[2][20:16];
	assign o_random_out_3 = random_r[3][20:16];
	
	always_comb begin
		state_w = state_r;
		counter_w = counter_r;
		counter_slow_w = counter_slow_r;
		counter_top_w = counter_top_r;
		counter_flash_w = counter_flash_r;
		random_store_w = random_store_r;
		time_w = time_r + 1;
		active_w = active_r;
		// Turn off ? bit.
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
									if (active_r[3] != active_r[2]) begin
										state_w = SLOW_2;
									end else if (active_r[2] != active_r[1]) begin
										state_w = SLOW_1;
									end else if (active_r[1] != active_r[0]) begin
										state_w = SLOW_0;
									end else begin
										state_w = SLOW_3;
									end
								end else begin
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i][20:16] = random_r[i][20:16] % 10;
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
									state_w = SLOW_2;
								end else begin
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i][20:16] = random_r[i][20:16] % 10;
									counter_w = counter_r + 1;
									counter_slow_w = counter_slow_r + 1;
								end
				SLOW_2	:	if (counter_r >= CNT_INIT_TOP) begin
									counter_w = 0;
									for (int i = 0; i <= 1; ++i)
										if (active_r[i] == 1'b1)
											random_w[i] = (random_r[i] * 1103515245 + 12345) % 2147483648;
								end else if (counter_slow_r >= counter_top_r) begin 
									counter_slow_w = 0;
									counter_top_w = counter_top_r + counter_top_r / 3;
									random_w[2] = (random_r[2] * 1103515245 + 12345) % 2147483648;
								end else if (counter_slow_r >= CNT_TOP) begin
									counter_w = 0;
									counter_slow_w = 0;
									counter_top_w = CNT_INIT_TOP;
									state_w = SLOW_1;
								end else begin
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i][20:16] = random_r[i][20:16] % 10;
									counter_w = counter_r + 1;
									counter_slow_w = counter_slow_r + 1;
								end
				SLOW_1	:	if (counter_r >= CNT_INIT_TOP) begin
									counter_w = 0;
									if (active_r[0] == 1'b1)
										random_w[0] = (random_r[0] * 1103515245 + 12345) % 2147483648;
								end else if (counter_slow_r >= counter_top_r) begin 
									counter_slow_w = 0;
									counter_top_w = counter_top_r + counter_top_r / 3;
									random_w[1] = (random_r[1] * 1103515245 + 12345) % 2147483648;
								end else if (counter_slow_r >= CNT_TOP) begin
									counter_w = 0;
									counter_slow_w = 0;
									counter_top_w = CNT_INIT_TOP;
									state_w = SLOW_0;
								end else begin
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i][20:16] = random_r[i][20:16] % 10;
									counter_w = counter_r + 1;
									counter_slow_w = counter_slow_r + 1;
								end
				SLOW_0	:	if (counter_slow_r >= counter_top_r) begin 
									counter_slow_w = 0;
									counter_top_w = counter_top_r + counter_top_r / 3;
									random_w[0] = (random_r[0] * 1103515245 + 12345) % 2147483648;
								end else if (counter_slow_r >= CNT_TOP) begin
									counter_w = 0;
									counter_slow_w = 0;
									counter_top_w = CNT_INIT_TOP;
									state_w = RESET;
									// Check if jackpot.
									if (active_r[3] != active_r[2]) begin
										if (random_r[0][20:16] == random_r[1][20:16] &&
											 random_r[0][20:16] == random_r[2][20:16]) begin
											 state_w = FLASH;
											 random_store_w = random_r;
										end
									end else if (active_r[2] != active_r[1]) begin
										if (random_r[0][20:16] == random_r[1][20:16]) begin
											 state_w = FLASH;
											 random_store_w = random_r;
										end
									end else if (active_r[1] != active_r[0]) begin
										//state_w = RESET;
										state_w = FLASH;
										random_store_w = random_r;
									end else begin
										if (random_r[0][20:16] == random_r[1][20:16] &&
											 random_r[0][20:16] == random_r[2][20:16] &&
											 random_r[0][20:16] == random_r[3][20:16]) begin
											 state_w = FLASH;
											 random_store_w = random_r;
										end
									end
								end else begin
									for (int i = 0; i <= 3; ++i)
										if (active_r[i] == 1'b1)
											random_w[i][20:16] = random_r[i][20:16] % 10;
									counter_w = counter_r + 1;
									counter_slow_w = counter_slow_r + 1;
								end
				FLASH		:	if (counter_flash_r >= 5) begin
									counter_w = 0;
									counter_flash_w = 0;
									random_w = random_store_r;
									state_w = RESET;
								end else begin
									counter_w = counter_r + 1;
									if (counter_w <= CNT_FLASH_1) begin
										random_w[0][20:16] = D1;
									end else if (counter_w <= CNT_FLASH_2) begin
										random_w[0][20:16] = DRB2;
									end else if (counter_w <= CNT_FLASH_3) begin
										random_w[0][20:16] = DB1;
										random_w[1][20:16] = DB1;
									end else if (counter_w <= CNT_FLASH_4) begin
										random_w[0][20:16] = DCON;
										random_w[1][20:16] = DLB2;
									end else if (counter_w <= CNT_FLASH_5) begin
										random_w[1][20:16] = DL2;
									end else if (counter_w <= CNT_FLASH_6) begin
										random_w[1][20:16] = DLU1;
										random_w[2][20:16] = DU1;
									end else if (counter_w <= CNT_FLASH_7) begin
										random_w[1][20:16] = DCON;
										random_w[2][20:16] = DU1;
										random_w[3][20:16] = DU1;
									end else if (counter_w <= CNT_FLASH_8) begin
										random_w[2][20:16] = DCON;
										random_w[3][20:16] = DLU2;
									end else if (counter_w <= CNT_FLASH_9) begin
										random_w[3][20:16] = DL2;
									end else if (counter_w <= CNT_FLASH_10) begin
										random_w[3][20:16] = DLB2;
									end else if (counter_w <= CNT_FLASH_11) begin
										random_w[2][20:16] = DB1;
										random_w[3][20:16] = DB1;
									end else if (counter_w <= CNT_FLASH_12) begin
										random_w[2][20:16] = DRB2;
										random_w[3][20:16] = DCON;
									end else if (counter_w <= CNT_FLASH_13) begin
										random_w[2][20:16] = D1;
									end else if (counter_w <= CNT_FLASH_14) begin
										random_w[1][20:16] = DU1;
										random_w[2][20:16] = DRU1;
									end else if (counter_w <= CNT_FLASH_15) begin
										random_w[0][20:16] = DU1;
										random_w[1][20:16] = DU1;
										random_w[2][20:16] = DCON;
									end else if (counter_w <= CNT_FLASH_TOP) begin
										random_w[0][20:16] = DRU2;
										random_w[1][20:16] = DCON;
									end else begin
										counter_w = 0;
										counter_flash_w = counter_flash_r + 1;
									end
								end
								
			endcase
		end
	end
	
	always_ff @(posedge i_clk) begin
		state_r <= state_w;
		counter_r <= counter_w;
		counter_slow_r <= counter_slow_w;
		counter_top_r <= counter_top_w;
		counter_flash_r <= counter_flash_w;
		time_r <= time_w;
		active_r <= active_w;
		random_r <= random_w;
		random_store_r <= random_store_w;
	end
	
endmodule