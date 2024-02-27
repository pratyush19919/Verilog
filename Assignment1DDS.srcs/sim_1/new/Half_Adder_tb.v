`timescale 1ns / 1ps

module HalfAdder_tb;

wire sum,cout;
reg a,b;

Half_Adder HA1(sum,cout,a,b);

initial
begin

$monitor("The sum of a = %b, b = %b is %b with carry %b ", a,b,sum,cout);

for(integer i=0;i<4;i=i+1)

begin
{a,b}=i;
#10;
end
end

initial
#50 $finish;

endmodule

