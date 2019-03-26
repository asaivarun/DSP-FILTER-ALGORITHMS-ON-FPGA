`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2017 10:04:57 PM
// Design Name: 
// Module Name: paint
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


module paint(
    clk,reset,print,colour,stat
    );
    input clk,print,reset;
    output reg [11:0] colour;
    output reg stat;
reg printsample;
reg [9:0] printsamplecount;    
always @(posedge clk or posedge reset)
begin
//Checking reset
if(reset)
begin
printsample=1'd0;
printsamplecount=10'd0;
stat=1'd0;
colour=12'd0;
end
else 
begin
if(print==1'b1)
begin
    printsample=1'b1;
    printsamplecount=10'd1;
end
//Setting the width of the rectangle and dislplayin until that
else if(printsamplecount>10'd30)
begin
//setting printsamle to 0 and making sample count to 0 to not to display on screen
    printsample=1'b0;
    printsamplecount=10'd0;
    $display("paint");
   
end
if(printsample)
begin
// setting output rectangle colour to Green
    colour=12'b000011110000;
    stat=1'd1;
    printsamplecount= printsamplecount+1'd1;
end
else
begin
 colour=12'd0;
   stat=1'd0;    
end
end
end
endmodule
