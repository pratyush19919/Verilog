`timescale 1ns / 1ps
module universal_shift_register_tb();
wire [3:0]dout;
reg clk,rst;
reg s1,s0;
reg [3:0]din;
universal_shift_register dut(dout,din,s1,s0,clk,rst);
always #3 clk=~clk;
initial begin
$monitor("At time %0t din=%0d dout=%0d",$time,din,dout);
din=15;s1=0;s0=0;
clk=1;rst=1;
#3 rst=0;
#5 s1=0;s0=0;
#5 s1=0;s0=1;
#5 s1=1;s0=0;
#5 s1=1;s0=1;
#5 din=10;
#5 s1=0;s0=0;
#5 s1=0;s0=1;
#5 s1=1;s0=0;
#5 s1=1;s0=1;
#10 $finish;
end
endmodule