`timescale 1ns / 1ps

module up_down_counter(output reg [3:0]count,input clk,rst,sel);
always@(posedge clk)
begin
 if(rst)
 count<=0;
 else if(sel)
 count=count+1;
 else
 count=count-1;
end
endmodule
