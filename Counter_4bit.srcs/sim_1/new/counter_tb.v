`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 15:37:37
// Design Name: 
// Module Name: counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_tb();

wire [3:0]count;
reg rst;
reg clk =0;


counter_4bit c(count,clk,rst);

always
begin
#10;
clk = ~clk;

end

initial begin

rst=1;
#15 rst=0;
#235 rst=1;
#30 rst=0;

end

initial 
#350 $finish;


endmodule
