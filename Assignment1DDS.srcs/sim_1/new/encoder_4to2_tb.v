`timescale 1ns / 1ps

module encoder_4to2_tb();

reg i3,i2,i1,i0;
wire a,b;
Encoder4to2 dut(a,b,i3,i2,i1,i0);

initial
begin

    $monitor("Value of i3 i2 i1 i0 is %b %b %b %b and a b is %b %b",i3,i2,i1,i0,a,b);

i3=0;i2=0;i1=0;i0=1;
#10 i3=0;i2=0;i1=1;i0=0;
#10 i3=0;i2=1;i1=0;i0=0;
#10 i3=1;i2=0;i1=0;i0=0;
#10 $finish;
end

endmodule
