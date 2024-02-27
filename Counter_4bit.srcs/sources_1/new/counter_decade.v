`timescale 1ns / 1ps

module counter_decade(output reg [3:0]c_10 , input rst,clk);

always@(posedge clk)
begin
if(rst)
    c_10 <= 0;
else
    if(c_10<10)
        c_10 = c_10 +1;
    else
        c_10 = 0;
end
endmodule
