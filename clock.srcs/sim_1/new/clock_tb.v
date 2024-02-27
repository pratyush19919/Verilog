`timescale 1ns / 1ps

module clock_tb();


reg clk=0;
reg rst;

wire [3:0] mten,mone,sten,sone;

clock dut(clk,rst,sone,sten,mone,mten);
always
begin
#5 clk=~clk;
end

initial
begin
rst=1;
#1 rst=0;
#1000 $finish;
end

endmodule
