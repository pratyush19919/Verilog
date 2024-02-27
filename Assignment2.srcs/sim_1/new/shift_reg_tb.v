`timescale 1ns / 1ps
module shift_register_tb();
wire [7:0]dout;
reg clk,rst;
reg sel;
reg din;
shift_register dut(dout,din,sel,clk,rst);
always #5 clk=~clk;

initial begin
$monitor("at time %0d sel=%0b din=%0d dout=%0d",$time,sel,din,dout);
din=8'hff;sel=0;
clk=1;rst=1;
#3 rst=0;
#7 sel=0;
#7 sel=1;
#7 sel=0;
#7 sel=1;
#7 sel=0;
#7 sel=1;
#7 sel=0;
#7 sel=1;
#20 $finish;
end
endmodule
