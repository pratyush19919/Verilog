`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2023 11:49:39
// Design Name: 
// Module Name: stimuli_full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stimuli_full_adder();
    reg a,b,cin;
    wire sum,carry;
    
    full_adder dut (sum,carry,a,b,cin);
    
    initial
        begin
        $monitor("time = %d, a = %b, b = %b, cin = %b, sum = %b, carry = %b",$time,a,b,cin,sum,carry);
                a=0;b=0;cin=0;
            #10 a=0;b=0;cin=1;
            #10 a=0;b=1;cin=0;
            #10 a=0;b=1;cin=1;
            #10 a=1;b=0;cin=0;
            #10 a=1;b=0;cin=1;
            #10 a=1;b=1;cin=0;
            #10 a=1;b=1;cin=1;
            #10 $finish;
        end
endmodule
