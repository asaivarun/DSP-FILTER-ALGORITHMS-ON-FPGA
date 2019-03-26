`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2017 23:22:41
// Design Name: 
// Module Name: VGA_Sync
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


module VGA_Sync(
    input clock, reset,
    output hSync, vSync, videoON, pTick,
    output [9:0] pixelX, pixelY //to get the coordintes of pixel during scanning.
    );
    /*------------------------------------*/
    /*-------------CONSTANTS--------------*/
    //parameters defining the screen.
    localparam [9:0] HORIZONTAL_DISPLAY = 640;
    localparam [9:0] HORIZONTAL_LEFT = 16;
    localparam [9:0] HORIZONTAL_RIGHT = 48;
    localparam [9:0] HORIZONTAL_RETRACE = 96;
    
    localparam [9:0] VERTICAL_DISPLAY = 480;
    localparam [9:0] VERTICAL_TOP = 10;
    localparam [9:0] VERTICAL_BOTTOM = 29;
    localparam [9:0] VERTICAL_RETRACE = 2;


    /*------------------------------------*/
   
    
    reg[9:0] horizontalCount, verticalCount;
    reg[9:0] horizontalCountNext, verticalCountNext;
    //to keep count of horizontal and vertical scanning.
    
    reg verticalSync, horizontalSync;
    wire verticalSyncNext, horizontalSyncNext;
    /*the reg ones are connected to the vSync & hSync and the wire
    ones are updated according to certain condition and are connected
    to the reg ones */
    wire clock65;   //65MHz (unused)
    wire clock40;   //40MHz (unused)
    wire clock25;   //25MHz
    
    wire verticalEnd, horizontalEnd;
    //indicate the end of horizontal or vertical screen reading.
    
    always@(posedge clock or posedge reset)
    begin
        if(reset)
        begin
            verticalSync <= 9'd0;
            horizontalSync <= 9'd0;
            horizontalCount <= 9'd0;
            verticalCount <= 9'd0;
        end
        else
        begin
                begin
                    if(horizontalEnd)
                    begin
                    horizontalCount = 9'd0;
                        if(verticalEnd)
                         verticalCount = 9'd0;
                        else
                        verticalCount = verticalCount + 9'd1;
                    end
                    else
                    horizontalCount = horizontalCount + 9'd1;
                end        end
    end
    /*-----------------------------------------*/
    /*-----------------------------------------*/
    
    /*We need to convert the 100MHz clock to 65MHz
    in order to support the requirement of 60Hz VGA
    monitor to have a resolution of 1024X768 - (Not yet done)
    Right now it is 25MHz.
    
    Edit: the code is now working and the VGA does show up output,
    but it is happening only at a resolution of 640x480 with
    pixel frequency of 25MHz. clock25 wire contains the 25MHz clock
    (24.762, more precisely, generated using Clocking Wizard).
    */
    
    //CustomClock module automatically created using Clocking Wizard.
    
    /*-------------------------------------------*/
    /*-------------------------------------------*/
    //Signals detecting the end of the line/screen
    assign verticalEnd = (verticalCount==(VERTICAL_DISPLAY + VERTICAL_TOP + VERTICAL_BOTTOM + VERTICAL_RETRACE-9'd1))?9'd1:9'd0;
    
    assign horizontalEnd = (horizontalCount==(HORIZONTAL_DISPLAY + HORIZONTAL_LEFT + HORIZONTAL_RIGHT + HORIZONTAL_RETRACE-9'd1))?9'd1:9'd0;
    /*-------------------------------------------*/
    
    
    /*-------------------------------------------*/
    /*-------------------------------------------*/
    //always loop for keeping track of horizontal scanning
    /*-------------------------------------------*/
    
    /*-------------------------------------------*/
    /*-------------------------------------------*/
    //always loop for keeping track of vertical scanning
//    always@(posedge clock25 or posedge reset)    //25Mhz custom clock with the completetion of one horizontal line scanning.
//    begin
//    if(reset);
//    else
//    begin
//        if(horizontalEnd)   
//        begin
//        end
//        else
//        verticalCountNext = verticalCount;
//    end
//    end
    /*-------------------------------------------*/
        
    assign horizontalSyncNext = ((horizontalCount>=(HORIZONTAL_DISPLAY+HORIZONTAL_RIGHT)) && (horizontalCount<=(HORIZONTAL_DISPLAY+HORIZONTAL_RIGHT+HORIZONTAL_RETRACE-9'd1)))?9'd1:9'd0;
    assign verticalSyncNext = ((verticalCount>=(VERTICAL_DISPLAY+VERTICAL_BOTTOM)) && (verticalCount<=(VERTICAL_DISPLAY+VERTICAL_BOTTOM+VERTICAL_RETRACE-9'd1)))?9'd1:9'd0;
    
    
    /*-------------------------------------------*/
    /*connecting the outputs of this module with its local variables*/
    
    assign videoON = ((verticalCount <= VERTICAL_DISPLAY) && (horizontalCount <= HORIZONTAL_DISPLAY))?9'd1:9'd0;
    //as long as the scanning is in the intended area (640X480), keep the display ON
    
    assign hSync = horizontalSyncNext;
    assign vSync = verticalSyncNext;
    assign pixelX = horizontalCount;
    assign pixelY = verticalCount;
    assign pTick = clock;
    
endmodule