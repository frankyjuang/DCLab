module Closing_Controller(
    iStart,
    iRst,
    iClk,
    oSram_addr,
    ioSram_dq,
    oSram_we_n,
    oDone
);

input               iStart;
input               iRst;
input               iClk;
inout   reg [15:0]  ioSram_dq;
output  reg [20:0]  oSram_addr;
output  reg         oSram_we_n;
output  reg         oDone;

parameter INIT          = 3'b000;
parameter LOAD_BLOCK    = 3'b001;
parameter CON           = 3'b010;
parameter WRITE         = 3'b011;
parameter CALC          = 3'b100;
parameter END           = 3'b101;
//parameter WRITE_START_ADDR = 640 * 480;

parameter WIDTH         = 640;
parameter HEIGHT        = 480;

parameter DILATION      = 1'b0;
parameter EROSION       = 1'b1;

logic   [2:0]   state_r, state_w;

logic   [9:0]   h_counter_r, h_counter_w;           // horizontal counter
logic   [8:0]   v_counter_r, v_counter_w;           // vertical counter
logic   [9:0]   load_counter_r, load_counter_w;     // counter for loading from sram

logic   [9:0]   filtering_r     [8:0];
logic   [9:0]   filtering_w     [8:0];

logic   [9:0]   value_r, value_w;
logic           start_r, start_w, done_r, done_w, mode_r, mode_w;
logic           calc_done, out_value;
logic   [20:0]  addr_r, addr_w;
logic           we_r, we_w;
logic           sram_dq;

MinMax_Filter filter(
    .iData(filtering_r),
    .iMode(mode_r),
    .iStart(start_r),
    .iRst(iRst),
    .iClk(iClk),
    .oValue(out_value),
    .oDone(calc_done)
);

assign oSram_addr = addr_r;
assign oSram_we_n = we_r;
assign ioSram_dq = (we_r) ? 'z : sram_dq;
assign oDone = done_r;

always_comb begin
    sram_dq = value_r;
    mode_w = mode_r;
    state_w = state_r;
    h_counter_w = h_counter_r;
    v_counter_w = v_counter_r;
    load_counter_w = load_counter_r;
    filtering_w = filtering_r;
    value_w = value_r;
    start_w = start_r;
    done_w  = done_r;
    addr_w = addr_r;
    we_w = we_r;

    case(state_r)
        INIT:
            begin
                if (iStart) begin
                    state_w = CON;
                    addr_w = 0;
                    h_counter_w = 1;
                    v_counter_w = 1;
                end
            end
        CON:
            begin
                load_counter_w = 0;
                addr_w = (v_counter_r-1) * WIDTH + h_counter_r - 1;
                state_w = LOAD_BLOCK;
            end
        LOAD_BLOCK:
            begin
                filtering_w[load_counter_r] = ioSram_dq[9:0];
                if (load_counter_r < 8) begin
                    load_counter_w = load_counter_r + 1;
                    addr_w = (v_counter_r-1+(load_counter_w/3)) * WIDTH + (h_counter_r-1+(load_counter_w%3));
                end else begin
                    state_w = CALC;
                    start_w = 1;
                end
            end
        CALC:
            begin
                start_w = 0;
                if (calc_done) begin
                    addr_w = v_counter_r * WIDTH + h_counter_r;
                    state_w = WRITE;
                end
            end
        WRITE:
            begin
                if (load_counter_r < 1) begin
                    we_w = 0;
                    load_counter_w = load_counter_r + 1;
                end else begin
                    we_w = 1;
                    state_w = CON;
                    if (h_counter_r < WIDTH-2)
                        h_counter_w = h_counter_r + 1;
                    else if (h_counter_r == WIDTH-2 && v_counter_r < HEIGHT-2) begin
                        h_counter_w = 0;
                        v_counter_w = v_counter_r + 1;
                    end else if (mode_r == DILATION) begin
                        state_w = CON;
                        mode_w = EROSION;
                        addr_w = 0;
                        h_counter_w = 1;
                        v_counter_w = 1;
                    end else begin
                        state_w = END;
                        done_w = 1;
                    end
                end
            end
    endcase
end

always_ff @(posedge iClk or negedge iRst) begin
    if(!iRst) begin
        state_r         <= INIT;
        mode_r          <= DILATION;
        h_counter_r     <= 0;
        v_counter_r     <= 0;
        load_counter_r  <= 0;
        for (int i = 0; i < 9; i = i + 1) begin
            filtering_r[i] = 0;
        end
        value_r         <= 0;
        start_r         <= 0;
        done_r          <= 0;
        addr_r          <= 0;
        we_r            <= 1;
    end else begin
        state_r         <= state_w;
        mode_r          <= mode_w;
        h_counter_r     <= h_counter_w;
        v_counter_r     <= v_counter_w;
        load_counter_r  <= load_counter_w;
        filtering_r     <= filtering_w;
        value_r         <= value_w;
        start_r         <= start_w;
        done_r          <= done_w;
        addr_r          <= addr_w;
        we_r            <= we_w;
    end
end
endmodule
