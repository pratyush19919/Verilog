`timescale 1ns / 1ps

module encoder_4to2_tb();
reg i3,i2,i1,i0,en;
wire a,b;

Encoder4to2 dut(i3,i2,i1,i0,en,a,b);

initial
begin

    en=0;i3=0;i2=0;i1=0;i0=0;
#10 en=1;i3=0;i2=0;i1=0;i0=1;
#10 i3=0;i2=0;i1=0;i0=1;
#10 i3=0;i2=0;i1=1;i0=0;
#10 i3=0;i2=1;i1=0;i0=1;
#10 i3=1;i2=0;i1=0;i0=0;

#10 $finish;

end
endmodule
