`timescale 1ns/100ps
module tb_mux();//module tb_mux
reg[3:0] a;//4bit register a
reg[3:0] b;//4bit register b
reg[3:0] c;//4bit register c
reg[3:0] d;//4bit register d

reg[1:0] sel;//2bit register
reg en;//1bit register
wire [3:0] z;//4bit wire z

mux test(a,b,c,d,en,sel,z);//mux test
initial
begin
		en=0; sel=2'b00; a=4'b0100; b=4'b0000; c=4'b0001; d=4'b1110;//0~200ns
	#200	en=0; sel=2'b01; a=4'b0100; b=4'b0000; c=4'b0001; d=4'b1110;//200ns~400ns
	#200	en=0; sel=2'b10; a=4'b1000; b=4'b1110; c=4'b1111; d=4'b0000;//400ns~600ns
	#200	en=0; sel=2'b11; a=4'b1000; b=4'b1110; c=4'b1111; d=4'b0000;//600ns~800ns
	#200	en=1; sel=2'b00; a=4'b0000; b=4'b0100; c=4'b0100; d=4'b1100;//800ns~1000ns
	#200	en=1; sel=2'b01; a=4'b0000; b=4'b0100; c=4'b0100; d=4'b1100;//1000ns~1200ns
	#200	en=1; sel=2'b10; a=4'b1001; b=4'b1101; c=4'b1110; d=4'b0010;//1200ns~1400ns
	#200	en=1; sel=2'b11; a=4'b1001; b=4'b1101; c=4'b1110; d=4'b0010;//1400ns~1600ns

end
endmodule