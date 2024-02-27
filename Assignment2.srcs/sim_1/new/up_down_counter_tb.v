`timescale 1ns / 1ps
module up_down_counter_tb();
reg clk,rst,sel;
wire [3:0]count;
up_down_counter dut(count,clk,rst,sel);
always #5 clk=~clk;
initial begin
$monitor("At time %0t sel is %0d count is %0d",$time,sel,count);
clk=1;rst=1;
#2 rst=0;
sel=1;
#50 sel=0;
#50 $finish;
end
endmodule