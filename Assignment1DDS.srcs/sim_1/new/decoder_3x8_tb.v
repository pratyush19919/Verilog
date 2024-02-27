`timescale 1ns / 1ps

module decoder_3x8_tb();

wire i0,i1,i2,i3,i4,i5,i6,i7;
reg a,b,c,e;

decoder_3x8_cond m(i0,i1,i2,i3,i4,i5,i6,i7,a,b,c,e);

initial begin
for(integer i=0;i<16;i=i+1) begin
{a,b,c,e}=i;
#10;
end
end

initial
$monitor("At time %0d, the value of a b c is %b %b %b and enable e = %b then i7 i6 i5 i4 i3 i2 i1 i0 are %b %b %b %b %b %b %b %b",$time,a,b,c,e,i7,i6,i5,i4,i3,i2,i1,i0);
initial
#200 $finish;

endmodule
