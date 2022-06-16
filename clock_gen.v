module clock_gen(Clock_5K, Reset, Clock_1Sec,
Clock_1MSec);
input Clock_5K, Reset;//input
output Clock_1Sec, Clock_1MSec;//output
reg[8:0] temp_Sec;//register
reg[2:0] temp_mSec;
reg Clock_1Sec,Clock_1MSec;
always@(negedge Reset)//Reset ??
begin
if(!Reset)//Reset? 0??
begin//???
temp_Sec<=0;temp_mSec<=0;
Clock_1Sec<=0;Clock_1MSec<=0;
end
end
always@(posedge Clock_5K)//5K클락의 상승엣지
begin
temp_mSec<=temp_mSec+1;//temp_mSec? 1? ??
	if(temp_mSec==2)//2????
	begin//Clock_1MSec??
		Clock_1MSec <= ~Clock_1MSec;
		temp_mSec<=temp_mSec+1;//1 ??
	end
	else if(temp_mSec==5)//temp_mSec? 5??
	begin
		Clock_1MSec <= ~Clock_1MSec;//클락 토글
		temp_mSec<=1;//1? ????? ?? ??
		temp_Sec<=temp_Sec+1;//temp_Sec? 1??
			if(temp_Sec==499)//temp_Sec? 499? ??
			begin
			Clock_1Sec<=~Clock_1Sec;//????
			temp_Sec<=0;//temp_Sec 0?? ???
			end
	end
end
endmodule
