`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2017 07:48:25 PM
// Design Name: 
// Module Name: Weights
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


module Weights(
vgaRed,vgaGreen,vgaBlue,Hsync,Vsync,clk,reset);
input clk,reset;
output [3:0] vgaRed,vgaGreen,vgaBlue;
output Hsync,Vsync;


wire [3:0] red,green,blue;
wire [9:0] counter_x,counter_y;
wire [11:0] out_color;
reg [9:0] step1,step2,step3,step4,step5,step6,step7,step8;

clk_wiz_0 myclk(.clk_in1(clk), .clk_out1(clock25)); 

VGA_Sync vga_sync1(clock25, reset,Hsync, Vsync, videoON, pTick, counter_x, counter_y);
controller c1(out_color,counter_x,counter_y,
       step1,step2,step3,step4,step5,step6,step7,step8,clock25,reset);
//10'd100,10'd50,-10'd58,10'd90,-10'd33,10'd0,10'd6,10'd100

//always @(posedge clk)
//begin
//$display("hello");
//end,
//setting out to green colour on screen
assign red=out_color[11:8],
       green=out_color[7:4],
       blue=out_color[3:0];
assign vgaRed=(videoON)?(red):(4'b0000),
       vgaGreen=(videoON)?(green):(4'b0000),
       vgaBlue=(videoON)?(blue):(4'b0000);
       
endmodule