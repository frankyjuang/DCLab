module I2cSender #(parameter BYTE=1) (
	input i_start,
	input [BYTE*8-1:0] i_dat,
	input i_clk,
	input i_rst,
	output o_finished,
	output o_sclk,
    output [1:0] o_state,
	inout o_sdat
);

    parameter START = 2'b00;
    parameter TX    = 2'b01;
    parameter ACK   = 2'b10;
    parameter FIN   = 2'b11;

    logic [1:0]         state_r, state_w;
    logic [1:0]         clk_cnt_r, clk_cnt_w;
    logic [2:0]         bit_cnt_r, bit_cnt_w;
    logic [1:0]         byte_cnt_r, byte_cnt_w;
    logic               sclk_r, sclk_w;
    logic               oe_r, oe_w;
    logic               o_bit_r, o_bit_w;
    logic [BYTE*8-1:0]  i_data_r, i_data_w;
    logic               o_finished_r, o_finished_w;

    assign o_finished   = o_finished_r;
    assign o_sclk       = sclk_r;
    assign o_sdat       = oe_r ? o_bit_r : 1'bz;
    assign o_state      = state_r;

    always_comb begin
        state_w         = state_r;
        clk_cnt_w       = clk_cnt_r;
        bit_cnt_w       = bit_cnt_r;
        byte_cnt_w      = byte_cnt_r;
        sclk_w          = sclk_r;
        oe_w            = oe_r;
        o_bit_w         = o_bit_r;
        i_data_w        = i_data_r;
        o_finished_w    = o_finished_r;

        case (state_r)
            START:
                begin
                    //$display("state START");
                    if (clk_cnt_r == 2'b10) begin
                        o_bit_w = 0;
                        clk_cnt_w = clk_cnt_r - 1;
                    end else if (clk_cnt_r == 2'b01) begin
                        sclk_w = 0;
                        clk_cnt_w = clk_cnt_r - 1;
                    end else begin
                        clk_cnt_w = 2'b10;
                        bit_cnt_w = 3'b111;
                        byte_cnt_w = BYTE - 1;
                        o_bit_w = i_data_r[BYTE*8-1]; // MSB->LSB
                        i_data_w = i_data_r << 1;
                        state_w = TX;
                    end
                end

            TX:
                begin
                    //$display("state TX");
                    if (clk_cnt_r == 2'b10) begin
                        clk_cnt_w = clk_cnt_r - 1;
                        sclk_w = 1;
                    end else if (clk_cnt_r == 2'b01) begin
                        clk_cnt_w = clk_cnt_r - 1;
                        sclk_w = 0;
                    end else begin  // clk_cnt_r == 2'b00
                        clk_cnt_w = 2'b10;
                        if (bit_cnt_r == 3'b000) begin
                            oe_w = 0;
                            state_w = ACK;
                        end else begin
                            bit_cnt_w = bit_cnt_r - 1;
                            o_bit_w = i_data_r[BYTE*8-1];  // MSB->LSB
                            i_data_w = i_data_r << 1;
                        end
                    end
                end
            ACK:
                begin
                    //$display("state ACK");
                    if (clk_cnt_r == 2'b10) begin
                        clk_cnt_w = clk_cnt_r - 1;
                        sclk_w = 1;
                    end else if (clk_cnt_r == 2'b01) begin
                        clk_cnt_w = clk_cnt_r - 1;
                        sclk_w = 0;
                    end else begin  // clk_cnt_r == 2'b00
                        clk_cnt_w = 2'b10;
                        oe_w = 1;
                        if (byte_cnt_r == 2'b00) begin
                            o_bit_w = 0;
                            state_w = FIN;
                        end else begin
                            bit_cnt_w = 3'b111;
                            byte_cnt_w = byte_cnt_r - 1;
                            o_bit_w = i_data_r[BYTE*8-1]; // MSB->LSB
                            i_data_w = i_data_r << 1;
                            state_w = TX;
                        end
                    end
                end

            FIN:
                begin
                    //$display("state FIN");
                    if (clk_cnt_r == 2'b10) begin
                        clk_cnt_w = clk_cnt_r - 1;
                        sclk_w = 1;
                    end else if (clk_cnt_r == 2'b01) begin
                        clk_cnt_w = clk_cnt_r - 1;
                        o_bit_w = 1;
                        o_finished_w = 1;
                    end else begin  // clk_cnt_r == 2'b00
                        o_finished_w = 1'b0;
                        if (i_start) begin
                            //$display("i_start triggered.");
                            state_w = START;
                            clk_cnt_w = 2'b10;
                            i_data_w = i_dat;
                        end
                    end
                end
        endcase
    end

    always_ff @(posedge i_clk or posedge i_rst) begin
        if (i_rst) begin
            //$display("i_rst triggered.");
            state_r         <= FIN;
            clk_cnt_r       <= 2'b00;
            bit_cnt_r       <= 3'b000;
            byte_cnt_r      <= 2'b00;
            sclk_r          <= 1;
            oe_r            <= 1;
            o_bit_r         <= 1;
            i_data_r        <= 8'h00;
            o_finished_r    <= 0;
        end else begin
            state_r         <= state_w;
            clk_cnt_r       <= clk_cnt_w;
            bit_cnt_r       <= bit_cnt_w;
            byte_cnt_r      <= byte_cnt_w;
            sclk_r          <= sclk_w;
            oe_r            <= oe_w;
            o_bit_r         <= o_bit_w;
            i_data_r        <= i_data_w;
            o_finished_r    <= o_finished_w;
        end
    end

endmodule
