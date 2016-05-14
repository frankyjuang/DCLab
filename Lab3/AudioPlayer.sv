module AudioPlayer (
    input           start,
    input           end,
    input           rst,
    input           pause,
    input   [3:0]   speed,
    input           interpol_mode,
    output  [19:0]  sram_addr,
    inout   [15:0]  sram_dq,
    output          sram_ce_n,
    output          sram_oe_n,
    output          sram_we_n,
    output          sram_ub_n,
    output          sram_lb_n,
    inout           aud_bclk,
    output          aud_dacdat,
    inout           aud_daclrck
);

parameter IDLE          = 3'b000;
parameter GET_DATA      = 3'b001;
parameter CON           = 3'b010;
parameter SEND_SLOW     = 3'b011;
parameter SEND_FAST     = 3'b100;
parameter PAUSE         = 3'b101;

logic [2:0] state_r, state_w;
logic [15:0] data_r, data_w, old_data_r, old_data_w, inter_data_r, inter_data_w;
logic [4:0] data_counter_r, data_counter_w;
logic [3:0] slow_counter_r, slow_counter_w;
logic sent_r, sent_w;
logic ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;
logic [20:0] addr_r, addr_w;
logic got_end_sig_r, got_end_sig_w;
logic got_pause_sig_r, got_pause_sig_w;
logic fast;
logic [2:0] scale;
logic [3:0] cur_speed_r, cur_speed_w;

assign aud_dacdat = interpol_mode ? inter_data_r[0] : old_data_r[0];
assign sram_addr = addr_r[19:0];

always_comb begin
    state_w = state_r;
    data_w = data_r;
    old_data_w = old_data_r;
    inter_data_w = inter_data_r;
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
    cur_speed_w = cur_speed_r;
    slow_counter_w = slow_counter_r;

    if (cur_speed_r >= 9) begin
        fast = 0;
        scale = cur_speed_r - 7;
    end else begin
        fast = 1;
        scale = cur_speed_r[2:0];
    end

    case(state_r)
        IDLE:
            begin
                if (start == 1'b1) begin
                    we_w = 1'b1;
                    ce_w = 1'b0;
                    oe_w = 1'b0;
                    lb_w = 1'b0;
                    ub_w = 1'b0;
                    state_w = GET_DATA;
                    cur_speed_w = speed;
                end
            end
        GET_DATA:
            begin
                data_w = sram_dq;
                if (addr_r != 0) begin
                    we_w = 1'bx;
                    ce_w = 1'b1;
                    oe_w = 1'bx;
                    lb_w = 1'bx;
                    ub_w = 1'bx;
                    old_data_w = data_r;
                    state_w = CON;
                end
                if (fast == 1) begin
                    addr_w = addr_r + scale;
                end else begin
                    addr_w = addr_r + 1;
                end

                if (end == 1'b1) begin
                    state_w = IDLE;
                end else if (pause == 1) begin
                    got_pause_sig_w = 1'b1;
                end
            end
        CON:
            begin
                if (sent_r == 1'b1 && aud_adclrck == 1'b1) begin
                    sent_w = 0;
                end else if (sent_r == 1'b0 && aud_adclrck == 1'b0) begin
                    if (fast == 1) begin
                        state_w = SEND_FAST;
                    end else begin
                        state_w = SEND_SLOW;
                        inter_data_w = old_data_r + (data_r - old_data_r) / 7 * slow_counter_r;
                    end
                end

                if (end == 1'b1) begin
                    state_w = IDLE;
                end else if (pause == 1'b1) begin
                    got_pause_sig_w = 1'b1;
                end
            end
        SEND_SLOW:
            begin
                if (interpol_mode == 0) begin
                    if (data_counter_r < 16) begin
                        data_counter_w = data_counter_r + 1;
                        old_data_w = old_data_r >> 1;
                        old_data_w[15] = old_data_r[0];
                    end
                    if (data_counter_r == 15) begin
                        data_counter_w = 0;
                        sent_w = 1;
                        if (slow_counter_r == scale - 1) begin
                            we_w = 1'b1;
                            ce_w = 1'b0;
                            oe_w = 1'b0;
                            lb_w = 1'b0;
                            ub_w = 1'b0;
                            state_w = GET_DATA;
                            cur_speed_w = speed;
                        end else begin
                            state_w = CON;
                            slow_counter_w = slow_counter_r + 1;
                        end
                    end
                end else begin
                    if (data_counter_r < 16) begin
                        data_counter_w = data_counter_r + 1;
                        inter_data_w = inter_data_r >> 1;
                    end
                    if (data_counter_r == 15) begin
                        data_counter_w = 0;
                        sent_w = 1;
                        if (slow_counter_r == scale - 1) begin
                            if (end == 1'b1 || got_end_sig_r == 1'b1) begin
                                state_w = IDLE;
                            end else if (pause == 1'b1 || got_pause_sig_r == 1'b1) begin
                                state_w = PAUSE;
                            end else begin
                                we_w = 1'b1;
                                ce_w = 1'b0;
                                oe_w = 1'b0;
                                lb_w = 1'b0;
                                ub_w = 1'b0;
                                state_w = GET_DATA;
                                cur_speed_w = speed;
                            end
                        end else begin
                            state_w = CON;
                            slow_counter_w = slow_counter_r + 1;
                        end
                    end
                end

                if (end == 1'b1) begin
                    got_end_sig_w = 1'b1;
                end else if (pause == 1'b1) begin
                    got_pause_sig_w = 1'b1;
                end
            end
        SEND_FAST:
            begin
                if (data_counter_r < 16) begin
                    data_counter_w = data_counter_r + 1;
                    old_data_w = old_data_r >> 1;
                end
                if (data_counter_r == 15) begin
                    data_counter_w = 0;
                    sent_w = 1;
                    if (end == 1'b1 || got_end_sig_r == 1'b1) begin
                        state_w = IDLE;
                    end else if (pause == 1'b1 || got_pause_sig_r == 1'b1) begin
                        state_w = PAUSE;
                    end else begin
                        we_w = 1'b1;
                        ce_w = 1'b0;
                        oe_w = 1'b0;
                        lb_w = 1'b0;
                        ub_w = 1'b0;
                        state_w = GET_DATA;
                        cur_speed_w = speed;
                    end
                end

                if (end == 1'b1) begin
                    got_end_sig_w = 1'b1;
                end else if (pause == 1'b1) begin
                    got_pause_sig_w = 1'b1;
                end
            end
        PAUSE:
            begin
                if (start == 1'b1) begin
                    we_w = 1'b1;
                    ce_w = 1'b0;
                    oe_w = 1'b0;
                    lb_w = 1'b0;
                    ub_w = 1'b0;
                    state_w = GET_DATA;
                    cur_speed_w = speed;
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
        old_data_r <= 0;
        inter_data_r <= 0;
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
        cur_speed_r <= 1;
        slow_counter_r <= 0;
    end else begin
        state_r <= state_w;
        data_r <= data_w;
        old_data_r <= old_data_w;
        inter_data_r <= inter_data_w;
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
        cur_speed_r <= cur_speed_w;
        slow_counter_r <= slow_counter_w;
    end
end
