`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2017 10:32:10 PM
// Design Name: 
// Module Name: controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controller(
out_color,counter_x,counter_y,step1,step2,step3,step4,step5,step6,step7,step8,clock,reset
);
input [9:0] counter_x,counter_y;
input signed [9:0] step1,step2,step3,step4,step5,step6,step7,step8;
input clock,reset;
output reg [11:0] out_color;
reg print; 
wire stat;
wire [11:0] color;

always @(posedge clock or posedge reset)
begin
if(reset)
begin
out_color=12'd0;
end
else
begin
if(stat)
begin
out_color=color;
end
else out_color=12'b000000001111;
end
end
//========================================DEBUG=================================
always @(posedge clock or posedge reset)
begin
$display("counter_x: %d , counter_y: %d , print: %b , out_colour : %b,step3= %d, -step3 = %d, 241-step3 =%d ,counter_y<(241-step3)= %b,(counter_y>241) = %b ",counter_x,counter_y,print,out_color,step3,-step3,10'd241-step3,counter_y<(10'd241-step3),(counter_y>241));
end
//===============================================================================

always @(posedge clock or posedge reset)
begin
if(reset)
begin
print=1'd0;
end
else
begin
case(counter_x)
10'd101:
begin
//Checking logic for each step and checking sign
if((step1>=0)?(step1>=(241-counter_y)):(counter_y<(10'd241-step1)&&(counter_y>241)))
begin
print=1'd1;
end
end
10'd161:
begin
if((step2>=0)?(step2>=(241-counter_y)):(counter_y<(10'd241-step2)&&(counter_y>241)))
begin
print=1'd1;
end
end
10'd221:
begin
if((step3>=0)?(step3>=(241-counter_y)):(counter_y<(10'd241-step3)&&(counter_y>241)))
begin
print=1'd1;
end
end

10'd281:
begin
if((step4>=0)?(step4>=(241-counter_y)):(counter_y<(10'd241-step4)&&(counter_y>241)))
begin
print=1'd1;
end
end

10'd341:
begin
if((step5>=0)?(step5>=(241-counter_y)):(counter_y<(10'd241-step5)&&(counter_y>241)))
begin
print=1'd1;
end
end

10'd401:
begin
if((step6>=0)?(step6>=(241-counter_y)):(counter_y<(10'd241-step6)&&(counter_y>241)))
begin
print=1'd1;
end
end

10'd461:
begin
if((step7>=0)?(step7>=(241-counter_y)):(counter_y<(10'd241-step7)&&(counter_y>241)))
begin
print=1'd1;
end
end

10'd521:
begin
if((step8>=0)?(step8>=(241-counter_y)):(counter_y<(10'd241-step8)&&(counter_y>241)))
begin
print=1'd1;
end
end

default: 
begin
print=1'd0;
end
endcase
end
end

paint p1(.clk(clock),.print(print),.colour(color),.stat(stat),.reset(reset));
endmodule
