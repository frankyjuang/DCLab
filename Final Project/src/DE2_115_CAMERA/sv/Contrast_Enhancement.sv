module Contrast_Enhancement(
    iStart,
    iClk,
    iRst,
    oSram_addr,
    oSram_ce_n,
    ioSram_dq,
    oSram_lb_n,
    oSram_oe_n,
    oSram_ub_n,
    oSram_we_n,
    oDone
);

input               iStart;
input               iClk;
input               iRst;
inout   reg [15:0]  ioSram_dq;
output  reg [19:0]  oSram_addr;
output  reg         oSram_ce_n;
output  reg         oSram_lb_n;
output  reg         oSram_oe_n;
output  reg         oSram_ub_n;
output  reg         oSram_we_n;
output  reg         oDone;

parameter   IDLE        = 2'b00;
parameter   COUNT_HISTO = 2'b01;
parameter   COUNT_CUMUL = 2'b10;
parameter   ENHANCE     = 2'b11;

parameter   WIDTH       = 640;
parameter   HEIGHT      = 480;
parameter   PIXELS      = 307200;

logic   [1:0]   state_r, state_w;
logic   [18:0]  counter_r, counter_w;
logic   [27:0]  value_r, value_w;
logic   [19:0]  addr_r, addr_w;
logic   [18:0]  histo_r  [255:0];
logic   [18:0]  histo_w  [255:0];
logic           done_r, done_w;
logic           we_r, we_w;
logic   [15:0]  sram_dq;

assign oSram_addr = addr_r;
assign oSram_ce_n = 0;
assign oSram_lb_n = 0;
assign oSram_oe_n = 0;
assign oSram_ub_n = 0;
assign oSram_we_n = we_r;
assign ioSram_dq = (oSram_we_n)? 'z: sram_dq;
assign oDone = done_r;

always_comb begin
    sram_dq = value_r[9:0];

    state_w = state_r;
    counter_w = counter_r;
    addr_w = addr_r;
    value_w = value_r;
    done_w = done_r;
    we_w = we_r;
    histo_w = histo_r;

    case (state_r)
        IDLE:
            begin
                if (iStart) begin
                    state_w = COUNT_HISTO;
                    counter_r = 0;
                    addr_w = 0;
                end
            end
        COUNT_HISTO:
            begin
                if (counter_r < PIXELS) begin
                    histo_w[ioSram_dq[9:0]] = histo_r[ioSram_dq[9:0]] + 1;
                    addr_w = addr_r + 1;
                    counter_w = counter_r + 1;
                end else begin
                    counter_w = 0;
                    state_w = COUNT_CUMUL;
                end
            end
        COUNT_CUMUL:
            begin
                if (counter_r == 0) begin
                    counter_w = counter_r + 1;
                end else if (counter_r < 255) begin
                    histo_w[counter_r] = histo_r[counter_r - 1] + histo_r[counter_r];
                    counter_w = counter_r + 1;
                end else begin
                    histo_w[counter_r] = histo_r[counter_r - 1] + histo_r[counter_r];
                    counter_w = 0;
                    state_w = ENHANCE;
                    addr_w = 0;
                end
            end
        ENHANCE:
            begin
                counter_w = counter_r + 1;
                if (counter_r == 0) begin // read data from sram and set write address (same so no modification)
                    value_w = ioSram_dq[9:0] * histo_r[ioSram_dq[9:0]] / PIXELS;
                end else if (counter_r == 1) begin // set write enable
                    we_w = 0;
                end else begin // writing; turn off write enable and set next read data address
                    we_w = 1;
                    if (addr_r == PIXELS - 1) // reach address end => quit
                        state_w = IDLE;
                        done_w = 1;
                    end else begin // loop to next address
                        counter_w = 0;
                        addr_w = addr_r + 1;
                    end
                end
            end
    endcase
end


always_ff @(posedge iClk or negedge iRst) begin
    if (!iRst) begin
        state_r         <= IDLE;
        counter_r       <= 0;
        addr_r          <= 0;
        done_r          <= 0;
        value_r         <= 0;
        for (int i = 0; i < 255; i = i + 1) begin
            histo_r[i]   = 0;
        we_r            <= 1;
    end else begin
        state_r         <= state_w;
        counter_r       <= counter_w;
        addr_r          <= addr_w;
        done_r          <= done_w;
        value_r         <= value_w;
        histo_r         <= histo_w;
        we_r            <= we_w;
    end

end
endmodule
