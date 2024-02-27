`timescale 1ns / 1ps

module decoder_3x8_cond(output i0,i1,i2,i3,i4,i5,i6,i7,input a,b,c,e);

assign i0=(e==1&&(a==0&&b==0&&c==0))?1:0;
assign i1=(e==1&&(a==0&&b==0&&c==1))?1:0;
assign i2=(e==1&&(a==0&&b==1&&c==0))?1:0;
assign i3=(e==1&&(a==0&&b==1&&c==1))?1:0;
assign i4=(e==1&&(a==1&&b==0&&c==0))?1:0;
assign i5=(e==1&&(a==1&&b==0&&c==1))?1:0;
assign i6=(e==1&&(a==1&&b==1&&c==0))?1:0;
assign i7=(e==1&&(a==1&&b==1&&c==1))?1:0;

endmodule

