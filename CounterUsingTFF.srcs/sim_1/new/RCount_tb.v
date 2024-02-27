`timescale 1ns / 1ps

module RCount_tb();

reg t,rst;

reg clk=0;
wire [3:0]q;


RCount_T DUT(q,clk,rst,t);

always
begin
clk=~clk;
#10;
end

initial
begin
t=1;
rst=1;
#2 rst=0;
end

initial
#300 $finish;
endmodule
