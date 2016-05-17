module AudioRecorder (
    input           start,
    input           stop,
    input           rst,
    input           pause,
    output  [19:0]  last_rec,
    output  [19:0]  sram_addr,
    output  [15:0]  sram_dq,
    output          sram_we_n,
    output          sram_ce_n,
    output          sram_oe_n,
    output          sram_ub_n,
    output          sram_lb_n,
    input           aud_bclk,
    input           aud_adcdat,
    input           aud_adclrck
);

    parameter IDLE          = 3'b000;
    parameter GET_DATA      = 3'b001;
    parameter SEND_DATA     = 3'b010;
    parameter CON           = 3'b011;
    parameter PAUSE         = 3'b100;
    parameter END           = 3'b101;

    logic [2:0] state_r, state_w;
    logic [19:0] addr_r, addr_w;
    logic [19:0] last_r, last_w;
    logic [15:0] data_r, data_w;
    logic [4:0] data_counter_r, data_counter_w;
    logic sent_r, sent_w;
    logic ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;
    logic got_end_sig_r, got_end_sig_w;
    logic got_pause_sig_r, got_pause_sig_w;

    assign sram_addr    = addr_r;
    assign sram_dq      = data_r;
    assign sram_we_n    = we_r;
    assign sram_ce_n    = ce_r;
    assign sram_oe_n    = oe_r;
    assign sram_ub_n    = ub_r;
    assign sram_lb_n    = lb_r;
    assign last_rec     = last_r;

    always_comb begin
        state_w         = state_r;
        addr_w          = addr_r;
        last_w          = last_r;
        data_w          = data_r;
        data_counter_w  = data_counter_r;
        sent_w          = sent_r;
        ce_w            = ce_r;
        oe_w            = oe_r;
        we_w            = we_r;
        ub_w            = ub_r;
        lb_w            = lb_r;
        got_end_sig_w   = got_end_sig_r;
        got_pause_sig_w = got_pause_sig_r;

        case(state_r)
            IDLE:
                begin
                    if (start) begin
                        state_w = CON;
                        last_w = 0;
                    end
                end
            CON:
                begin
                    if (stop) begin
                        state_w = END;
                        last_w = addr_r;
                    end else if (pause) begin
                        state_w = PAUSE;
                    end else if (sent_r && aud_adclrck) begin
                        sent_w = 1'b0;
                    end else if (!sent_r && !aud_adclrck) begin
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
                        // ce_w = 1'b0;
                        // oe_w = 1'b0;
                        // lb_w = 1'b0;
                        // ub_w = 1'b0;
                    end
                    if (stop) begin
                        got_end_sig_w = 1'b1;
                    end else if (pause) begin
                        got_pause_sig_w = 1'b1;
                    end
                end
            SEND_DATA:
                begin
                    we_w = 1'b1;
                    // ce_w = 1'b0;
                    // oe_w = 1'b0;
                    // lb_w = 1'b0;
                    // ub_w = 1'b0;
                    sent_w = 1'b1;
                    if (stop || got_end_sig_r) begin
                        state_w = END;
                        last_w = addr_r;
                    end else if (pause || got_pause_sig_r) begin
                        state_w = PAUSE;
                    end else begin
                        state_w = CON;
                    end
                    if (addr_r == '1) begin
                        //addr_w = 0;
                        state_w = END;
                        last_w = addr_r;
                    end else begin
                        addr_w = addr_r + 1;
                    end
                end
            PAUSE:
                begin
                    if (start) begin
                        state_w = CON;
                    end else if (stop) begin
                        state_w = END;
                        last_w = addr_r;
                    end
                end
        endcase
    end

    always_ff @(negedge aud_bclk) begin
        if (rst) begin
            state_r         <= IDLE;
            data_r          <= 0;
            data_counter_r  <= 0;
            sent_r          <= 1'b1;
            we_r            <= 1'b1;
            ce_r            <= 1'b0;
            oe_r            <= 1'b0;
            lb_r            <= 1'b0;
            ub_r            <= 1'b0;
            addr_r          <= 0;
            last_r          <= 0;
            got_end_sig_r   <= 1'b0;
            got_pause_sig_r <= 1'b0;
        end else begin
            state_r         <= state_w;
            data_r          <= data_w;
            data_counter_r  <= data_counter_w;
            sent_r          <= sent_w;
            we_r            <= we_w;
            ce_r            <= ce_w;
            oe_r            <= oe_w;
            lb_r            <= lb_w;
            ub_r            <= ub_w;
            addr_r          <= addr_w;
            last_r          <= last_w;
            got_end_sig_r   <= got_end_sig_w;
            got_pause_sig_r <= got_pause_sig_w;
        end
    end

endmodule
