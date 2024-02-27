`timescale 1ns / 1ps

module Half_Adder(output sum,cout ,input a,b );

xor E1(sum,a,b);
and A1(cout,a,b);

endmodule

