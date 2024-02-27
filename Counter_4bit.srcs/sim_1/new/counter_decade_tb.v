`timescale 1ns / 1ps

module counter_decade_tb();

wire [3:0]count;
reg clk = 0;
reg rst;

counter_decade dut(count, rst,clk);

always
begin
clk = ~clk;
#10;
end


initial
begin
rst=0;
#5 rst=1;
#30 rst=0;
end

initial
#500 $finish; 

endmodule
