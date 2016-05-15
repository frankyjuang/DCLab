module I2cInitialize (
    input i_clk,
    input i_start,
    input i_rst,
    output o_sclk,
    output o_finished,
    inout io_sdat
);
    
    parameter IDLE = 1'b0;
    parameter SEND = 1'b1;

    // parameter [23:0] CONFIG_DATA [9:0] = {
    parameter CONFIG_DATA [9:0] = {
        24'b0011010_0_000_0000_0_1001_0111, //L_LINE_IN     
        24'b0011010_0_000_0001_0_1001_0111, //R_LINE_IN     
        24'b0011010_0_000_0010_0_0111_1001, //L_HEAD_OUT    
        24'b0011010_0_000_0011_0_0111_1001, //R_HEAD_OUT    
        24'b0011010_0_000_0100_0_0001_0101, //A_AUD_CONTROL 
        24'b0011010_0_000_0101_0_0000_0000, //D_AUD_CONTROL 
        24'b0011010_0_000_0110_0_0000_0000, //POWER_CONTROL 
        24'b0011010_0_000_0111_0_0100_0010, //D_AUD_INTER   
        24'b0011010_0_000_1000_0_0001_1001, //SAMPLE_CONTROL
        24'b0011010_0_000_1001_0_0000_0001  //ACTIVE_CONTROL
    };

    logic           state_r, state_w;
    logic           sender_start_r, sender_start_w;
    logic           finished_r, finished_w;
    logic [23:0]    send_data_r, send_data_w;
    logic [3:0]     counter_r, counter_w;

    logic           sender_finished, sclk;
    wire            sdat;

    assign o_finished   = finished_r;
    assign o_sclk       = sclk;
    assign io_sdat      = sdat;
    
    I2cSender #(.BYTE(3)) i2c_sender(
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_dat(send_data_r),
        .i_start(sender_start_r),
        .o_finished(sender_finished),
        .o_sclk(sclk),
        .o_sdat(sdat)
    );

    always_comb begin
        state_r             = state_w;
        sender_start_r      = sender_start_w;
        send_data_r         = send_data_w;
        finished_r          = finished_w;
        counter_r           = counter_w;
        
        case (state_r)
            IDLE:
                begin
                    if (i_start == 1'b1) begin
                        state_w = SEND;
                        send_data_w = CONFIG_DATA[counter_r];
                        counter_w = counter_r + 1;
                        sender_start_w = 1'b1;
                    end
                end
            SEND:
                begin
                    //sender_start_w = 1'b0;
                    if (counter_r < 10) begin
                        if (sender_finished == 1'b1) begin
                            send_data_w = CONFIG_DATA[counter_r];
                            counter_w = counter_r + 1;
                        end
                    end
                    if (counter_r == 9) begin
                        state_w = IDLE;
                        counter_w = 4'b0000;
                        finished_w = 1'b1;
                    end
                end
        endcase
    end

    always_ff @(posedge i_clk) begin
        if(i_rst) begin
            state_r             <= 0;
            counter_r           <= 0;
            send_data_r         <= 0;
            finished_r          <= 0;
            sender_start_r      <= 0;
        end else begin
            state_r             <= state_w;
            send_data_r         <= send_data_w;
            counter_r           <= counter_w;
            finished_r          <= finished_w;
            sender_start_r      <= sender_start_w;
        end
    end
