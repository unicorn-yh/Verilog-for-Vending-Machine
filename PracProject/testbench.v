//testbench.v
`timescale 1ns/1ps
module testbench();

reg A,B,C;

//定义数据输入
initial begin
    A=1'b0;
    #10 A=1'b1;
    #20 A=1'b0;
    #30 A=1'b1;
end

initial begin
    B=1'b0;
    #5 B=1'b1;
    #10 B=1'b0;
    #25 B=1'b1;
end

initial begin
    C=1'b1;
    #15 C=1'b0;
    #20 C=1'b1;
end

wire S0,S1,S2,S3,S4,S5;
prac prac(
    .a(A),
    .b(B),
    .c(C),
    .s0(S0),
    .s1(S1),
    .s2(S2),
    .s3(S3),
    .s4(S4),
    .s5(S5)
);

endmodule
