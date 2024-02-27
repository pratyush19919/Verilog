module multifunctiongate_tb();

wire F;
reg A,B,X,Y;

multi_function_gate DUT(F,X,Y,A,B);

initial begin

for(integer i=0;i<16;i=i+1)
begin

{X,Y,A,B}=i;
#10;

end

end

initial 
$monitor("At time = %0d, the value of F =%b for function selected X=%b,Y=%b and A=%b B=%b",$time,F,X,Y,A,B);

initial
#200 $finish;

endmodule
