`timescale 1ns / 100ps
module tb_gatelogic();//test banch gatelogic

reg a;//a in
reg b;//b in
reg s;//s in
wire z;//z out
gatelogic test(a,b,s,z);//test gatelogic variable
initial// reset
begin //start
	a=0; b=0; s=0;
#10	s=!s; a=0; b=1;//10ns delay-> s=0, a=0, b=1
#10	s=!s; a=1; b=0;//10ns delay-> s=0, a=1, b=0
#10	s=!s; a=1; b=1;//10ns delay-> s=0, a=1, b=1
#10	s=!s; a=0; b=0;//10ns delay-> s=1, a=0, b=0
#10	s=!s; a=0; b=1;//10ns delay-> s=1, a=0, b=1
#10	s=!s; a=1; b=0;//10ns delay-> s=1, a=1, b=0
#10	s=!s; a=1; b=1;//10ns delay-> s=1, a=1, b=1

end //end

endmodule
