module encoder_4x2_cond(output [1:0]dout,input en,[3:0]din);

assign dout= (en?(din==4'd1)?2'd0:((din==4'd2)?2'd1:((din==4'd4)?2'd2:((din==4'd8)?2'd3:2'bz))):0);

endmodule
