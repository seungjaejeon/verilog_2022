`timescale 1ns/100ps
module tb_Reg8();

reg reset_n, clk, en;
reg [7:0] d;
wire [7:0] q;
Reg8 test(clk, reset_n, en, d, q);//test

initial
begin

  	clk=0; 	reset_n=1;   en=0; 	d=8'b0100_1000;//0ns~10ns
#10 		reset_n=0;    	 	d=8'b0000_1001;//10ns~20ns
#10   		reset_n=1;   en=1;  	d=8'b0101_1100;//20ns~30ns
#10           				d=8'b0001_0001;//30ns~40ns
#10		  		en=0;  	d=8'b0110_1100;//40ns~50ns
#10          				d=8'b0100_1100;//50ns~60ns
end
always
begin
#5 clk=!clk;
end
endmodule