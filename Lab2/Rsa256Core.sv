module Rsa256Core(
	input i_clk,
	input i_rst,
	input i_start,
	input [255:0] i_a,
	input [255:0] i_e,
	input [255:0] i_n,
	output [255:0] o_a_pow_e,
	output o_finished
);

	// state parameters
	parameter RESET 	= 2'b00;
	parameter PREPROP = 2'b01;
	parameter INC		= 2'b10;
	parameter MA 		= 2'b11;

	// constant
	parameter C = 1 << 256;

	logic [1:0] 	state_r, state_w;
	logic [8:0] 	ME_counter_r, ME_counter_w;
	logic [8:0] 	MA_counter_r, MA_counter_w;
	logic [255:0]	a_w, a_r, e_w, e_r, n_w, n_r;
	logic [258:0] 	V_i_r, V_i_w, V_T_r, V_T_w;
	logic [258:0] 	T_r, T_w;
	logic [258:0] 	S_r, S_w;
	logic [258:0]	preprop_S_r, preprop_S_w;
	logic [258:0]	preprop_T_r, preprop_T_w;
	logic 			finished_r, finished_w;

	assign o_a_pow_e 	= S_r[255:0];
	assign o_finished = finished_r;


	always_comb begin
		a_w = a_r;
		e_w = e_r;
		n_w = n_r;
		state_w = state_r;
		ME_counter_w = ME_counter_r;
		MA_counter_w = MA_counter_r;
		V_i_w = V_i_r;
		V_T_w = V_T_r;
		T_w = T_r;
		S_w = S_r;
		preprop_S_w = preprop_S_r;
		preprop_T_w = preprop_T_r;
		finished_w = finished_r;
		case (state_r)
			RESET:	begin
						finished_w = 1'b0;
						if (i_start == 1'b1) begin
							a_w = i_a;
							e_w = i_e;
							n_w = i_n;
							MA_counter_w = 0;
							ME_counter_w = 0;
							S_w = 1;
							preprop_S_w = 0;
							preprop_T_w = i_a;
							state_w = PREPROP;
						end
					end
			// preprocessing: T <- MA(C, M) which is equal to T <- M*2^256
			PREPROP:begin
						// perform T <- a * 2^256 mod n
						if (MA_counter_r <= 255) begin
							// perform t <- (t + t) mod n
                     if (2 * preprop_T_r >= n_r) begin
								 preprop_T_w = 2 * preprop_T_r - n_r;
                     end else begin
                         preprop_T_w = 2 * preprop_T_r;
                     end
							MA_counter_w = MA_counter_r + 1;
						end else begin
							T_w = preprop_T_r;
							MA_counter_w = 0;
							state_w = MA;
							V_i_w = 0;
							V_T_w = 0;
						end
					end
			// write S <- MA(S,T) and T <- MA(T,T) together
			MA:		begin
						if (MA_counter_r <= 255) begin  // for loop condition check
							// if (e_i == 1) then calculate S <- MA(S,T)
							if (e_r[ME_counter_r] == 1) begin
								// check last bit of V_i+a_i*B
								V_i_w = (V_i_r + S_r[MA_counter_r] * T_r + ((V_i_r + S_r[MA_counter_r] * T_r) % 2) * n_r) / 2;
							end
							// calculate T <- MA(T,T)
							V_T_w = (V_T_r + T_r[MA_counter_r] * T_r + ((V_T_r + T_r[MA_counter_r] * T_r) % 2) * n_r) / 2;
							// increment MA counter in for loop
							MA_counter_w = MA_counter_r + 1;
						end else begin
							// subtract N if V > N (for S)
							if (V_i_r >= n_r && e_r[ME_counter_r] == 1) begin
								S_w = V_i_r - n_r;
							end else if (e_r[ME_counter_r] == 1) begin
								S_w = V_i_r;
							end
							// subtract N if V > N (for T)
							if (V_T_r >= n_r) begin
								T_w = V_T_r - n_r;
							end else begin
								T_w = V_T_r;
							end
							state_w = INC;
						end
					end
			// counter in Modular Exponentiation Algorithm
			INC:	begin
						if (ME_counter_r == 255) begin
							state_w = RESET;
							finished_w = 1'b1;
						end else begin
							ME_counter_w = ME_counter_r + 1;
							MA_counter_w = 0;
							state_w = MA;
							V_i_w = 0;
							V_T_w = 0;
						end
					end
		endcase
		if (i_rst == 1'b1) begin
			state_w = RESET;
        end
	end

	always_ff @(posedge i_clk) begin
		state_r <= state_w;
		a_r <= a_w;
		e_r <= e_w;
		n_r <= n_w;
		ME_counter_r <= ME_counter_w;
		MA_counter_r <= MA_counter_w;
		V_i_r <= V_i_w;
		V_T_r <= V_T_w;
		T_r <= T_w;
		S_r <= S_w;
		preprop_S_r <= preprop_S_w;
		preprop_T_r <= preprop_T_w;
		finished_r <= finished_w;
	end

endmodule
