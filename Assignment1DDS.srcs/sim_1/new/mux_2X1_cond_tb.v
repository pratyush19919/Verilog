`timescale 1ns / 1ps

module mux2x1_tb();

wire f;
reg a,b,s;

mux_2x1 dut(f,a,b,s);

initial 
begin

for(integer i=0;i<8;i=i+1)
begin

{a,b,s}=i;
#10;

end

end

initial 
$monitor("At time = %0d, the value of a,b,s = %b %b %b and output f = %b",$time,a,b,s,f);

initial
#100 $finish;

endmodule

