`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2023 12:01:44
// Design Name: 
// Module Name: basic_gates_tb
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


module basic_gates_tb();
    reg a,b,w,y;
    wire c,x;
    basic_gates dut(a,b,w,y,c,x);
    
    initial
    begin
//    a=0;b=0;w[3:0]=4`b1001;y[3:0]=4`b1010;
a=0;b=1;w[3]=1`b1;w[2]=1`b1;w[1]=1`b1;w[0]=1`b1;y[3]=1`b1;y[2]=1`b1;y[1]=1`b1;y[0]=1`b1;
    end
    
endmodule
