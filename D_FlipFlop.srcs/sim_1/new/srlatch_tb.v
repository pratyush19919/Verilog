`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2023 15:46:51
// Design Name: 
// Module Name: srlatch_tb
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


module srlatch_tb();

wire q,qbar;
reg s,r;
integer i;
srlatch sr(q,qbar,s,r);

initial begin
for(i=0;i<5;i=i+1)
begin
{s,r}=i;
#10;
end
end
initial #50 $finish;
endmodule
