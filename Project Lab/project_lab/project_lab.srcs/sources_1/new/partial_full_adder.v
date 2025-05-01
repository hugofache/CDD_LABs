`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hugo Fache
// 
// Create Date: 04/19/2025 05:23:52 PM
// Design Name: 
// Module Name: partial_full_adder
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


module partial_full_adder(
    input wire iA, iB, iCarry,
    output wire oSum, oPropagate, oGenerate
    );
    
    assign oSum = (iA^iB)^iCarry;
    assign oPropagate = iA|iB;
    assign oGenerate = iA&iB;
endmodule
