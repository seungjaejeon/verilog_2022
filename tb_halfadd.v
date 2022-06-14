`timescale 1ns/100ps//time
module tb_halfadd();//testbench
reg a,b;//register a,b
wire sum,cout;//wire sum,cout
halfadd test(a,b,sum,cout);//halfadd module ??
initial
begin
	a=0; b=0;//0~100ns
#100 	a=0; b=1;//100ns~200ns
#100 	a=1; b=0;//200ns~300ns
#100 	a=1; b=1;//300ns~400ns

end

endmodule