module AudioRecorder (
    input           start,
    input           end,
    input           rst,
    input           pause,
    output  [19:0]  sram_addr,
    inout   [15:0]  sram_dq,
    output          sram_ce_n,
    output          sram_oe_n,
    output          sram_we_n,
    output          sram_ub_n,
    output          sram_lb_n,
    inout           aud_bclk,
    input           aud_adcdat,
    inout           aud_adclrck
);

parameter IDLE          = 3'b000;
parameter GET_DATA      = 3'b001;
parameter SEND_DATA     = 3'b010;
parameter CON           = 3'b011;
parameter PAUSE         = 3'b100;

logic [2:0] state_r, state_w;
logic [15:0] data_r, data_w;
logic [4:0] data_counter_r, data_counter_w;
logic sent_r, sent_w;
logic ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;
logic [19:0] addr_r, addr_w;
logic got_end_sig_r, got_end_sig_w;
logic got_pause_sig_r, got_pause_sig_w;

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
    got_end_sig_w = got_end_sig_r;
    got_pause_sig_w = got_pause_sig_r;

    case(state_r)
        IDLE:
            begin
                if (start == 1'b1) begin
                    state_w = CON;
                end
            end
        CON:
            begin
                if (end == 1'b1) begin
                    state_w = IDLE;
                end else if (pause == 1'b1) begin
                    state_w = PAUSE;
                end else if (sent_r == 1'b1 && aud_adclrck == 1'b1) begin
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
                if (end == 1'b1) begin
                    got_end_sig_w = 1'b1;
                end else if (pause == 1'b1) begin
                    got_pause_sig_w = 1'b1;
                end
            end
        SEND_DATA:
            begin
                we_w = 1'bx;
                ce_w = 1'b1;
                oe_w = 1'bx;
                lb_w = 1'bx;
                ub_w = 1'bx;
                sent_w = 1'b1;
                if (end == 1'b1 || got_end_sig_r == 1'b1) begin
                    state_w = IDLE;
                end else if (pause == 1'b1 || got_pause_sig_r == 1'b1) begin
                    state_w = PAUSE;
                end else begin
                    state_w = CON;
                end
                if (addr_r == '1) begin
                    addr_w = 0;
                    state_w = IDLE;
                end else begin
                    addr_w = addr_r + 1;
                end
            end
        PAUSE:
            begin
                if (start == 1'b1) begin
                    state_w = CON;
                end else if (end == 1'b1) begin
                    state_w = IDLE;
                end
            end
    endcase
end

always_ff @(negedge aud_bclk) begin
    if (rst) begin
        state_r <= IDLE;
        data_r <= 0;
        data_counter_r <= 0;
        sent_r <= 1;
        we_r <= 1'bx;
        ce_r <= 1'b1;
        oe_r <= 1'bx;
        lb_r <= 1'bx;
        ub_r <= 1'bx;
        addr_r <= 0;
        got_end_sig_r <= 0;
        got_pause_sig_r <= 0;
    end else begin
        state_r <= state_w;
        data_r <= data_w;
        data_counter_r <= data_counter_w;
        sent_r <= sent_w;
        we_r <= we_w;
        ce_r <= ce_w;
        oe_r <= oe_w;
        lb_r <= lb_w;
        ub_r <= ub_w;
        addr_r <= addr_w;
        got_end_sig_r <= got_end_sig_w;
        got_pause_sig_r <= got_pause_sig_w;
    end
end
