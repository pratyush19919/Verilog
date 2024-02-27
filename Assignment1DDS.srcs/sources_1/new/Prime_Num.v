module Prime_Num(output isPrime,input a3,a2,a1,a0);

wire a3_bar,a2_bar,a1_bar,a0_bar,w1,w2,w3,w4;

not N1(a3_bar,a3);
not N2(a2_bar,a2);
not N3(a1_bar,a1);
not N4(a0_bar,a0);

and A1(w1,a3_bar,a2_bar,a1);
and A2(w2,a3_bar,a2,a0);
and A3(w3,a2_bar,a1,a0);
and A4(w4,a2,a1_bar,a0);

or O(isPrime,w1,w2,w3,w4);

endmodule
