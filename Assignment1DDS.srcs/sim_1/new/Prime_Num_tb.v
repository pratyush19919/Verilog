module Prime_Num_tb();
wire isPrime;
reg [3:0]a;


Prime_Num dut(isPrime, a[3],a[2],a[1],a[0]);

initial 
$monitor("At time = %0d, the output isPrime is %b for input %b %b %b %b ",$time,isPrime,a[3],a[2],a[1],a[0]);

initial
begin

for(a=1;a<16;a=a+1)begin

#10;

end

end

initial
#150 $finish;

endmodule
