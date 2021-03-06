`timescale 10us/1us
module tb_alarm_clk();
reg Clock_1Sec, Reset, LoadTime, LoadAlm, Set_AM_PM,
Alarm_AM_PM_In, AlarmEnable;
reg[5:0] SetSecs, SetMins, AlarmMinsIn;
reg[3:0] SetHours, AlarmHoursIn;
wire AM_PM, Alarm;
wire[5:0] Secs_C, Mins_C;
wire[3:0] Hours_C;
alarm_clk test(Clock_1Sec, Reset, LoadTime, LoadAlm,
AlarmEnable, Set_AM_PM, Alarm_AM_PM_In, SetSecs,
SetMins, AlarmMinsIn, SetHours, AlarmHoursIn,
AM_PM, Alarm, Secs_C, Mins_C, Hours_C);
always #5 Clock_1Sec=~Clock_1Sec;
initial
begin
Clock_1Sec=1;Reset=1;AlarmEnable=0;//1
SetSecs=6'd50; SetMins=6'd59; SetHours=4'd11;
Set_AM_PM=0; LoadTime=1;
LoadAlm=1; Alarm_AM_PM_In=1; AlarmHoursIn=4'd1;
AlarmMinsIn=6'd0;
#10 Reset=0;
#10 Reset=1;
#5 LoadTime=0; LoadAlm=0;
#5 AlarmEnable=1;
#2000 SetSecs=6'd30; SetMins=6'd59;//2
SetHours=4'd11; Set_AM_PM=1;
#10 LoadTime=1;
#5 LoadTime=0;
#10 AlarmHoursIn=4'd9; AlarmMinsIn=6'd57;
Alarm_AM_PM_In =0;
#5 LoadAlm=1;
#5 LoadAlm=0;
#900 AlarmHoursIn=4'd11; AlarmMinsIn=6'd0;
#5 LoadAlm=1;
#5 LoadAlm=0;
#50000 AlarmHoursIn=4'd1; AlarmMinsIn=6'd30;
#5 LoadAlm=1;	#5 LoadAlm=0;
end
endmodule
