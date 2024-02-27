`timescale 1ns / 1ps
module universal_shift_register(dout,din,s1,s0,clk,rst);
output reg[3:0]dout;
input clk,rst;
input s1,s0;
input [3:0]din;
always@(posedge clk)
begin
if(rst)
dout<=0;
else
case({s1,s0})
0:dout<=dout;
1:dout<={dout[2:0],din[0]}; //left shift
2:dout<={din[3],dout[3:1]}; //right shift
3:dout<=din;
endcase
end
endmodule

