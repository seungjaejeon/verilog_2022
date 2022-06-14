`timescale 1ns/ 100ps//timescale
module tb_fulladd();//fulladd testbench
reg x,y,z;//regitster x,y,z
reg n1,n2,n3;//register n1,n2,n3
wire cout,sum;//wire cout,sum
fulladd test(x,y,z,sum,cout);//test
initial
begin
	x=0; y=0; z=0;//0~100ns
#100	x=1; y=0; z=0;//100ns~200ns
#100	x=0; y=1; z=0;//200ns~300ns
#100	x=1; y=1; z=0;//300ns~400ns
#100	x=0; y=0; z=1;//400ns~500ns
#100	x=1; y=0; z=1;//500ns~600ns
#100	x=0; y=1; z=1;//600ns~700ns
#100	x=1; y=1; z=1;//700ns~800ns
end
endmodule