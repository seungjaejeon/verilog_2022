`timescale 10us/1us
module tb_stop();
reg Clock_1MSec, Reset, Start_S, Stop_S, Reset_S,
Control;
wire[3:0] Hours_S;
wire[5:0] Mins_S, Secs_S;
wire[9:0] MSecs_S;

stop test(Clock_1MSec, Reset, Start_S, Stop_S, Reset_S,
Hours_S, Mins_S, Secs_S, MSecs_S, Control);
always #5 Clock_1MSec=~Clock_1MSec;
initial
begin
Clock_1MSec=1;
Reset=1;Start_S=0;Stop_S=0;Reset_S=0;Control=0;

#10 Reset=0;
#10 Reset=1;
#10 Start_S=1;
#10 Reset_S=1;
#20 Reset_S=0;
#10 Control=0;
#10 Start_S=0;
#30 Start_S=1;
#20 Stop_S=1;
#10 Start_S=0;
#10 Stop_S=0;
#10 Start_S=1;
#10 Start_S=0; Stop_S=1;
#10 Stop_S=0;
#10 Reset_S=1;
#10 Reset_S=0; Start_S=1;
#100 Control=0;
#1000 Start_S=0;
#100 Start_S=1;
#100 Stop_S=1;
#100 Start_S=0;
#100 Stop_S=0;
#100 Start_S=1;
#100 Stop_S=1;
#100 Start_S=0;
#100 Stop_S=0;
#10 Reset_S=1;
#10 Reset_S=0;
#20 Start_S=1;

end
endmodule