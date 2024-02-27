
module full_adder(output sum,carry, input a,b,cin);
wire n1,n2,n3;

half_adder HA1(n1,n2,a,b);
half_adder HA2(sum,n3,n1,cin);
or O1(carry, n2,n3);

endmodule
