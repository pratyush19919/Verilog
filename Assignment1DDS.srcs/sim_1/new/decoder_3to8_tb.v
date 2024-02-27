`timescale 1ns / 1ps

module decoder38_tb();

reg x,y,z,en;
wire d7,d6,d5,d4,d3,d2,d1,d0;

decoder_3to8 dut(d7,d6,d5,d4,d3,d2,d1,d0,x,y,z,en);

initial 
begin

for(integer i=0;i<16;i=i+1)
begin
{x,y,z,en}=i;
#10;

end
end

initial 
$monitor("At time = %0d, For x y z en = %b %b %b %b , the output d7 d6 d5 d4 d3 d2 d1 d0 = %b %b %b %b %b %b %b %b",$time,x,y,z,en,d7,d6,d5,d4,d3,d2,d1,d0);
initial
#200 $finish;

endmodule
