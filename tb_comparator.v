`timescale 1ns/100ps
module tb_comparator();//tb
reg [2:0] a1,a2,b1,b2;//3bit register a1,a2,b1,b2
wire y1,y2;//wire y1,y2

comparator test(a1,a2,b1,b2,y1,y2);//module 
initial
begin
	a1=3'b000; a2=3'b000; b1=3'b000; b2=3'b000;//0~100ns
#100	a1=3'b001; a2=3'b000; b1=3'b001; b2=3'b000;//100ns~200ns
#100	a1=3'b101; a2=3'b101; b1=3'b011; b2=3'b011;//200ns~300ns
end
endmodule