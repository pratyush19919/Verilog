`timescale 1ns / 1ps

module counter_4bit(output reg [3:0]count, input clk,rst);


always@(posedge clk or posedge rst)
begin
if(rst)
    count <= 0;
else
    count <= count+1;
   
end
endmodule
