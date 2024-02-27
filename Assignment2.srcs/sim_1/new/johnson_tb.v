`timescale 1ns / 1ps
module johnson_counter_tb();
reg clk,rst;
wire [7:0]count;
johnson_counter dut(count,clk,rst);
always #5 clk=~clk;
initial begin
clk=1;rst=1;
#3 rst=0;
#200 $finish;
end
endmodule