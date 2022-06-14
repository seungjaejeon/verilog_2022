`timescale 1ns/100ps
module tb_BCD_count();//test bench
reg clk,reset_n;//1 bit
BCD_count test(clk,reset_n,q);//test
initial
begin
clk=0; reset_n=1;//0~10ns
#10 reset_n=0;//10~20ns
#10 reset_n=1;//20ns~
end
always
begin
#5 clk=!clk;//toggle
end
endmodule