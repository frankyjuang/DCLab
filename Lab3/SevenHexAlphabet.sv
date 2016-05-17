module SevenHexAlphabet(
	input [1:0] i_state,
    output logic [6:0] o_seven_0,
    output logic [6:0] o_seven_1,
	output logic [6:0] o_seven_2,
	output logic [6:0] o_seven_3
);
    /* The layout of seven segment display, 1: dark
	 *    00
	 *   5  1
	 *    66
	 *   4  2
	 *    33
	 */

	parameter DA    = 7'b0001000;
	parameter DC    = 7'b1000110;
	parameter DD    = 7'b0100001;
	parameter DE    = 7'b0000110;
	parameter DI    = 7'b1111001;
	parameter DL    = 7'b1000111;
	parameter DP    = 7'b0001100;
	parameter DR    = 7'b1001110;
	parameter DS    = 7'b0010010;
	parameter DU    = 7'b1000001;
    parameter DY    = 7'b0010001;
    parameter DCON  = 7'b1111111;

	always_comb begin
		case(i_state)
			2'b00: 
                begin 
                    o_seven_3 = DI;
                    o_seven_2 = DD;
                    o_seven_1 = DL;
                    o_seven_0 = DE;
                end
			2'b01: 
                begin 
                    o_seven_3 = DR;
                    o_seven_2 = DE;
                    o_seven_1 = DC;
                    o_seven_0 = DCON;
                end
			2'b10: 
                begin 
                    o_seven_3 = DP;
                    o_seven_2 = DL;
                    o_seven_1 = DA;
                    o_seven_0 = DY;
                end
			2'b11: 
                begin 
                    o_seven_3 = DP;
                    o_seven_2 = DA;
                    o_seven_1 = DU;
                    o_seven_0 = DS;
                end
        endcase
	end
endmodule
