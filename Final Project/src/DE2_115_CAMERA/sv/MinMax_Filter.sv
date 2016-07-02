module MinMax_Filter(
    iData,
    iMode,
    iStart,
    iRst,
    iClk,
    oValue,
    oDone
);

parameter IDLE = 1'b0;
parameter CALC = 1'b1;

parameter MIN = 1'b0;

input       [9:0]   iData   [8:0];
input               iStart;
input               iRst;
input               iClk;
output reg          oValue;
output reg          oDone;

logic   [1:0]   state_r, state_w;
logic   [9:0]   min, max;
logic   [9:0]   value_r, value_w;
logic           done_r, done_w;

always_comb begin
    state_w = state_r;
    value_w = value_r;
    done_w  = done_r;
    case(state_r)
        IDLE:
            begin
                done_w = 0;
                if (iStart) begin
                    state_w = CALC;
                    value_w = 0;
                end
            end
        CALC:
            begin
                if(iMode == MIN) begin
                    min = iData[0];
                    for(int i=1; i<9; i=i+1) begin
                        if(iData[i] < min)
                            min = iData[i];
                    end
                    value_w = min;
                end else begin
                    max = iData[0];
                    for(int i=1; i<9; i=i+1) begin
                        if(iData[i] > max)
                            max = iData[i];
                    end
                    value_w = max;
                end
                state_w = IDLE;
                done_w = 1;
            end
    endcase
end

always_ff@(posedge iClk or negedge iRst) begin
    if(!iRst) begin
        state_r     <=  IDLE;
        value_r     <=  0;
        done_r      <=  0;
    end else begin
        state_r     <=  state_w;
        value_r     <=  value_w;
        done_r      <=  done_w;
    end
end










endmodule
