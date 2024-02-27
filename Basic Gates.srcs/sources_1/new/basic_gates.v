`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 11:57:17
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(input a,b, [3:0]w,[3:0]y,output c, [3:0]x );
assign c = a&b;
assign x = w|y;
endmodule
