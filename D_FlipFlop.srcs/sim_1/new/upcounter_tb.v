`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2023 16:13:46

// Design Name: 
// Module Name: upcounter_tb
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


module upcounter_tb();

wire q3,q2,q1,q0;
reg [3:0]d;
reg clk,rst;


upcounter u(q3,q2,q1,q0,d,rst,clk);
always #5 clk=~clk;

initial begin
rst=1;d=4'b1111;
clk=1;

end
initial #200 $finish;
initial #3 rst=0;
endmodule
