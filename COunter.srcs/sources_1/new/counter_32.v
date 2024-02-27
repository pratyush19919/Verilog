`timescale 1ns / 1ps

module counter_32(
output reg [31:0] count,
input clk,rst
    );
    
    
always@(posedge clk)
    begin
        if(rst)
            count <= 0;
        else
            count <= count+1;
    end
endmodule
