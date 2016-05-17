module top (
    input           i_clk,
    input           i_clk_100k,
    //input           i_rst,
    input           key0,
    input           key1,
    input           key2,
    input           key3,
    input           sw0,
    input           sw1,
    input           sw16,
    input           sw17,
    output  [1:0]   audio_state,
    output  [7:0]   audio_time,
    output  [7:0]   audio_speed,
    output  [19:0]  sram_addr,
    inout   [15:0]  sram_dq,
    output          sram_ce_n,
    output          sram_oe_n,
    output          sram_we_n,
    output          sram_ub_n,
    output          sram_lb_n,
    inout           aud_bclk,
    output          aud_dacdat,
    inout           aud_daclrck,
    input           aud_adcdat,
    inout           aud_adclrck,
    output          i2c_sclk,
    inout           i2c_sdat,
    output  [8:0]     LR
);

    parameter NOT_INIT  = 3'b000;
    parameter INIT      = 3'b001;
    parameter IDLE      = 3'b010;
    parameter REC       = 3'b011;
    parameter P_REC     = 3'b100;
    parameter PLAY      = 3'b101;
    parameter P_PLAY    = 3'b110;

    parameter DISP_IDLE     = 2'b00;
    parameter DISP_REC      = 2'b01;
    parameter DISP_PLAY     = 2'b10;
    parameter DISP_PAUSE    = 2'b11;
    
    assign  LR[0]   =  aud_daclrck;
    assign  LR[1]   =  ~aud_daclrck;
    logic [2:0]     state_r, state_w;
    logic           init_rst_r, init_rst_w;
    logic           init_start_r, init_start_w;
    logic           inited_r, inited_w;
    logic [1:0]     audi_state_r, audi_state_w;
    logic [7:0]     audi_time_r, audi_time_w;
    logic [3:0]     audi_speed_r, audi_speed_w;

    logic [19:0]    rec_sram_addr_r, rec_sram_addr_w;
    logic [15:0]    rec_sram_dq_r, rec_sram_dq_w;
    logic           rec_sram_ce_n_r, rec_sram_ce_n_w, rec_sram_oe_n_r, rec_sram_oe_n_w, rec_sram_we_n_r, rec_sram_we_n_w;
    logic           rec_sram_ub_n_r, rec_sram_ub_n_w, rec_sram_lb_n_r, rec_sram_lb_n_w;
    //logic           aud_bclk_r, aud_bclk_w, aud_dacdat_r, aud_dacdat_w;
    //logic           play_aud_daclrck_r, play_aud_daclrck_w
    //logic           rec_aud_adcdat_r, rec_aud_adcdat_w, aud_adclrck_r, aud_adclrck_w;

    logic [19:0]    play_sram_addr_r, play_sram_addr_w;
    logic [15:0]    play_sram_dq_r, play_sram_dq_w;
    logic           play_sram_ce_n_r, play_sram_ce_n_w, play_sram_oe_n_r, play_sram_oe_n_w, play_sram_we_n_r, play_sram_we_n_w;
    logic           play_sram_ub_n_r, play_sram_ub_n_w, play_sram_lb_n_r, play_sram_lb_n_w;
    
    
    logic           rec_start_r, rec_start_w, rec_end_r, rec_end_w, rec_rst_r, rec_rst_w, rec_pause_r, rec_pause_w;
    logic           play_start_r, play_start_w, play_end_r, play_end_w, play_rst_r, play_rst_w, play_pause_r, play_pause_w;
    
    logic [2:0]     rst_counter_r, rst_counter_w;           

    logic [15:0]    blah_r, blah_w;
    logic [19:0]    last_r, last_w;

    assign audio_state        = audi_state_r;
    assign audio_time         = audi_time_r;
    assign audio_speed        = audi_speed_r;
    //assign audio_time         = blah_r[7:0];
    //assign audio_speed        = blah_r[15:8];

    assign sram_addr        = (state_r == PLAY) ? play_sram_addr_r : rec_sram_addr_r;
    // assign sram_dq          = (state_r == PLAY) ? ((!play_sram_oe_n_r) ? play_sram_dq_r : 1'bz) : ((!rec_sram_oe_n_r) ? rec_sram_dq_r : 1'bz);
    // assign sram_dq          = (state_r == PLAY) ? play_sram_dq_r : rec_sram_dq_r;
    assign sram_dq          = (state_r == PLAY) ? 'z : rec_sram_dq_r;
    assign sram_ce_n        = (state_r == PLAY) ? play_sram_ce_n_r : rec_sram_ce_n_r;
    assign sram_oe_n        = (state_r == PLAY) ? play_sram_oe_n_r : rec_sram_oe_n_r;
    assign sram_we_n        = (state_r == PLAY) ? play_sram_we_n_r : rec_sram_we_n_r;
    assign sram_ub_n        = (state_r == PLAY) ? play_sram_ub_n_r : rec_sram_ub_n_r;
    assign sram_lb_n        = (state_r == PLAY) ? play_sram_lb_n_r : rec_sram_lb_n_r;
    /*
    assign aud_bclk         = aud_bclk_r;
    assign aud_dacdat       = aud_dacdat_r;
    assign aud_daclrck      = aud_daclrck_r; // no enable, use as output only
    assign aud_adclrck      = aud_adclrck_r; // no enable, use as output only
    */
    I2cInitialize i2cinit(
        .i_clk(i_clk_100k),
        .i_start(init_start_r),
        .i_rst(init_rst_r),
        .o_sclk(i2c_sclk),
        .o_finished(inited_w),
        .io_sdat(i2c_sdat)
    );

    AudioRecorder audi_recorder(
        .start(rec_start_r),
        .stop(rec_end_r),
        .rst(rec_rst_r),
        .pause(rec_pause_r),
        .last_rec(last_w),
        .sram_addr(rec_sram_addr_w),
        // .sram_dq(sram_dq),
        .sram_dq(rec_sram_dq_w),
        .sram_we_n(rec_sram_we_n_w),
        .sram_ce_n(rec_sram_ce_n_w),
        .sram_oe_n(rec_sram_oe_n_w),
        .sram_ub_n(rec_sram_ub_n_w),
        .sram_lb_n(rec_sram_lb_n_w),
        .aud_bclk(aud_bclk),
        .aud_adcdat(aud_adcdat),
        .aud_adclrck(aud_adclrck)
    );

    AudioPlayer audi_player(
        .start(play_start_r),
        .stop(play_end_r),
        .rst(play_rst_r),
        .pause(play_pause_r),
        .rpt(sw16),
        .speed(audi_speed_r),
        .interpol_mode(sw17),
        .last_rec(last_r),
        .sram_addr(play_sram_addr_w),
        .sram_dq(play_sram_dq_r),
        .sram_we_n(play_sram_we_n_w),
        .sram_ce_n(play_sram_ce_n_w),
        .sram_oe_n(play_sram_oe_n_w),
        .sram_ub_n(play_sram_ub_n_w),
        .sram_lb_n(play_sram_lb_n_w),
        .aud_bclk(aud_bclk),
        .aud_dacdat(aud_dacdat),
        .aud_daclrck(aud_daclrck)
    );


    always_comb begin
        state_w         = state_r;
        init_rst_w      = init_rst_r;
        init_start_w    = init_start_r;
        //inited_w        = inited_r;
        audi_state_w    = audi_state_r;
        audi_time_w     = audi_time_r;
        audi_speed_w    = audi_speed_r;
        /*
        rec_sram_addr_w     = rec_sram_addr_r;
        rec_sram_dq_w       = rec_sram_dq_r;
        rec_sram_ce_n_w     = rec_sram_ce_n_r;
        rec_sram_oe_n_w     = rec_sram_oe_n_r;
        rec_sram_we_n_w     = rec_sram_we_n_r;
        rec_sram_ub_n_w     = rec_sram_ub_n_r;
        rec_sram_lb_n_w     = rec_sram_lb_n_r;
        play_sram_addr_w     = play_sram_addr_r;
        play_sram_dq_w       = play_sram_dq_r;
        play_sram_ce_n_w     = play_sram_ce_n_r;
        play_sram_oe_n_w     = play_sram_oe_n_r;
        play_sram_we_n_w     = play_sram_we_n_r;
        play_sram_ub_n_w     = play_sram_ub_n_r;
        play_sram_lb_n_w     = play_sram_lb_n_r;
        aud_bclk_w      = aud_bclk_r;
        aud_dacdat_w    = aud_dacdat_r;
        aud_daclrck_w   = aud_daclrck_r;
        aud_adcdat_w    = aud_adcdat_r;
        aud_adclrck_w   = aud_adclrck_r;
        */
        rec_start_w     = rec_start_r;
        rec_end_w       = rec_end_r;
        rec_rst_w       = rec_rst_r;
        rec_pause_w     = rec_pause_r;
        play_start_w    = play_start_r;
        play_end_w      = play_end_r;
        play_rst_w      = play_rst_r;
        play_pause_w    = play_pause_r;
        rst_counter_w   = rst_counter_r;

        if (sram_addr % 32768 == 0) begin
            blah_w = sram_dq;
        end else begin
            blah_w = blah_r;
        end


        case(state_r)
            INIT:
                begin
                    // I2cInitialize...
                    audi_state_w = 3;
                    init_start_w = 1'b1;
                    init_rst_w = 1'b0;
                    if (inited_r) begin
                        init_start_w = 1'b0;
                        state_w = IDLE;
                    end
                end
            IDLE:
                begin
                    audi_state_w = 0;
                    audi_time_w = 63;
                    if (sw0 && rst_counter_r >= 5) begin
                        rst_counter_w = 0;
                        audi_time_w = 0;
                        state_w = REC;
                    end else if (sw0 && rst_counter_r < 5) begin
                        rst_counter_w = rst_counter_r + 1;
                        rec_rst_w = 1'b1;
                        rec_end_w = 1'b0;
                    end else if (sw1 && rst_counter_r >= 5) begin
                        rst_counter_w = 0;
                        audi_time_w = 0;
                        state_w = PLAY;
                    end else if (sw1 && rst_counter_r < 5) begin
                        rst_counter_w = rst_counter_r + 1;
                        play_rst_w = 1'b1;
                        play_end_w = 1'b0;
                    end
                end
            REC:
                begin
                    audi_state_w = 1;

                    // record...
                    rec_rst_w = 1'b0;
                    rec_start_w = 1'b1;
                    
                    // calculate time
                    audi_time_w = rec_sram_addr_r / 32768;
                    
                    // check if paused
                    if (key3) begin
                        rec_start_w = 1'b0;
                        rec_pause_w = 1'b1;
                        state_w = P_REC;
                    end else if (!sw0) begin
                        rec_start_w = 1'b0;
                        rec_end_w = 1'b1;
                        state_w = IDLE;
                    end
                end
            P_REC:
                begin
                    audi_state_w = 3;
                    if (key3) begin
                        rec_start_w = 1'b1;
                        rec_pause_w = 1'b0;
                        state_w = REC;
                    end
                end
            PLAY:
                begin
                    audi_state_w = 2;

                    // play...
                    play_rst_w = 1'b0;
                    play_start_w = 1'b1;

                    // calculate time
                    audi_time_w = play_sram_addr_r / 32768;
                    
                    // modify speed
                    if (key1) begin
                        if (audi_speed_r >= 1 && audi_speed_r < 8) begin
                            audi_speed_w = audi_speed_r + 1;
                        end else if (audi_speed_r == 9) begin
                            audi_speed_w = 1;
                        end else if (audi_speed_r > 9 && audi_speed_r <= 15) begin
                            audi_speed_w = audi_speed_r - 1;
                        end
                    end else if (key2) begin
                        if (audi_speed_r > 1 && audi_speed_r <= 8) begin
                            audi_speed_w = audi_speed_r - 1;
                        end else if (audi_speed_r == 1) begin
                            audi_speed_w = 9;
                        end else if (audi_speed_r >= 9 && audi_speed_r < 15) begin
                            audi_speed_w = audi_speed_r + 1;
                        end
                    end
                    
                    // check if paused
                    if (key3) begin
                        play_start_w = 1'b0;
                        play_pause_w = 1'b1;
                        state_w = P_PLAY;
                    end else if (!sw1) begin
                        play_start_w = 1'b0;
                        play_end_w = 1'b1;
                        state_w = IDLE;
                    end
                end
            P_PLAY:
                begin
                    audi_state_w = 3;
                    if (key1) begin
                        if (audi_speed_r >= 1 && audi_speed_r < 8) begin
                            audi_speed_w = audi_speed_r + 1;
                        end else if (audi_speed_r == 9) begin
                            audi_speed_w = 1;
                        end else if (audi_speed_r > 9 && audi_speed_r <= 15) begin
                            audi_speed_w = audi_speed_r - 1;
                        end
                    end else if (key2) begin
                        if (audi_speed_r > 1 && audi_speed_r <= 8) begin
                            audi_speed_w = audi_speed_r - 1;
                        end else if (audi_speed_r == 1) begin
                            audi_speed_w = 9;
                        end else if (audi_speed_r >= 9 && audi_speed_r < 15) begin
                            audi_speed_w = audi_speed_r + 1;
                        end
                    end
                    if (key3) begin
                        play_start_w = 1'b1;
                        play_pause_w = 1'b0;
                        state_w = PLAY;
                    end
                end
        endcase
    end

    always_ff @(posedge i_clk) begin
        if (key0) begin
            play_sram_dq_r <= 0;
        end else if (state_r == PLAY) begin
            play_sram_dq_r <= sram_dq;
        end else begin
            play_sram_dq_r <= play_sram_dq_w;
        end
    end

    always_ff @(posedge i_clk) begin
        if(key0) begin
            state_r             <= INIT;
            init_rst_r          <= 1;
            init_start_r        <= 0;
            inited_r            <= 0;
            audi_state_r        <= DISP_PAUSE;
            audi_time_r         <= 0;
            audi_speed_r        <= 1;
            rec_sram_addr_r     <= 0;
            rec_sram_dq_r       <= 0;
            rec_sram_ce_n_r     <= 0;
            rec_sram_oe_n_r     <= 0;
            rec_sram_we_n_r     <= 1;
            rec_sram_ub_n_r     <= 0;
            rec_sram_lb_n_r     <= 0;
            play_sram_addr_r    <= 0;
            // play_sram_dq_r      <= 0;
            play_sram_ce_n_r    <= 0;
            play_sram_oe_n_r    <= 0;
            play_sram_we_n_r    <= 1;
            play_sram_ub_n_r    <= 0;
            play_sram_lb_n_r    <= 0;
            /*
            sram_addr_r     <= 0;
            sram_dq_r       <= 0; // dunno what this should be
            sram_ce_n_r     <= 0; // dunno what this should be
            sram_oe_n_r     <= 0; // dunno what this should be
            sram_we_n_r     <= 0; // dunno what this should be
            sram_ub_n_r     <= 0; // dunno what this should be
            sram_lb_n_r     <= 0; // dunno what this should be
            aud_xck_r       <= 0; // dunno what this should be
            aud_bclk_r      <= 0; // dunno what this should be
            aud_dacdat_r    <= 0; // dunno what this should be
            aud_daclrck_r   <= 0; // dunno what this should be
            aud_adcdat_r    <= 0; // dunno what this should be
            aud_adclrck_r   <= 0; // dunno what this should be
            */
            rec_start_r     <= 0;
            rec_end_r       <= 0;
            rec_rst_r       <= 0;
            rec_pause_r     <= 0;
            play_start_r    <= 0;
            play_end_r      <= 0;
            play_rst_r      <= 0;
            play_pause_r    <= 0;
            rst_counter_r   <= 0;
            blah_r          <= 0;
            last_r          <= 0;
        end else begin
            state_r         <= state_w;
            init_rst_r      <= init_rst_w;
            init_start_r    <= init_start_w;
            inited_r        <= inited_w;
            audi_state_r    <= audi_state_w;
            audi_time_r     <= audi_time_w;
            audi_speed_r    <= audi_speed_w;
            rec_sram_addr_r     <= rec_sram_addr_w;
            rec_sram_dq_r       <= rec_sram_dq_w;
            rec_sram_ce_n_r     <= rec_sram_ce_n_w;
            rec_sram_oe_n_r     <= rec_sram_oe_n_w;
            rec_sram_we_n_r     <= rec_sram_we_n_w;
            rec_sram_ub_n_r     <= rec_sram_ub_n_w;
            rec_sram_lb_n_r     <= rec_sram_lb_n_w;
            play_sram_addr_r    <= play_sram_addr_w;
            // play_sram_dq_r      <= play_sram_dq_w;
            play_sram_ce_n_r    <= play_sram_ce_n_w;
            play_sram_oe_n_r    <= play_sram_oe_n_w;
            play_sram_we_n_r    <= play_sram_we_n_w;
            play_sram_ub_n_r    <= play_sram_ub_n_w;
            play_sram_lb_n_r    <= play_sram_lb_n_w;
            /*
            sram_addr_r     <= sram_addr_w;
            sram_dq_r       <= sram_dq_w;
            sram_ce_n_r     <= sram_ce_n_w;
            sram_oe_n_r     <= sram_oe_n_w;
            sram_we_n_r     <= sram_we_n_w;
            sram_ub_n_r     <= sram_ub_n_w;
            sram_lb_n_r     <= sram_lb_n_w;
            aud_xck_r       <= aud_xck_w;
            aud_bclk_r      <= aud_bclk_w;
            aud_dacdat_r    <= aud_dacdat_w;
            aud_daclrck_r   <= aud_daclrck_w;
            aud_adcdat_r    <= aud_adcdat_w;
            aud_adclrck_r   <= aud_adclrck_w;
            */
            rec_start_r     <= rec_start_w;
            rec_end_r       <= rec_end_w;
            rec_rst_r       <= rec_rst_w;
            rec_pause_r     <= rec_pause_w;
            play_start_r    <= play_start_w;
            play_end_r      <= play_end_w;
            play_rst_r      <= play_rst_w;
            play_pause_r    <= play_pause_w;
            rst_counter_r   <= rst_counter_w;
            blah_r          <= blah_w;
            last_r          <= last_w;
        end
    end

endmodule
