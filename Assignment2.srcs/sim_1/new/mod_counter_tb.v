`timescale 1ns / 1ps
module mod_13_counter_tb();
wire [3:0]count;
reg clk,rst,mode;
mod_13_counter dut(count,clk,rst,mode);
always #5 clk=~clk;
initial begin
$monitor($time," count=%0d",count);
clk=1;rst=1;mode=0;
#3 rst=0;
#150 mode=1;
#50 mode=0;
#50 $finish;
end
endmodule