`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hugo Fache
// 
// Create Date: 04/19/2025 05:23:06 PM
// Design Name: 
// Module Name: carry_lookahead_adder
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


module carry_lookahead_adder#(
    parameter ADDER_WIDTH = 16
    )
    (
    input wire [ADDER_WIDTH-1:0] iA, iB,
    input wire iCarry,
    output wire [ADDER_WIDTH-1:0] oSum,
    output wire oCarry
    );
    
    wire [ADDER_WIDTH:0] wCarries;
    wire [ADDER_WIDTH-1:0] wGenerates, wPropagates;
    
    assign wCarries[0] = iCarry;
    
    genvar i,j;
    generate
        for(i=0; i<ADDER_WIDTH; i=i+1)
        begin
            partial_full_adder PFA
            (.iA(iA[i]), .iB(iB[i]), .iCarry(wCarries[i]), 
            .oSum(oSum[i]), .oGenerate(wGenerates[i]), .oPropagate(wPropagates[i]));
            
            wire [i:0] wPropagatedGenerates;
            assign wPropagatedGenerates[0] = wGenerates[i];
            
            //Regenerate the logic until this point 
            for(j=1; j<=i;j=j+1)
            begin
                //did bit i-j generate a carry
                //AND
                //did the bits between i and i-j all propagate this carry (bitwise-AND-reduction)
                assign wPropagatedGenerates[j] = wGenerates[i-j] & &wPropagates[i:i-j+1];
            end
            
            //OG input carry propagated till here
            //OR
            //generated carry propagated till here (bitwise-OR-reduction)
            assign wCarries[i+1] = (&wPropagates[i:0]&iCarry) | (|wPropagatedGenerates);
            
        end
    endgenerate
endmodule