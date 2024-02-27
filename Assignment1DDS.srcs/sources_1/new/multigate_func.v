`timescale 1ns / 1ps
module multi_function_gate(output F,input X,Y,A,B);

wire Xbar,Abar,Bbar,F0,F1,F2,F3;

not N0(Xbar,X);
not N1(Abar,A);
not N2(Bbar,B);

and A0(F0,X,Abar,Bbar);
and A1(F1,Y,Abar,B);
and A2(F2,Xbar,A,B);
and A3(F3,Y,A,Bbar);

or O0(F,F0,F1,F2,F3);

endmodule

