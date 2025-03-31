`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2025 04:35:05 PM
// Design Name: 
// Module Name: uart_rx
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


module uart_rx#(
parameter CLK_FREQ = 120_000_000,
parameter BAUD_RATE = 115_200,
parameter CLKS_PER_BIT = CLK_FREQ/BAUD_RATE
)
(
input wire iClk, iRst,
input wire iRxSerial,
output wire [7:0] oRxByte,
output wire oRxDone
);

//State definition
localparam sIDLE = 3'b000;
localparam sSTART = 3'b001;
localparam sREAD = 3'b010;
localparam sSTOP = 3'b011;
localparam sDONE = 3'b100;

reg [2:0] rCurrentState, wNextState;
reg [$clog2(CLKS_PER_BIT):0] rCntCurrent, wCntNext;
reg [2:0] rBitCurrent, wBitNext;
reg [7:0] rRxByte, wRxByte;



reg rRx1, rRx2;

//State registers
always@(posedge iClk)
begin
    if(iRst == 1)
        begin
        rCntCurrent <= 0;
        rBitCurrent <= 0;
        rCurrentState <= sIDLE;
        rRxByte <= 0;
        rRx1 <= 1;
        rRx2 <= 1;
        end
    else
        begin
        rCntCurrent <= wCntNext;
        rBitCurrent <= wBitNext;
        rCurrentState <= wNextState;
        rRx1 <= iRxSerial;
        rRx2 <= rRx1;
        rRxByte <= wRxByte;
        
        end
end
//Next State Logic
always@(*)
begin
    wNextState = rCurrentState;
    wCntNext = rCntCurrent;
    wBitNext = rBitCurrent;
    wRxByte = rRxByte;

    case (rCurrentState)
    sIDLE:  
        begin
            if(iRxSerial == 0)
            begin
                wNextState = sSTART;
                wCntNext = 0;
                wBitNext = 0;
            end
            else
                wNextState = sIDLE;
        end
    sSTART: 
        begin
        if(rCntCurrent < CLKS_PER_BIT-1)
            begin
            wNextState = sSTART;
            wCntNext = rCntCurrent +1;
            end
        else
            begin
            wCntNext = 0;
            wBitNext = 0;
            wRxByte = 0;
            wNextState = sREAD;
            end
        end
    sREAD: 
        begin
        if(rCntCurrent < CLKS_PER_BIT-1)
            begin
            wNextState = sREAD;
            wCntNext = rCntCurrent+1;
            wBitNext = rBitCurrent;
            //Sample data
            if(rCntCurrent == CLKS_PER_BIT/2)
                wRxByte = {rRx2, rRxByte[7:1]};

            end
        else
            begin
            wCntNext = 0;
            if(rBitCurrent != 7)
                begin
                wBitNext = rBitCurrent+1;
                wNextState = sREAD;
                end
            else
                begin
                wBitNext = 0;
                wCntNext = 0;
                wNextState = sSTOP;
                end
            end
        end
        
    sSTOP:      
        begin
        wBitNext = 0;
        if(rCntCurrent < CLKS_PER_BIT-1)
            begin
            wNextState = sSTOP;
            wCntNext = rCntCurrent+1;
            end
        else
            begin
            wNextState = sDONE;
            wCntNext = 0;
            end
        end
    
    sDONE:
        begin
        wBitNext = 0;
        wCntNext = 0;
        wNextState = sIDLE;
        end
    
    default:
        begin
        wNextState = sIDLE;
        wCntNext = 0;
        wBitNext = 0;
        end 
    endcase
end

//Output logic
assign oRxByte = rRxByte;
assign oRxDone = (rCurrentState == sDONE)? 1 : 0;


endmodule
