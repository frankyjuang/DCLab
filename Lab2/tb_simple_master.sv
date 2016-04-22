`timescale 1ns/100ps

/* This file tests the RS232 interfce required in lab2.
 * However, the coverage is low and not tested thoroughly.
 * It can check whether you meet the Avalon spec.
 * But whatever address you read, you will get 0xFFFFFFFF.
 * And this testbench stops after you send 31B
 * (it's ought to be all zero because 0xFFFFFFFF mod 0xFFFFFFFF = 0).
 */
module tb;
	localparam CLK = 10;
	localparam HCLK = CLK/2;

	logic avm_rst;
	logic avm_clk;
	initial avm_clk = 0;
	always #HCLK avm_clk = ~avm_clk;
	logic [4:0] avm_address;
	logic avm_read;
	logic [31:0] avm_readdata;
	logic avm_write;
	logic [31:0] avm_writedata;
	logic avm_waitrequest;
    logic [6:0] hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7;

	Rsa256Wrapper m1(
        .hex0(hex0),
        .hex1(hex1),
        .hex2(hex2),
        .hex3(hex3),
        .hex4(hex4),
        .hex5(hex5),
        .hex6(hex6),
        .hex7(hex7),
		.avm_rst(avm_rst),
		.avm_clk(avm_clk),
		.avm_address(avm_address),
		.avm_read(avm_read),
		.avm_readdata(avm_readdata),
		.avm_write(avm_write),
		.avm_writedata(avm_writedata),
		.avm_waitrequest(avm_waitrequest)
	);

	integer nread, nwrite, counter, delay;
	assign avm_waitrequest = (avm_read||avm_write) && (counter!=delay);
	//assign avm_readdata = (avm_read && (counter==delay))? '1: 'x;
	assign avm_readdata = (avm_read && (counter==delay))? nread: 'x;

	task ResetCountdown;
	begin
		counter <= 0;
		delay <= {$random()} % 10;
	end endtask

	initial begin: init_vars
		nread = 0;
		nwrite = 0;
		ResetCountdown();
	end

	initial begin: control_signals
		$fsdbDumpfile("lab2-2.fsdb");
		$fsdbDumpvars;
		avm_rst = 1;
		#(1.5*CLK)
		avm_rst = 0;
		#(500000*CLK)
		$display("Too slow, abort.");
		$finish;
	end

	logic prev_avm_read, prev_avm_write;
	logic [31:0] prev_avm_writedata;
	logic [4:0] prev_avm_address;
	always@(posedge avm_clk) begin
		if (avm_read||avm_write) begin
			counter <= counter+1;
			if (counter == delay) begin
				if (avm_read) begin
					++nread;
					$display("R{%10d} [%8x]", nread, avm_address);
				end else begin
					++nwrite;
					$display("W{%10d} [%8x] = %8x", nwrite, avm_address, avm_writedata);
					if (nwrite == 31)
						$finish;
				end
				ResetCountdown();
			end
		end

		if (counter != 0 && (
			prev_avm_read != avm_read ||
			prev_avm_write != avm_write ||
			avm_write && (prev_avm_writedata != avm_writedata) ||
			prev_avm_address != avm_address
		)) begin
			$display("You should not change the value during waitrequest is asserted");
		end
	end

endmodule
