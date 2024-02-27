`timescale 1ns / 1ps

module Full_Adder(output sum,cout,input a,b,cin);
wire cout1,cout2,sum1;
Half_Adder HA0(sum1,cout1,a,b);
Half_Adder HA1(sum,cout2,sum1,cin);
or o1(cout,cout1,cout2);
endmodule
