`timescale 1ns/100ps//?????
module tb_alu();
reg[7:0] a,b;//8?? ???? a,b
reg[2:0] s;//3?? ???? s
wire[7:0] z;//8?? wire z
alu test(a,b,s,z);//????
initial
begin
	a=5; b=3; s=3'b000;//0~200ns
#200	s=3'b001;//200~400ns
#200	s=3'b010;//400~600ns
#200	s=3'b011;//600~800ns
#200	s=3'b100;//800~1000ns
#200	s=3'b101;//1000~1200ns
#200	s=3'b110;//1200~1400ns
#200	s=3'b111;//1400~1600ns

end
endmodule
