module I2cInitialize (
    input i_clk,
    input i_rst,
    output o_finished
);

    parameter L_LINE_IN      = 24'b0011010_0_000_0000_0_1001_0111;
    parameter R_LINE_IN      = 24'b0011010_0_000_0001_0_1001_0111;
    parameter L_HEAD_OUT     = 24'b0011010_0_000_0010_0_0111_1001;
    parameter R_HEAD_OUT     = 24'b0011010_0_000_0011_0_0111_1001;
    parameter A_AUD_CONTROL  = 24'b0011010_0_000_0100_0_0001_0101;
    parameter D_AUD_CONTROL  = 24'b0011010_0_000_0101_0_0000_0000;
    parameter POWER_CONTROL  = 24'b0011010_0_000_0110_0_0000_0000;
    parameter D_AUD_INTER    = 24'b0011010_0_000_0111_0_0100_0010;
    parameter SAMPLE_CONTROL = 24'b0011010_0_000_1000_0_0001_1001;
    parameter ACTIVE_CONTROL = 24'b0011010_0_000_1001_0_0000_0001;

    logic [23:0] send_data_r, send_data_w;
    logic [3:0]  counter_r, counter_w;
    logic        finished_r, finished_w;

    assign o_finished = finished_r;

    always_comb begin

    end

    always_ff @(posedge i_clk) begin
        if(i_rst) begin
            counter_r <= 0;
            send_data_r <= 0;
            finished_r <= 0;
        end else begin
            send_data_r <= send_data_w;
            counter_r <= counter_w;
            finished_r <= finished_w;
        end
    end
