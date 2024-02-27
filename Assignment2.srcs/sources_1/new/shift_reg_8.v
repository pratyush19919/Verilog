`timescale 1ns / 1ps

module shift_register(dout,din,sel,clk,rst);
output reg [7:0]dout;
input clk,rst;
input sel;
input din;
always@(posedge clk)
begin
if(rst)
dout<=0;
else
case(sel)
    0:dout<={dout[6:0],din}; //left shift
    1:dout<={din,dout[7:1]}; //right shift
endcase
end
endmodule