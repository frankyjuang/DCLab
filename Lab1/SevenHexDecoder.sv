module SevenHexDecoder(
	input [4:0] i_hex,
	output logic [6:0] o_seven
);
	/* The layout of seven segment display, 1: dark
	 *    00
	 *   5  1
	 *    66
	 *   4  2
	 *    33
	 */
	parameter D0   = 7'b1000000;
	parameter D1   = 7'b1111001;
	parameter D2   = 7'b0100100;
	parameter D3   = 7'b0110000;
	parameter D4   = 7'b0011001;
	parameter D5   = 7'b0010010;
	parameter D6   = 7'b0000010;
	parameter D7   = 7'b1011000;
	parameter D8   = 7'b0000000;
	parameter D9   = 7'b0010000;
	parameter DCON = 7'b1111111;
	parameter DRB2	= 7'b1110011; //right bottom segments
	parameter DB1	= 7'b1110111; //bottom segment
	parameter DLB2	= 7'b1100111; //left bottom segments
	parameter DL2	= 7'b1001111; //left segments (reverse 1)
	parameter DLU1	= 7'b1011111; // #5
	parameter DU1	= 7'b1111110; //upper segment
	parameter DRU1 = 7'b1111101; // #1
	parameter DLU2 = 7'b1011110; //left upper segments
	parameter DRU2 = 7'b1111100; //right upper segments
	always_comb begin
		case(i_hex)
			5'h00: begin o_seven = D0; end
			5'h01: begin o_seven = D1; end
			5'h02: begin o_seven = D2; end
			5'h03: begin o_seven = D3; end
			5'h04: begin o_seven = D4; end
			5'h05: begin o_seven = D5; end
			5'h06: begin o_seven = D6; end
			5'h07: begin o_seven = D7; end
			5'h08: begin o_seven = D8; end
			5'h09: begin o_seven = D9; end
			5'h0b: begin o_seven = DRB2; end
			5'h0c: begin o_seven = DB1; end
			5'h0d: begin o_seven = DLB2; end
			5'h0e: begin o_seven = DL2; end
			5'h0f: begin o_seven = DLU1; end
			5'h10: begin o_seven = DU1; end
			5'h11: begin o_seven = DRU1; end
			5'h12: begin o_seven = DLU2; end
			5'h13: begin o_seven = DRU2; end
			default: begin o_seven = DCON; end
		endcase
	end
endmodule
