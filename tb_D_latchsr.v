`timescale 1ns/100ps
module tb_D_latchsr();
reg set_n,reset_n,d,g;//register
D_latchsr test(set_n,reset_n,d,g,q,q_n);
initial
begin
	set_n=0;reset_n=1;d=0;g=0;//0~10ns
#10	set_n=1;reset_n=1;d=1;g=0;//10~20ns
#10	set_n=1;reset_n=0;d=0;g=0;//20~30ns
#10	set_n=1;reset_n=0;d=1;g=0;//30~40ns
#10	set_n=1;reset_n=1;d=0;g=0;//40~50ns
#10	set_n=1;reset_n=1;d=1;g=0;//50~60ns
#10	set_n=1;reset_n=1;d=0;g=1;//60~70ns
#10	set_n=1;reset_n=1;d=1;g=1;//70~80ns
#10	set_n=1;reset_n=1;d=0;g=1;//80~90ns
#10	set_n=1;reset_n=1;d=1;g=1;//90~100ns
#10	set_n=1;reset_n=1;d=0;g=1;//100~110ns
#10	set_n=1;reset_n=1;d=0;g=0;//110~120ns
end	
endmodule