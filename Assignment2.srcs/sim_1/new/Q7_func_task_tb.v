`timescale 1ps / 1ps

module Q7_func_task_tb();

wire [3:0]sum;
wire cout;
reg cin;
reg [3:0]a,b;
reg [3:0]sum_check;
reg cout_check;
integer count=0;


Q7 #(4) dut(sum,cout,a,b,cin);
integer i;
task generate_values();
begin
for(i=0;i<512;i=i+1)
    {a,b,cin} = i;
    #5;
end
endtask

always
begin
generate_values();
#5;
check_results(a,b,cin);
if(cout_check == cout && sum_check == sum)
    count = count+1;
end

task check_results(a,b,cin);
{cout_check,sum_check} = a+b+cin;
endtask

initial
begin
if(count == 512)
$display("outputs matched");
else
$display("Outputs mismatched");
end



initial 
#500000000 $finish;

endmodule
