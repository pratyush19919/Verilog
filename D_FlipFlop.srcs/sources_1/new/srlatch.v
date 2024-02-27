`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2023 15:38:52
// Design Name: 
// Module Name: srlatch
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


module srlatch(output q,qbar,input s,r);
reg q,qbar;
always@(s,r)
begin
if(s==0&&r==0)
begin
q<=q;
qbar<=qbar;
end
else if(s==0&&r==1)
begin
q<=0;
qbar<=1;
end
else if(s==1&&r==0)
begin
q<=1;
qbar<=0;
end
else
begin
q<=1'bx;
qbar<=1'bx;
end
end
endmodule
