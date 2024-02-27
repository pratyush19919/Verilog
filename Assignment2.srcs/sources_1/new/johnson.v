`timescale 1ns / 1ps

module johnson_counter(output reg [7:0]count,input clk,rst);
always@(posedge clk)
begin
if(rst)
 count<=0;
else
 begin
 count[0]<=count[1];
 count[1]<=count[2];
 count[2]<=count[3];
 count[3]<=count[4];
 count[4]<=count[5];
 count[5]<=count[6];
 count[6]<=count[7];
 count[7]<=~count[0];
 end
end
endmodule
