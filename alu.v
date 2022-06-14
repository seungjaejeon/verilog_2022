module alu(a,b,s,z);//alu ????
input[7:0] a,b;//8?? ?? a,b
input[2:0] s;//3?? ?? s 
output[7:0] z;//8?? ?? z
reg[7:0] z;//8?? ???? z
wire[2:0] s;//3?? wire s

always@(a,b,s)//a,b,s? ???
begin
if(s==3'b000) z=8'b00000000;//clear
else if(s==3'b001)z=b-a;//subtract??
else if(s==3'b010)z=a-b;//subtract??
else if(s==3'b011)z=a+b;//add??
else if(s==3'b100)z=a^b;//xor??
else if(s==3'b101)z=a|b;//???or??
else if(s==3'b110)z=a&b;//???and??
else if(s==3'b111)z=8'b11111111;//preset

end
endmodule
