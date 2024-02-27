`timescale 1ns / 1ps

module FullAdder_tb;
wire sum,cout;
reg a,b,cin;

Full_Adder FA(sum,cout,a,b,cin);
initial
begin

$monitor("Sum of a=%b,b=%b and cin =%b is %b with carry %b",a,b,cin,sum,cout);
for(integer i=0;i<8;i=i+1) begin
{a,b,cin}=i;
#10;
end

end
initial
#100 $finish;

endmodule

