`timescale 1ns / 1ps

module encoder_4x2_cond_tb();

reg [3:0]din;
reg en;
wire [1:0]dout;

encoder_4x2_cond dut(dout,en,din);

initial
begin


    en=1;din[3]=0;din[2]=0;din[1]=0;din[0]=1;
#10 din[3]=0;din[2]=0;din[1]=1;din[0]=0;
#10 din[3]=0;din[2]=1;din[1]=0;din[0]=0;
#10 din[3]=1;din[2]=0;din[1]=0;din[0]=0;
#10 din[3]=0;din[2]=1;din[1]=1;din[0]=0;
#10 en=0;din[3]=0;din[2]=0;din[1]=1;din[0]=0;
end

initial
$monitor("At time t= %0d, din = %b, en = %b and dout = %b",$time,din,en,dout);

initial
#60 $finish;

endmodule

