`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2023 16:03:32
// Design Name: 
// Module Name: upcounter
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


module upcounter(inout q3,q2,q1,q0,input [3:0]d,rst,clk);

D_FlipFlop D0(q0,clk,rst,d[0]);
D_FlipFlop D1(q1,q0,rst,d[1]);
D_FlipFlop D2(q2,q1,rst,d[2]);
D_FlipFlop D3(q3,q2,rst,d[3]);

endmodule
