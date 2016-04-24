module Rsa256Wrapper(
	output [6:0] hex0,
	output [6:0] hex1,
	output [6:0] hex2,
	output [6:0] hex3,
	output [6:0] hex4,
	output [6:0] hex5,
	output [6:0] hex6,
	output [6:0] hex7,
	input avm_rst,
	input avm_clk,
	output [4:0] avm_address,
	output avm_read,
	input [31:0] avm_readdata,
	output avm_write,
	output [31:0] avm_writedata,
	input avm_waitrequest
);
	localparam RX_BASE     = 0*4;
	localparam TX_BASE     = 1*4;
	localparam STATUS_BASE = 2*4;
	localparam TX_OK_BIT   = 6;
	localparam RX_OK_BIT   = 7;

	localparam S_GET_KEY 		 = 0;
	localparam S_GET_DATA 		 = 1;
	localparam S_WAIT_CALCULATE = 2;
	localparam S_SEND_DATA 		 = 3;
    localparam S_WAIT            = 4;
    localparam S_AFTER_GET_STATUS    = 5;

	localparam WAITING_READ 	 = 0;
	localparam WAITING_WRITE 	 = 1;
	localparam WAITING_NOTHING  = 2;

   logic [6:0] hex0_r, hex0_w, hex1_r, hex1_w, hex2_r, hex2_w, hex3_r, hex3_w, hex4_r, hex4_w;
   logic [6:0] hex5_r, hex5_w, hex6_r, hex6_w, hex7_r, hex7_w;
	logic [255:0] n_r, n_w, e_r, e_w, enc_r, enc_w, dec_r, dec_w;
	logic [2:0] state_r, state_w;
	logic [6:0] bytes_counter_r, bytes_counter_w;
	logic [4:0] avm_address_r, avm_address_w;
	logic avm_read_r, avm_read_w, avm_write_r, avm_write_w;
   logic [1:0] waiting_r, waiting_w;
	logic read_ne_r, read_ne_w;     // read in N and e only once

	logic rsa_start_r, rsa_start_w;
	logic rsa_finished;
	logic [255:0] rsa_dec;

	assign hex0 = hex0_r;
	assign hex1 = hex1_r;
	assign hex2 = hex2_r;
	assign hex3 = hex3_r;
	assign hex4 = hex4_r;
	assign hex5 = hex5_r;
	assign hex6 = hex6_r;
	assign hex7 = hex7_r;
	assign avm_address = avm_address_r;
	assign avm_read = avm_read_r;
	assign avm_write = avm_write_r;
	assign avm_writedata = dec_r[247-:8];

	Rsa256Core rsa256_core(
		.i_clk(avm_clk),
		.i_rst(avm_rst),
		.i_start(rsa_start_r),
		.i_a(enc_r),
		.i_e(e_r),
		.i_n(n_r),
		.o_a_pow_e(rsa_dec),
		.o_finished(rsa_finished)
	);

	task StartRead;
		input [4:0] addr;
		begin
			avm_read_w = 1;
			avm_write_w = 0;
			avm_address_w = addr;
		end
	endtask
	task StartWrite;
		input [4:0] addr;
		begin
			avm_read_w = 0;
			avm_write_w = 1;
			avm_address_w = addr;
		end
	endtask

	always_comb begin
			hex0_w = hex0_r;
			hex1_w = hex1_r;
			hex2_w = hex2_r;
			hex3_w = hex3_r;
			hex4_w = hex4_r;
			hex5_w = hex5_r;
			hex6_w = hex6_r;
			hex7_w = hex7_r;
			n_w = n_r;
			e_w = e_r;
			enc_w = enc_r;
			dec_w = dec_r;
			avm_address_w = avm_address_r;
			avm_read_w = avm_read_r;
			avm_write_w = avm_write_r;
			state_w = state_r;
			bytes_counter_w = bytes_counter_r;
			rsa_start_w = rsa_start_r;
         waiting_w = waiting_r;
			read_ne_w = read_ne_r;
			case (state_r)
				S_GET_KEY:          begin
                                    // hex1 = 7'b1111110;
												if (waiting_r == WAITING_READ && avm_waitrequest == 1'b0 && avm_read_r == 1'b1) begin
                                        if (avm_readdata[RX_OK_BIT] == 1'b1) begin
                                            avm_read_w = 0
                                            state_w = S_AFTER_GET_STATUS;
                                        end
                                    end else if (waiting_r == WAITING_WRITE && avm_waitrequest == 1'b0 && avm_read_r == 1'b1) begin
                                        if (avm_readdata[TX_OK_BIT] == 1'b1) begin
                                            avm_read_w = 0;
                                            state_w = S_AFTER_GET_STATUS;
                                        end
                                    end
                                end
                S_WAIT:             begin
                                        StartRead(STATUS_BASE);
                                        state_w = S_GET_KEY;
                                    end
                S_AFTER_GET_STATUS: begin
                                        if (waiting_r == WAITING_READ) begin
                                            StartRead(RX_BASE);
                                            state_w = S_GET_DATA;
                                        end else if (waiting_r == WAITING_WRITE) begin
                                            StartWrite(TX_BASE);
                                            state_w = S_SEND_DATA;
                                        end
                                    end
            S_GET_DATA:         begin
												if (avm_waitrequest == 1'b0 && avm_read_r == 1) begin
                                        //$display("readdata: %d", avm_readdata[7:0]);
                                                    state_w = S_WAIT;
                                                    avm_read_w = 0;
													bytes_counter_w = bytes_counter_r + 1;
													if (read_ne_r == 1) begin
														if (bytes_counter_r < 32) begin
                                                            $display("counter: %d", bytes_counter_r);
															$display("readdata: %x", avm_readdata);
                                                            if (bytes_counter_r != 0) begin
                                                                n_w = n_r << 8;
                                                            end
															n_w[7:0] = avm_readdata[7:0];
                                                    if (bytes_counter_r == 0) begin
																//$display("hex0 + hex1");
																hex0_w = n_w[6:0];
																hex1_w[0] = n_w[7];
															end else if (bytes_counter_r == 1) begin
																//$display("hex2 + hex3");
																hex2_w = n_w[6:0];
																hex3_w[0] = n_w[7];
															end else if (bytes_counter_r == 2) begin
																//$display("hex4 + hex5");
																hex4_w = n_w[6:0];
																hex5_w[0] = n_w[7];
															end else if (bytes_counter_r == 3) begin
																//$display("hex6 + hex7");
																hex6_w = n_w[6:0];
																hex7_w[0] = n_w[7];
															end
                                                            /*
															$display("hex0: %b", hex0_w);
															$display("hex1: %b", hex1_w);
															$display("hex2: %b", hex2_w);
															$display("hex3: %b", hex3_w);
															$display("hex4: %b", hex4_w);
															$display("hex5: %b", hex5_w);
															$display("hex6: %b", hex6_w);
															$display("hex7: %b", hex7_w);
                                                            */
															$display("n_w: %x", n_w);
															$display("n_r: %x", n_r);
														end else if (bytes_counter_r < 64) begin
															if (bytes_counter_r != 32) begin
																e_w = e_r << 8;
															end
															e_w[7:0] = avm_readdata[7:0];
															$display("e_w: %x", e_w);
															$display("e_r: %x", e_r);
														end else if (bytes_counter_r < 96) begin
															if (bytes_counter_r != 64) begin
																enc_w = enc_r << 8;
															end
															enc_w[7:0] = avm_readdata[7:0];
															$display("enc_w: %x", enc_w);
															$display("enc_r: %x", enc_r);
														end else if (bytes_counter_r >= 96) begin
															state_w = S_WAIT_CALCULATE;
                                                            bytes_counter_w = 0;
															avm_read_w = 1'b0;
															rsa_start_w = 1'b1;
															read_ne_w = 1'b0;
															$display("n_r: %x", n_r);
															$display("e_r: %x", e_r);
															$display("enc_r: %x", enc_r);
														end
														/*
														$display("n: %d", n_w);
														$display("e: %d", e_w);
														$display("enc: %d", enc_w);
														$display("counter: %d", bytes_counter_r);
														*/
													end else begin
														bytes_counter_w = bytes_counter_r + 1;
														if (bytes_counter_r < 32) begin
															if (bytes_counter_r != 0) begin
																enc_w = enc_r << 8;
															end
															enc_w[7:0] = avm_readdata[7:0];
														end else if (bytes_counter_r >= 32) begin
                                                            bytes_counter_w = 0;
															state_w = S_WAIT_CALCULATE;
															avm_read_w = 1'b0;
															rsa_start_w = 1'b1;
														end
													end
												end
											end
            S_WAIT_CALCULATE:   begin
                                    rsa_start_w = 1'b0;
                                    if (rsa_finished == 1'b1) begin
                                        dec_w = rsa_dec;
                                        state_w = S_GET_KEY;
                                        waiting_w = WAITING_WRITE;
                                        StartRead(STATUS_BASE);
													 /*
													 hex0_w = dec_w[6:0];
													 hex1_w = dec_w[13:7];
													 hex2_w = dec_w[20:14];
													 hex3_w = dec_w[27:21];
													 hex4_w = dec_w[34:28];
													 hex5_w = dec_w[41:35];
													 hex6_w = dec_w[48:42];
													 hex7_w = dec_w[55:49];
													 */
                                    end
                                end
            S_SEND_DATA:        begin
                                    if (avm_waitrequest == 1'b0 && avm_write_r == 1) begin
                                        $display("dec: %x", dec_r);
                                        bytes_counter_w = bytes_counter_r + 1;
                                        avm_write_w = 0;
                                        state_w = S_WAIT;
                                        if (bytes_counter_r < 31) begin
                                            dec_w = dec_r << 8;
                                        end else if (bytes_counter_r >= 32) begin
                                            //state_w = S_GET_KEY;
                                            waiting_w = WAITING_READ;
                                            bytes_counter_w = 0;
                                        end
                                    end
                                end
        endcase
    end


	always_ff @(posedge avm_clk or posedge avm_rst) begin
		if (avm_rst) begin
			hex0_r <= 7'b1111111;
			hex1_r <= 7'b1111111;
         hex2_r <= 7'b1111111;
         hex3_r <= 7'b1111111;
         hex4_r <= 7'b1111111;
         hex5_r <= 7'b1111111;
         hex6_r <= 7'b1111111;
         hex7_r <= 7'b1111111;
			n_r <= 0;
			e_r <= 0;
			enc_r <= 0;
			dec_r <= 0;
			avm_address_r <= STATUS_BASE;
			avm_read_r <= 1;
			avm_write_r <= 0;
			state_r <= S_GET_KEY;
			waiting_r <= WAITING_READ;
			bytes_counter_r <= 0;
			rsa_start_r <= 0;
			read_ne_r <= 1;
		end else begin
			//$display("avm_waitrequest: %d", avm_waitrequest);
			//$display("bytes_counter: %d", bytes_counter_r);
			//$display("Wrapper state: %d", state_r);
			//$display("avm_read: %d", avm_read);
			//$display("avm_readdata: %d", avm_readdata);
			//$display("n: %d", n_r);
			//$display("e: %d", e_r);
			//$display("waiting: %d", waiting_r);\
			hex0_r <= hex0_w;
			hex1_r <= hex1_w;
			hex2_r <= hex2_w;
			hex3_r <= hex3_w;
			hex4_r <= hex4_w;
			hex5_r <= hex5_w;
			hex6_r <= hex6_w;
			hex7_r <= hex7_w;
			n_r <= n_w;
			e_r <= e_w;
			enc_r <= enc_w;
			dec_r <= dec_w;
			avm_address_r <= avm_address_w;
			avm_read_r <= avm_read_w;
			avm_write_r <= avm_write_w;
			state_r <= state_w;
			waiting_r <= waiting_w;
			bytes_counter_r <= bytes_counter_w;
			rsa_start_r <= rsa_start_w;
			read_ne_r <= read_ne_w;
		end
	end
endmodule
