`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 05:34:43 PM
// Design Name: 
// Module Name: ripple_carry_adder_4b_TB
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


module ripple_carry_adder_4b_TB;

     // Inputs
    reg [3:0] iA, iB;
    reg iCarry;
    
    // Outputs
    wire [3:0] oSum;
    wire oCarry;
    
    // Instantiate the Unit Under Test (UUT)
    ripple_carry_adder_4b uut (
        .iA(iA), 
        .iB(iB), 
        .iCarry(iCarry), 
        .oSum(oSum), 
        .oCarry(oCarry)
    );
    
    initial begin
        // Test cases
        iA = 4'b0000; iB = 4'b0000; iCarry = 1'b0; #10;
        if (oSum == 4'b0000 && oCarry == 1'b0) $display("Test 1: SUCCESS"); else $display("Test 1: FAILED");
        
        iA = 4'b0001; iB = 4'b0001; iCarry = 1'b0; #10;
        if (oSum == 4'b0010 && oCarry == 1'b0) $display("Test 2: SUCCESS"); else $display("Test 2: FAILED");
        
        iA = 4'b0110; iB = 4'b0011; iCarry = 1'b0; #10;
        if (oSum == 4'b1001 && oCarry == 1'b0) $display("Test 3: SUCCESS"); else $display("Test 3: FAILED");
        
        iA = 4'b1010; iB = 4'b0101; iCarry = 1'b1; #10;
        if (oSum == 4'b0000 && oCarry == 1'b1) $display("Test 4: SUCCESS"); else $display("Test 4: FAILED");
        
        iA = 4'b1111; iB = 4'b1111; iCarry = 1'b0; #10;
        if (oSum == 4'b1110 && oCarry == 1'b1) $display("Test 5: SUCCESS"); else $display("Test 5: FAILED");
        
        iA = 4'b1111; iB = 4'b0001; iCarry = 1'b1; #10;
        if (oSum == 4'b0001 && oCarry == 1'b1) $display("Test 6: SUCCESS"); else $display("Test 6: FAILED");
        
        // End simulation
        $stop;
    end

endmodule
