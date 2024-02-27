`timescale 1ns / 1ps

module D_FF_tb();

reg rst,clk,d;
wire q;
integer i;
 D_FlipFlop f(q,clk,rst,d);
 always #3 clk=~clk;
 

initial begin

clk=1;rst=1;
#2 rst=0;
#5 d=0;
#5 d=1;
#5 d=0;
#5 d=1;
#5 d=0;#5 d=1;#5 d=0;




end
initial #50 $finish;





endmodule
