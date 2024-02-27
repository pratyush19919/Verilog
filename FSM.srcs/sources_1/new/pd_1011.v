`timescale 1ns / 1ps

module pd_1011(
    output reg dout,
    input clk,din,rst
    );
    
    parameter s0=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4;
    reg [2:0] current,next;
    
    always@(posedge clk)
    begin
    if(rst)
    current <= s0;
    else
    current <=next;
    end
    
    always@(current,din)
    begin
    case(current)
    s0 : next = din?s1:s0;
    s1 : next = din?s2:s0;
    s2 : next = din?s2:s3;
    s3 : next = din?s4:s0;
    s4 : next = din?s2:s0;
    endcase
    end

    
    always@(current)
    begin
    case(current)
    s0 : dout = 0;
    s1 : dout = 0;
    s2 : dout = 0;
    s3 : dout = 0;
    s4 : dout = 1;
    
    endcase
    end
    
endmodule
