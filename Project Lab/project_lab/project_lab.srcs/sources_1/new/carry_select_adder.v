`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hugo Fache
// 
// Create Date: 04/19/2025 04:32:32 PM
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder #(
    parameter ADDER_WIDTH = 16,
    parameter BLOCK_SIZE = 4 //best when block_size is sqrt(adder width)
    )
    (
    input   wire [ADDER_WIDTH-1:0]  iA, iB, 
    input   wire                    iCarry,
    output  wire [ADDER_WIDTH-1:0]  oSum, 
    output  wire                    oCarry
    );
    
    wire [ADDER_WIDTH/BLOCK_SIZE-1:0] wCarries;
    
    //First RCA
    ripple_carry_adder_Nb #( .ADDER_WIDTH(BLOCK_SIZE))
    RCA (
        .iA (iA[BLOCK_SIZE-1:0]),
        .iB (iB[BLOCK_SIZE-1:0]),
        .iCarry (iCarry),
        .oSum (oSum[BLOCK_SIZE-1:0]),
        .oCarry (wCarries[0])
        );
        
    //Other RCAs
    genvar i;
    generate
        for(i=1; i<ADDER_WIDTH/BLOCK_SIZE; i = i+1)
        begin
            wire [BLOCK_SIZE-1:0] wSum0, wSum1;
            wire wCarry0, wCarry1;
            
            //iCarry is 0
            ripple_carry_adder_Nb #(.ADDER_WIDTH(BLOCK_SIZE))
            RCA0 (
                .iA (iA[(i+1)*BLOCK_SIZE-1:i*BLOCK_SIZE]),
                .iB (iB[(i+1)*BLOCK_SIZE-1:i*BLOCK_SIZE]),
                .iCarry (0),
                .oSum (wSum0),
                .oCarry (wCarry0)
                );
            
            //iCarry is 1
            ripple_carry_adder_Nb #(.ADDER_WIDTH(BLOCK_SIZE))
            RCA1 (
                .iA (iA[(i+1)*BLOCK_SIZE-1:i*BLOCK_SIZE]),
                .iB (iB[(i+1)*BLOCK_SIZE-1:i*BLOCK_SIZE]),
                .iCarry (1),
                .oSum (wSum1),
                .oCarry (wCarry1)
                );
                
            //MUX
            assign wCarries[i] = (wCarries[i-1]==0)? wCarry0 : wCarry1;
            assign oSum[(i+1)*BLOCK_SIZE-1:i*BLOCK_SIZE] = (wCarries[i-1]==0)? wSum0 : wSum1;
        end
    endgenerate
    
    //last carry is output
    assign oCarry = wCarries[ADDER_WIDTH/BLOCK_SIZE-1];
endmodule