module TOP(Clock_5K, Reset, Control, Start_S, Stop_S,
Reset_S, AM_PM, Hours, Mins, Secs, MSecs, Alarm,
SW_State,
LoadTime, LoadAlm, AlarmEnable, Set_AM_PM,
Alarm_AM_PM_In, SetSecs, SetMins, AlarmMinsIn,
SetHours, AlarmHoursIn);
input Clock_5K, Reset, Control, LoadTime, LoadAlm,//input
Set_AM_PM, Alarm_AM_PM_In, AlarmEnable,Start_S,
Stop_S, Reset_S;
input[5:0] SetSecs, SetMins, AlarmMinsIn;
input[3:0] SetHours, AlarmHoursIn;
output AM_PM, Alarm, SW_State;//output
output[3:0] Hours;
output[5:0] Mins, Secs;
output[9:0] MSecs;
wire Clock_1Sec,Clock_1MSec;//wire
wire[3:0] Hours_S,Hours_C;
wire[5:0] Mins_S, Secs_S, Secs_C, Mins_C;
wire[9:0] MSecs_S;
reg pre_con,SW_State;//register
alarm_clk a1(Clock_1Sec, Reset, LoadTime, LoadAlm,//alarm clock 
AlarmEnable, Set_AM_PM, Alarm_AM_PM_In,
SetSecs, SetMins, AlarmMinsIn, SetHours, AlarmHoursIn,
AM_PM, Alarm,Secs_C, Mins_C, Hours_C);

stop s1(Clock_1MSec, Reset, Start_S, Stop_S, Reset_S,//stop watch
Hours_S, Mins_S, Secs_S, MSecs_S, Control);

clock_gen c1(Clock_5K, Reset, Clock_1Sec, Clock_1MSec);//clock generator
always@(negedge Reset)//Reset
begin
if(!Reset)//Reset? 0? ?
begin//???
SW_State<=0;
pre_con<=Control;
end
end
always@(posedge Clock_5K)
begin
if(Reset)//Reset? 1? ?
begin//SW_State??? ?? ?
	if(pre_con!=Control)//pre_con? Control? ?? ?
	begin
	SW_State<=1;//SW_State? 1??
	pre_con<=Control;//pre_con? Control? ??
	end
	else SW_State<=0;//pre_con? Control? ??? SW_State? 0??
end
end
//Control? 1?? Alarm_clk Control? 0?? Stop Watch?? ?? ??
assign Hours=(Control==1)? Hours_C:Hours_S;
assign Mins=(Control==1)? Mins_C:Mins_S;
assign Secs=(Control==1)? Secs_C:Secs_S;
assign MSecs=(Control==1)? 0:MSecs_S;

endmodule