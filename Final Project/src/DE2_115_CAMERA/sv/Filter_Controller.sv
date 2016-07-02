module Filter_Controller(
    iStart,
    iRst,
    iClk,
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
input               iRst;
input               iClk;
inout   reg [15:0]  ioSram_dq;
output  reg [20:0]  oSram_addr;
output  reg         oSram_ce_n;
output  reg         oSram_we_n;
output  reg         oSram_oe_n;
output  reg         oSram_lb_n;
output  reg         oSram_ub_n;
output  reg         oDone;

parameter INIT          = 3'b000;
parameter LOAD_BLOCK    = 3'b001;
parameter CON           = 3'b010;
parameter LOAD_ORIG     = 3'b011;
parameter WRITE         = 3'b100;
parameter CALC          = 3'b101;
parameter END           = 3'b110;
parameter LOAD_COL      = 3'b111;  // currently not used
//parameter WRITE_START_ADDR = 640 * 480;
parameter WIDTH         = 640;
parameter HEIGHT        = 480;

logic   [2:0]   state_r, state_w;

logic   [9:0]   h_counter_r, h_counter_w;           // horizontal counter
logic   [8:0]   v_counter_r, v_counter_w;           // vertical counter
logic   [9:0]   load_counter_r, load_counter_w;     // counter for loading from sram

logic   [9:0]   filtering_r     [624:0];
logic   [9:0]   filtering_w     [624:0];

logic   [9:0]   value_r, value_w;
logic           start_r, start_w, done_r, done_w;
logic           calc_done, out_value;
logic   [20:0]  addr_r, addr_w;
logic           ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;
logic           sram_dq;

Gaussian_Filter filter(
    .iData(filtering_r),
    .iStart(start_r),
    .iRst(iRst),
    .iClk(iClk),
    .oValue(out_value),
    .oDone(calc_done)
);

assign oSram_addr = addr_r;
assign oSram_ce_n = ce_r;
assign oSram_we_n = we_r;
assign oSram_oe_n = oe_r;
assign oSram_ub_n = ub_r;
assign oSram_lb_n = lb_r;
assign ioSram_dq = (we_r) ? 'z : sram_dq;
assign oDone = done_r;

always_comb begin
    sram_dq = value_r;

    state_w = state_r;
    h_counter_w = h_counter_r;
    v_counter_w = v_counter_r;
    load_counter_w = load_counter_r;
    filtering_w = filtering_r;
    value_w = value_r;
    start_w = start_r;
    done_w  = done_r;
    addr_w = addr_r;
    ce_w = ce_r;
    oe_w = oe_r;
    we_w = we_r;
    ub_w = ub_r;
    lb_w = lb_r;
    
    case(state_r)
        INIT:
            begin
                if (iStart)
                    state_w = CON;
            end
        CON:
            begin
                load_counter_w = 0;
                if (h_counter_r < 12 || h_counter_r > WIDTH-13 ||
                    v_counter_r < 12 || v_counter_r > HEIGHT-13) begin
                    value_w = 128;
                    addr_w = v_counter_r * WIDTH + h_counter_r;
                    state_w = WRITE;
                end else begin
                    addr_w = (v_counter_r-12) * WIDTH + h_counter_r - 12;
                    state_w = LOAD_BLOCK;
                    //h_counter_w = h_counter_r + 1;
                end
            end
        LOAD_BLOCK:
            begin
                filtering_w[load_counter_r] = ioSram_dq[9:0];
                if (load_counter_r < 624) begin
                    load_counter_w = load_counter_r + 1;
                    addr_w = (v_counter_r-12+(load_counter_w/25)) * WIDTH + (h_counter_r-12+(load_counter_w%25));
                end else begin
                    state_w = CALC;
                    start_w = 1;
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
                    if (h_counter_r < WIDTH-1)
                        h_counter_w = h_counter_r + 1;
                    else if (h_counter_r == WIDTH-1 && v_counter_r < HEIGHT-1) begin
                        h_counter_w = 0;
                        v_counter_w = v_counter_r + 1;
                    end else begin
                        state_w = END;
                        done_w = 1;
                    end
                end
            end
        CALC:
            begin
                start_w = 0;
                if (calc_done) begin
                    addr_w = v_counter_r * WIDTH + h_counter_r;
                    state_w = LOAD_ORIG;
                end
            end
        LOAD_ORIG:
            begin
                value_w = (255 - out_value)/2 + ioSram_dq[9:0]/2;
                addr_w = v_counter_r * WIDTH + h_counter_r;
                load_counter_w = 0;
                state_w = WRITE;
            end
    endcase

end


always_ff @(posedge iClk or negedge iRst) begin
    if(!iRst) begin
        state_r         <= INIT;
        h_counter_r     <= 0;
        v_counter_r     <= 0;
        load_counter_r  <= 0;
        //filtering_r     <= 0;
        for (int i=0; i<625; i=i+1) begin
            filtering_r[i] = 0;
        end
        value_r         <= 0;
        start_r         <= 0;
        done_r          <= 0;
        addr_r          <= 0;
        ce_r            <= 0;
        oe_r            <= 0;
        we_r            <= 1;
        ub_r            <= 0;
        lb_r            <= 0;
    end else begin
        state_r         <= state_w;
        h_counter_r     <= h_counter_w;
        v_counter_r     <= v_counter_w;        
        load_counter_r  <= load_counter_w;
        filtering_r     <= filtering_w;
        value_r         <= value_w;
        start_r         <= start_w;
        done_r          <= done_w;
        addr_r          <= addr_w;
        ce_r            <= ce_w;
        oe_r            <= oe_w;
        we_r            <= we_w;
        ub_r            <= ub_w;
        lb_r            <= lb_w;
    end
end

endmodule
