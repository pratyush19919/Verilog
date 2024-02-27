`timescale 1ns / 1ps
module Q10_tb;

reg rst;
reg [15:0]datain;
reg clk =0;

wire [7:0]dataout;

Q10 dut(dataout,clk,rst,datain);

always #5 clk=~clk;


initial
begin

rst =1;datain=16'h3524;
#20 datain=16'h5e81;
#20 datain = 16'hd609;
#5 rst =0;
#15 datain = 16'h5663;
#20 datain = 16'h7b0d;
#20 datain = 16'h998d;


#15 $finish;


end
endmodule


