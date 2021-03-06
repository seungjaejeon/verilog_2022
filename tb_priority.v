`timescale 1ns/100ps
module tb_priority();//test

reg a,b,c;//register a,b,c
wire [1:0] z;//2bit z output

priority_Encoder test(a,b,c,z);//priority encoder test
initial//reset
begin//start
	a=0; b=0; c=0; 
#10	a=1; b=0; c=0;//10ns delay a=1, b=0, c=0
#10	a=0; b=1; c=0;//10ns delay a=0, b=1, c=0
#10	a=1; b=1; c=0;//10ns delay a=1, b=1, c=0
#10	a=0; b=0; c=1;//10ns delay a=0, b=0, c=1
#10	a=1; b=0; c=1;//10ns delay a=1, b=0, c=1
#10	a=0; b=1; c=1;//10ns delay a=0, b=1, c=1
#10	a=1; b=1; c=1;//10ns delay a=1, b=1, c=1



end

endmodule