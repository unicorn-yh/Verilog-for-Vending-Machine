`timescale 1ns/1ps
module testbench();
reg rst,clk;
reg [1:0]coin;
wire bottle;
initial begin
    rst=0;
    clk=0;
    coin=2'd0;
    #100 rst=1;
    #10 coin=2'd1;
    #20 coin=2'd0;
    #20 coin=2'd1;
    #20 coin=2'd1;  
    #20 coin=2'd1;  //have bottle
    #25 coin=2'd1;
end
always #10 clk=~clk;
vending_machine vm(clk,rst,coin,bottle);
endmodule