`timescale 1ns / 1ps

module Q7_tb;

wire [3:0]sum;
wire cout;
reg cin;
reg [3:0]memory[14:0];
reg [3:0]a,b;
integer file1;


Q7 #(4) dut(sum,cout,a,b,cin);

initial 
file1 = $fopen("testoutput.mem");

initial begin
$readmemb("input.mem",memory);
a=memory[0];b=memory[1];cin=memory[10];
#5 $fdisplay(file1,"sum=%b,cout=%b",sum,cout);
#10 a=memory[2];b=memory[3];cin=memory[11];
#5 $fdisplay(file1,"sum=%b,cout=%b",sum,cout);
#10 a=memory[4];b=memory[5];cin=memory[12];
#5 $fdisplay(file1,"sum=%b,cout=%b",sum,cout);
#10 a=memory[6];b=memory[7];cin=memory[13];
#5 $fdisplay(file1,"sum=%b,cout=%b",sum,cout);
#10 a=memory[8];b=memory[9];cin=memory[14];
#5 $fdisplay(file1,"sum=%b,cout=%b",sum,cout);
#20 $fclose(file1);
end

initial 
#1000 $finish;

endmodule


