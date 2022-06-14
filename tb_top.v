`timescale 10us/1us
module tb_TOP();
reg Clock_5K, Reset, Control, LoadTime, LoadAlm,//register
Set_AM_PM, Alarm_AM_PM_In, AlarmEnable;
reg[5:0] SetSecs, SetMins, AlarmMinsIn;
reg[3:0] SetHours, AlarmHoursIn;
reg Start_S, Stop_S, Reset_S;
wire AM_PM, Alarm, SW_State;//wire
wire[3:0] Hours;
wire[5:0] Mins, Secs;
wire[9:0] MSecs;
//

TOP test(Clock_5K, Reset, Control, Start_S, Stop_S, Reset_S,//TOP
AM_PM, Hours, Mins, Secs, MSecs, Alarm, SW_State,
LoadTime, LoadAlm, AlarmEnable, Set_AM_PM,
Alarm_AM_PM_In, SetSecs, SetMins, AlarmMinsIn,
SetHours, AlarmHoursIn);

always #10 Clock_5K=~Clock_5K;//Clock toggle
initial
begin
      Clock_5K=0; Reset=1; LoadTime=0; Control=1; Reset_S=0; Start_S=0; Stop_S=0;
//???? ?? Reset=0, LoadAlm=1? ?? ??? ??
#100000    Reset=0; LoadAlm=1;     AlarmHoursIn=4'd2; AlarmMinsIn=6'd0; Alarm_AM_PM_In=0; AlarmEnable=1; 
//LoadTime=1? ?? ??? ??
#200000    Reset=1; LoadTime=1;     SetHours=4'd1; SetMins=6'd50; SetSecs=6'd20; Set_AM_PM=0;
//?? ??
#350000    LoadTime=0; LoadAlm=0;
//???? ??
#150000      Control=0;
#100000      Start_S=1;//??? ??
#100000      Reset_S=1;//????
#200000      Reset_S=0;//????
#200000      Start_S=0;//????
#300000      Start_S=1;//??
#200000      Stop_S=1;//??
#100000      Start_S=0;//????
#100000      Start_S=1;//????
#100000      Start_S=0;
#100000      Stop_S=1;//????
#100000      Stop_S=0;//????
#100000      Reset_S=1;//????
#100000      Reset_S=0; Start_S=1;//???? ?? ??
#500000      Control=1;

end
endmodule