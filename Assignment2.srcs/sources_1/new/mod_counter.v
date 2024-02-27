`timescale 1ns / 1ps

module mod_13_counter(output reg [3:0]count,input clk,rst,mode);
always@(posedge clk)
begin
if(rst)
 count<=0;
else
case(mode)
0:if(count==12)
 count<=0;
 else
 count<=count+1;
1:if(count==0)
 count<=12;
 else
 count<=count-1;
 endcase
end
endmodule
