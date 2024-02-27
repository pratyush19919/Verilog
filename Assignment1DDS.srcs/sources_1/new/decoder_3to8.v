`timescale 1ns / 1ps
module decoder_3to8(output d7,d6,d5,d4,d3,d2,d1,d0,input x,y,z,en);

wire xbar,ybar,zbar;

not N0(xbar,x);
not N1(ybar,y);
not N2(zbar,z);
and A0(d0,xbar,ybar,zbar,en);
and A1(d1,xbar,ybar,z,en);
and A2(d2,xbar,y,zbar,en);
and A3(d3,xbar,y,z,en);
and A4(d4,x,ybar,zbar,en);
and A5(d5,x,ybar,z,en);
and A6(d6,x,y,zbar,en);
and A7(d7,x,y,z,en);

endmodule
