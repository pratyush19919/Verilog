`timescale 1ns / 1ps

module RippleCarryAdder_tb;

wire [3:0]s;
wire cout;
reg [3:0]a,b;
reg cin;

Ripple_Carry_Adder r(s,cout,a,b,cin);

initial
begin

$monitor("At time %0d ,a = %b %b %b %b added with b = %b %b %b %b and carry = %b gives sum = %b %b %b %b with output carry %b",$time,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],cin,s[3],s[2],s[1],s[0],cout);
    a[3]=0;a[2]=0;a[1]=0;a[0]=0;b[3]=0;b[2]=0;b[1]=0;b[0]=0;cin=0;
#10 a[3]=0;a[2]=0;a[1]=0;a[0]=1;b[3]=0;b[2]=0;b[1]=0;b[0]=1;cin=1;
#10 a[3]=0;a[2]=1;a[1]=1;a[0]=0;b[3]=1;b[2]=0;b[1]=0;b[0]=1;cin=0;
#10 a[3]=0;a[2]=1;a[1]=0;a[0]=1;b[3]=0;b[2]=0;b[1]=1;b[0]=1;cin=1;
#10 a[3]=1;a[2]=1;a[1]=0;a[0]=0;b[3]=1;b[2]=0;b[1]=1;b[0]=0;cin=0;
#10 a[3]=1;a[2]=0;a[1]=0;a[0]=1;b[3]=0;b[2]=0;b[1]=1;b[0]=1;cin=1;
#10 a[3]=0;a[2]=1;a[1]=1;a[0]=0;b[3]=0;b[2]=1;b[1]=1;b[0]=0;cin=0;
#10 a[3]=1;a[2]=0;a[1]=0;a[0]=0;b[3]=0;b[2]=1;b[1]=1;b[0]=1;cin=1;
#10 a[3]=1;a[2]=1;a[1]=1;a[0]=0;b[3]=1;b[2]=0;b[1]=1;b[0]=0;cin=0;
#10 a[3]=1;a[2]=1;a[1]=1;a[0]=1;b[3]=0;b[2]=1;b[1]=1;b[0]=0;cin=1;

end

initial
#100 $finish;

endmodule

