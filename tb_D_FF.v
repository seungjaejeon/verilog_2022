`timescale 1ns/100ps
module tb_D_FF();
reg clk,reset_n,d;//???? clk,reset_n,d
D_FF test(clk,reset_n,d,q);
initial//???
begin
	 clk=0; reset_n=1; d=0;	//0~5ns
#5		reset_n=0;	//5~10ns
#5	 	reset_n=1;	//10ns~
end
always//??
begin
#5 clk=!clk;//5ns?? ??
end
always//??
begin
#10 d=1;//10~30ns
#20 d=0;//30~40ns
end

endmodule
