`timescale 1ns / 1ps
module D_FlipFlop(output reg q, input clk,rst,d);


always@(posedge clk)
begin
if(rst)
    q<=0;
else 
begin 
if(d) 
    q<=~q;
 else
    q<=q;
end
end
endmodule
