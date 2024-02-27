`timescale 1ns / 1ps

module alu(output reg [3:0]out,input  [3:0]in,input [1:0]mode,input [1:0]s,input load_A,load_B,clear,clk);
reg [3:0]reg_A1,reg_B1;
reg [3:0]reg_Y;
wire [3:0]y;
always @(posedge clk)
begin
if(clear==1'b1)
begin
reg_A1=4'b0000;
reg_B1=4'b0000;
end
else if(load_A==1'b1)
begin
reg_A1=in;
end
else if(load_B==1'b1)
begin
reg_B1=in;
end
end

always @(*)
begin
case(mode)
2'b00:reg_Y=(reg_A1 & reg_B1);
2'b01:reg_Y=reg_A1 | reg_B1;
2'b10:reg_Y=reg_A1 ^ reg_B1;
2'b11:reg_Y=reg_A1 + reg_B1;
default: reg_Y=4'b0000;
endcase
end

assign y=4'b0000;
always @(*)
begin
case(s)
2'b00:out=reg_A1;
2'b01:out=reg_B1;
2'b10:out=reg_Y;
2'b11:out=y;
endcase
end
endmodule