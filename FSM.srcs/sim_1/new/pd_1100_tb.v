`timescale 1ns / 1ps

module pd_1011_tb();

wire dout;

reg din,rst;

reg clk=1;

pd_1100 dut(dout,clk,din,rst);

always
begin
clk=~clk;
#5;
end

initial
begin
din = 0;rst=1;
#3 rst =0;
#7 din=0;
#10 din = 0;
#10 din = 0;
#10 din = 1;
#10 din = 1;
#10 din = 0;
#10 din = 0;
#10 din = 0;
#10 din = 1;
#10 din = 1;
#10 din = 0;
#10 din = 0;
#10 din = 1;
#10 din = 1;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#10 din = 1;
#10 din = 0;
#10 din = 0;
#10 din = 1;
#10 din = 1;
#10 din = 0;
#10 din = 1;
#10 din = 0;
#10 din = 0;

#50 $finish;
end
endmodule
