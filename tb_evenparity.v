`timescale 1ns/100ps
module tb_evenparity();//test bench
reg [7:0] a;//8?? ???? a
wire[8:0] z;//9?? z
evenparity test(a,z);//a,z
initial
begin
	a=8'b00010001;//0~1600ns
#1600 	a=8'b01101100;//1600ns~3200ns
#1600 	a=8'b01010111;//3200ns~4800ns
end
endmodule
