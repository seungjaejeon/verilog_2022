`timescale 1ns/100ps
module tb_four_fulladd();
reg[3:0] a,b;//4bit a,b
reg cin;//1bit cin
wire cout,s0,s1,s2,s3;//1 bit cout,s0,s1,s2,s3

four_fulladd test(a,b,cin,cout,s0,s1,s2,s3);//module ????
initial
begin
		a=4'b0000; b=4'b0000; cin=0;//0~100ns
	#100 	a=4'b0101; b=4'b0000; cin=0;//100ns~200ns
	#100	a=4'b0101; b=4'b1000; cin=1;//200ns~300ns	
	#100	a=4'b1001; b=4'b1000; cin=1;//300ns~400ns
end
endmodule