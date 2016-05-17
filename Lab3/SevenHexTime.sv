module SevenHexTime(
	input [5:0] i_time,
	output logic [6:0] o_seven_ten,
	output logic [6:0] o_seven_one
);
    /* The layout of seven segment display, 1: dark
	 *    00
	 *   5  1
	 *    66
	 *   4  2
	 *    33
	 */

	parameter D0    = 7'b1000000;
	parameter D1    = 7'b1111001;
	parameter D2    = 7'b0100100;
	parameter D3    = 7'b0110000;
	parameter D4    = 7'b0011001;
	parameter D5    = 7'b0010010;
	parameter D6    = 7'b0000010;
	parameter D7    = 7'b1011000;
	parameter D8    = 7'b0000000;
	parameter D9    = 7'b0010000;
    parameter DCON  = 7'b1111111;
    
    logic [3:0] digit_ten, digit_one;

	always_comb begin
        digit_ten = i_time / 10;
        digit_one = i_time % 10;
        o_seven_ten = DCON;
        o_seven_one = DCON;
		case(digit_ten)
			4'h0: begin o_seven_ten = D0; end
			4'h1: begin o_seven_ten = D1; end
			4'h2: begin o_seven_ten = D2; end
			4'h3: begin o_seven_ten = D3; end
			4'h4: begin o_seven_ten = D4; end
			4'h5: begin o_seven_ten = D5; end
			4'h6: begin o_seven_ten = D6; end
			4'h7: begin o_seven_ten = D7; end
			4'h8: begin o_seven_ten = D8; end
			4'h9: begin o_seven_ten = D9; end
		endcase
        case(digit_one)
			4'h0: begin o_seven_one = D0; end
			4'h1: begin o_seven_one = D1; end
			4'h2: begin o_seven_one = D2; end
			4'h3: begin o_seven_one = D3; end
			4'h4: begin o_seven_one = D4; end
			4'h5: begin o_seven_one = D5; end
			4'h6: begin o_seven_one = D6; end
			4'h7: begin o_seven_one = D7; end
			4'h8: begin o_seven_one = D8; end
			4'h9: begin o_seven_one = D9; end
        endcase
        if (i_time == 63) begin
            o_seven_one = DCON;
            o_seven_ten = DCON;
        end
	end
endmodule
