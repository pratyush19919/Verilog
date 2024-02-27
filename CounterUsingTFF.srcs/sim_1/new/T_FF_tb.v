`timescale 1ns / 1ps
module T_FF_tb();
reg t,rst;
reg clk=0;
wire q;

T_FF dut (q,clk,rst,t);

always
begin
clk=~clk;
#10;
end

initial
begin
rst=1;t=0;
#2 rst=0;
#8 t=1;
#30 t=0;
#20 t=1;
end

initial
#100 $finish;

endmodule
