module AudioPlayer (
    input           start,
    input           stop,
    input           rst,
    input           pause,
    input           rpt,
    input   [3:0]   speed,
    input           interpol_mode,
    input   [19:0]  last_rec,
    output  [19:0]  sram_addr,
    input   [15:0]  sram_dq,
    output          sram_we_n,
    output          sram_ce_n,
    output          sram_oe_n,
    output          sram_ub_n,
    output          sram_lb_n,
    input           aud_bclk,
    output          aud_dacdat,
    input           aud_daclrck
);

    parameter IDLE          = 3'b000;
    parameter GET_DATA      = 3'b001;
    parameter CON           = 3'b010;
    parameter SEND_SLOW     = 3'b011;
    parameter SEND_FAST     = 3'b100;
    parameter PAUSE         = 3'b101;
    parameter END           = 3'b110;

    logic [2:0] state_r, state_w;
    logic signed [15:0] data_r, data_w, old_data_r, old_data_w, inter_data_r, inter_data_w;

    // logic signed [16:0] sgn_data, sgn_old_data, sgn_inter_data;
    //logic signed [15:0] sgn_data, sgn_old_data, sgn_inter_data;

    logic [4:0] data_counter_r, data_counter_w;
    logic [3:0] slow_counter_r, slow_counter_w;
    logic sent_r, sent_w;
    logic ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;
    logic [20:0] addr_r, addr_w;
    logic got_end_sig_r, got_end_sig_w;
    logic got_pause_sig_r, got_pause_sig_w;
    logic fast;
    logic [3:0] scale;
    logic [3:0] cur_speed_r, cur_speed_w;

    assign sram_addr    = addr_r[19:0];
    assign sram_we_n    = we_r;
    assign sram_ce_n    = ce_r;
    assign sram_oe_n    = oe_r;
    assign sram_ub_n    = ub_r;
    assign sram_lb_n    = lb_r;
    assign aud_dacdat   = (interpol_mode && cur_speed_r >= 9) ? inter_data_r[15] : old_data_r[15];

    always_comb begin
        state_w         = state_r;
        data_w          = data_r;
        old_data_w      = old_data_r;
        inter_data_w    = inter_data_r;
        data_counter_w  = data_counter_r;
        sent_w          = sent_r;
        we_w            = we_r;
        ce_w            = ce_r;
        oe_w            = oe_r; 
        ub_w            = ub_r; 
        lb_w            = lb_r; 
        addr_w          = addr_r;
        got_end_sig_w   = got_end_sig_r;
        got_pause_sig_w = got_pause_sig_r;
        cur_speed_w     = cur_speed_r;
        slow_counter_w  = slow_counter_r;
        //sgn_data        = 0;
        //sgn_old_data    = 0;
        //sgn_inter_data  = 0;

        if (cur_speed_r >= 9) begin
            fast = 0;
            scale = cur_speed_r - 7;
        end else begin
            fast = 1;
            scale = cur_speed_r;
        end

        case(state_r)
            IDLE:
                begin
                    if (start) begin
                        state_w = GET_DATA;
                        cur_speed_w = speed;
                    end
                end
            GET_DATA:
                begin
                    data_w = sram_dq;
					// data_w = (data_r * 1103515245 + 12345) % 2147483648;
                    // data_w = 16'b0111100000000111;
                    slow_counter_w = 0;
                    if (addr_r != 0) begin
                        old_data_w = data_r;
                        state_w = CON;
                    end
                    if (fast) begin
                        addr_w = addr_r + scale;
                    end else begin
                        addr_w = addr_r + 1;
                    end

                    if (stop) begin
                        state_w = END;
                    end else if (pause) begin
                        got_pause_sig_w = 1'b1;
                    end
                end
            CON:
                begin
                    if (sent_r && aud_daclrck) begin
                        sent_w = 0;
                    end else if (!sent_r && !aud_daclrck) begin
                        if (fast) begin
                            state_w = SEND_FAST;
                        end else begin
                            state_w = SEND_SLOW;
                            /*
                            // sign extension
                            sgn_data[15:0] = data_r;
                            sgn_data[16] = data_r[15];
                            sgn_old_data[15:0] = old_data_r;
                            sgn_old_data[16] = old_data_r[15];
                            // interpolation
                            sgn_inter_data = sgn_old_data + (sgn_data - sgn_old_data) * slow_counter_r / scale;
                            // sign compression
                            inter_data_w = sgn_inter_data[15:0];
                            */
                            inter_data_w = old_data_r + (data_r - old_data_r) * signed'(slow_counter_r) / signed'(scale);
                        end
                    end

                    if (stop) begin
                        state_w = END;
                    end else if (pause) begin
                        got_pause_sig_w = 1'b1;
                    end
                end
            SEND_SLOW:
                begin
                    if (!interpol_mode) begin
                        if (data_counter_r < 16) begin
                            data_counter_w = data_counter_r + 1;
                            old_data_w = old_data_r << 1;
                            old_data_w[0] = old_data_r[15];
                        end
                        if (data_counter_r == 15) begin
                            data_counter_w = 0;
                            sent_w = 1'b1;
                            if (slow_counter_r == scale - 1) begin
                                if (stop || got_end_sig_r || addr_r > 1048575 || addr_r > last_rec) begin // 2^20 - 1
                                    state_w = END;
                                end else if (pause || got_pause_sig_r) begin
                                    state_w = PAUSE;
                                end else begin
                                    state_w = GET_DATA;
                                    cur_speed_w = speed;
                                end
                            end else begin
                                state_w = CON;
                                slow_counter_w = slow_counter_r + 1;
                            end
                        end
                    end else begin
                        if (data_counter_r < 16) begin
                            data_counter_w = data_counter_r + 1;
                            inter_data_w = inter_data_r << 1;
                        end
                        if (data_counter_r == 15) begin
                            data_counter_w = 0;
                            sent_w = 1'b1;
                            if (slow_counter_r == scale - 1) begin
                                if (stop || got_end_sig_r || addr_r > 1048575 || addr_r > last_rec) begin
                                    state_w = END;
                                end else if (pause || got_pause_sig_r) begin
                                    state_w = PAUSE;
                                end else begin
                                    state_w = GET_DATA;
                                    cur_speed_w = speed;
                                end
                            end else begin
                                state_w = CON;
                                slow_counter_w = slow_counter_r + 1;
                            end
                        end
                    end

                    if (stop) begin
                        got_end_sig_w = 1'b1;
                    end else if (pause) begin
                        got_pause_sig_w = 1'b1;
                    end
                end
            SEND_FAST:
                begin
                    if (data_counter_r < 16) begin
                        data_counter_w = data_counter_r + 1;
                        old_data_w = old_data_r << 1;
                    end
                    if (data_counter_r == 15) begin
                        data_counter_w = 0;
                        sent_w = 1'b1;
                        if (stop || got_end_sig_r || addr_r > 1048575 || addr_r > last_rec) begin
                            state_w = END;
                        end else if (pause || got_pause_sig_r) begin
                            state_w = PAUSE;
                        end else begin
                            state_w = GET_DATA;
                            cur_speed_w = speed;
                        end
                    end

                    if (stop) begin
                        got_end_sig_w = 1'b1;
                    end else if (pause) begin
                        got_pause_sig_w = 1'b1;
                    end
                end
            PAUSE:
                begin
                    if (start) begin
                        state_w = GET_DATA;
                        cur_speed_w = speed;
                    end else if (stop) begin
                        state_w = END;
                    end
                end
            END:
                begin
                    if (rpt) begin
                        addr_w = 0;
                        state_w = GET_DATA;
                        cur_speed_w = speed;
                        sent_w = 1'b1;
                        got_pause_sig_w = 1'b0;
                        got_end_sig_w = 1'b0;
                    end
                end
        endcase
    end

    always_ff @(negedge aud_bclk) begin
        if (rst) begin
            state_r         <= IDLE;
            data_r          <= 0;
            old_data_r      <= 0;
            inter_data_r    <= 0;
            data_counter_r  <= 0;
            sent_r          <= 1'b1;
            we_r            <= 1'b1;
            ce_r            <= 1'b0;
            oe_r            <= 1'b0;
            lb_r            <= 1'b0;
            ub_r            <= 1'b0;
            addr_r          <= 0;
            got_end_sig_r   <= 1'b0;
            got_pause_sig_r <= 1'b0;
            cur_speed_r     <= 1;
            slow_counter_r  <= 0;
        end else begin
            state_r         <= state_w;
            data_r          <= data_w;
            old_data_r      <= old_data_w;
            inter_data_r    <= inter_data_w;
            data_counter_r  <= data_counter_w;
            sent_r          <= sent_w;
            we_r            <= we_w;
            ce_r            <= ce_w;
            oe_r            <= oe_w;
            lb_r            <= lb_w;
            ub_r            <= ub_w;
            addr_r          <= addr_w;
            got_end_sig_r   <= got_end_sig_w;
            got_pause_sig_r <= got_pause_sig_w;
            cur_speed_r     <= cur_speed_w;
            slow_counter_r  <= slow_counter_w;
        end
    end

endmodule
