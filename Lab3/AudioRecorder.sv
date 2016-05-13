module AudioRecorder (
    input           start,
    output  [19:0]  sram_addr,
    inout   [15:0]  sram_dq,
    output          sram_ce_n,
    output          sram_oe_n,
    output          sram_we_n,
    output          sram_ub_n,
    output          sram_lb_n,
    output          aud_xck,
    inout           aud_bclk,
    output          aud_dacdat,
    inout           aud_daclrck,
    input           aud_adcdat,
    inout           aud_adclrck
);

parameter IDLE          = 2'b00;
parameter GET_DATA      = 2'b01;
parameter SEND_DATA     = 2'b10;
parameter CON           = 2'b11;

logic [1:0] state_r, state_w;
logic [15:0] data_r, data_w;
logic [4:0] data_counter_r, data_counter_w;
logic sent_r, sent_w;
logic ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;
logic [19:0] addr_r, addr_w;

assign sram_dq = data_r;
assign sram_addr = addr_r;

always_comb begin
    state_w = state_r;
    data_w = data_r;
    data_counter_w = data_counter_r;
    sent_w = sent_r;
    ce_w = ce_r;
    oe_w = oe_r;
    we_w = we_r;
    ub_w = ub_r;
    lb_w = lb_r;
    addr_w = addr_r;
    case(state_r)
        IDLE:
            begin
                we_w = 1'bx;
                ce_w = 1'b1;
                oe_w = 1'bx;
                lb_w = 1'bx;
                ub_w = 1'bx;
                if (start == 1'b1) begin
                    state_w = CON;
                    data_counter_w = 0;
                    data_w = 0;
                    sent_w = 1;
                    addr_w = 0;
                end
            end
        CON:
            begin
                if (sent_r == 1'b1 && aud_adclrck == 1'b1) begin
                    sent_w = 0;
                end else if (sent_r == 1'b0 && aud_adclrck == 1'b0) begin
                    state_w = GET_DATA;
                end
            end
        GET_DATA:
            begin
                if (data_counter_r < 16) begin
                    data_counter_w = data_counter_r + 1;
                    data_w = data_r << 1;
                    data_w[0] = aud_adcdat;
                end
                if (data_counter_r == 15) begin
                    data_counter_w = 0;
                    state_w = SEND_DATA;
                    we_w = 1'b0;
                    ce_w = 1'b0;
                    oe_w = 1'bx;
                    lb_w = 1'b0;
                    ub_w = 1'b0;
                end
            end
        SEND_DATA:
            begin
                if (addr_r == '1) begin
                    addr_w = 0;
                end else begin
                    addr_w = addr_r + 1;
                end
                we_w = 1'bx;
                ce_w = 1'b1;
                oe_w = 1'bx;
                lb_w = 1'bx;
                ub_w = 1'bx;
                state_w = CON;
                sent_w = 1'b1;
            end
    endcase
end

always_ff @(negedge aud_bclk) begin
    state_r <= state_w;
end
