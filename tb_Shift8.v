`timescale 1ns/100ps
module tb_Shift8();
reg clk,reset_n,en,dir,ld,sd;
reg [7:0] d;//register 8bit d
wire [7:0] q;//register 8bit q
Shift8 test(clk,reset_n,en,dir,ld,sd,d,q);//??
initial
begin
clk=0;	reset_n=1;	dir=0;	ld=0;	d=8'b00001111; en=0; sd=0;//0ns~10ns
#10 reset_n=0;//10ns~20ns
#10 reset_n=1; ld=1;//20ns~30ns
#10 ld=0; sd=1; en=1;//30ns~40ns
#10 sd=0;//40ns~60ns
#20 dir=1; sd=1;//60ns~70ns
#10 sd=0;//70ns~80ns
#10 en=0;//80ns~90ns
#10 dir=0;//90ns~100ns
end
always
begin
#5 clk=!clk;//5ns?? ??
end
endmodule
