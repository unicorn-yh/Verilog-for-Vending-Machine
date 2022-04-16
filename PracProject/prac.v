//prac.v
//S0=C,S1=0,S2=BC',S3=AB'C+A'BC,S4=AB'+AC,S5=AB
`timescale 1ns/1ps
module prac(
    input a,b,c,  //三个输入
    output s0,s1,s2,s3,s4,s5;  //六个输出
); 
wire a_,b_,c_,ab_c,a_bc,ab_,ac;  
not not1(a_,a), not2(b_,b), not3(c_,c);
not not4(s0,c_);
not not5(s1,1);
and and1(s2,b,c_);
and and2(ab_c,a,b_,c), and3(a_bc,a_,b,c);
and and4(ab_,a,b_), and5(ac,a,c);
and and6(s5,a,b);
or or1(s3,ab_c,a_bc), or2(s4,ab_,ac);
endmodule