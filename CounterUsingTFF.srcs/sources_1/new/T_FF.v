`timescale 1ns / 1ps


module T_FF(output q, input clk,rst,t);
reg q;

always@(posedge clk or posedge rst)
begin
if(rst)
    q<=0;
else

    if(t)
        q<=~q;
    else
        q<=q;
        
end
endmodule
