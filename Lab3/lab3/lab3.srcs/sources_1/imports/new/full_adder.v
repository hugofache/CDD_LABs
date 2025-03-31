`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 05:07:59 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input wire iA, iB, iCarry,
    output wire oSum, oCarry
    );
    
    assign oCarry = (iA & iB) | ((iA ^ iB) & iCarry);
    assign oSum = ((iA ^ iB) ^ iCarry); 
    
endmodule
