`timescale 1ns / 1ps

module mux4x1_tb();

wire f;
reg a,b,c,d,s0,s1;

mux_4x1 dut(f,a,b,c,d,s1,s0);

initial 
$monitor("At time = %0d, value of a,b,c,d is %b %b %b %b and s1,s0 is %b %b and f is %b",$time,a,b,c,d,s1,s0,f);

initial begin

    a=0;b=0;c=0;d=0;s1=0;s0=0;
#10 a=1;b=0;c=0;d=0;s1=0;s0=0;
#10 a=0;b=1;c=0;d=0;s1=0;s0=1;
#10 a=0;b=0;c=1;d=0;s1=0;s0=1;
#10 a=1;b=0;c=0;d=0;s1=1;s0=0;
#10 a=0;b=0;c=1;d=0;s1=1;s0=0;
#10 a=0;b=0;c=0;d=1;s1=1;s0=1;
#10 a=0;b=0;c=0;d=0;s1=1;s0=1;


end

initial
#100 $finish;

endmodule
