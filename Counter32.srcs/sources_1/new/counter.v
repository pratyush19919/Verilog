`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module counter(
    output reg [31:0] count,
    input clk,rst
    );
    wire y;
    
    clk_divider clkDiv(y, clk);
    
    always@(posedge y)
    begin
        if(rst)
            count<=0;
        else
            count <= count+1;      
    end
    
endmodule


module clk_divider(y, clk);
integer count=0;
input clk;
output reg y=0;

always@(posedge clk)
begin
    count = count+1;
    if(count == 49999999)
        begin
        count <=0;
        y<=~y;
        end
end
endmodule