`timescale 1ns / 1ps

module Ripple_Carry_Adder(output [3:0]s,cout, input [3:0]a,b,cin);

wire c0,c1,c2;

Full_Adder FA0(s[0],c0,a[0],b[0],cin);
Full_Adder FA1(s[1],c1,a[1],b[1],c0);
Full_Adder FA2(s[2],c2,a[2],b[2],c1);
Full_Adder FA3(s[3],cout,a[3],b[3],c2);

endmodule
