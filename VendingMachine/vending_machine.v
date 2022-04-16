`timescale 1ns/1ps
module vending_machine(
    input clk,rst,
    input [1:0] coin,
    output reg bottle
); //coin =0  no coin ,coin =1 -> 1dollar

reg [2:0] state,next_state;
parameter [2:0] S0=3'd0,S1=3'd1,S2=3'd2 ,S3=3'd3,S4=3'd4;

always @(posedge clk or negedge rst)
if(!rst) state=S0;
else state=next_state;

always @(*) begin
    next_state=S0;
    case(state)
        S0: if(coin==2'd1) next_state=S1;
            else next_state=S0;
        S1: if(coin==2'd1) next_state=S2;
            else next_state=S1;
        S2: if(coin==2'd1) next_state=S3; 
            else next_state=S2;
        S3: if(coin==2'd1) next_state=S4; 
            else next_state=S3;    
        S4: next_state=S0;
        default:next_state=S0;
    endcase
end

always @(posedge clk or negedge rst)
case(next_state)
    S0: bottle<=0;
    S1: bottle<=0;
    S2: bottle<=0;
    S3: bottle<=0;
    S4: bottle<=1;
endcase
endmodule