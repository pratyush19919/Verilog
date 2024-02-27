






module dec3x8( output o7,o6,o5,o4,o3,o2,o1,o0, input i2,i1,i0,en);
 wire w2,w1,w0;
 
 not N2(w2,i2);
 not N1(w1,i1);
 not N0(w0,i0);
 
 and A7(o7,i2,i1,io,en);
 and A6(o6,i2,i1,w0,en);
 and A5(o5,i2,w1,io,en);
 and A4(o4,i2,w1,wo,en);
 and A3(o3,w2,i1,io,en);
 and A2(o2,w2,i1,wo,en);
 and A1(o1,w2,w1,io,en);
 and A0(o0,w2,w1,wo,en);
 
endmodule
