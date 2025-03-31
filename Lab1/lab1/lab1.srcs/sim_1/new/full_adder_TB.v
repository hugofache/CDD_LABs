`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 05:13:20 PM
// Design Name: 
// Module Name: full_adder_TB
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


module full_adder_TB;
    reg r_iA, r_iB, r_iCarry;
    wire w_oSum, w_oCarry;
    
    
    full_adder full_adder_inst
    (.iA(r_iA), .iB(r_iB), .iCarry(r_iCarry),
    .oSum(w_oSum), .oCarry(w_oCarry));
    
    initial
    begin
        //test 1
        r_iA = 0; r_iB = 1; r_iCarry = 0;
        #50
        if(w_oCarry == 0 && w_oSum) $display("test 1 passed");
        else $display("test 1 failed");
        //test 2
        r_iA = 1; r_iB = 0; r_iCarry = 1;
        #50
        if(w_oCarry == 1 && w_oSum == 0) $display("test 2 passed");
        else $display("test 2 failed");
        //test 3
        r_iA = 1; r_iB = 1; r_iCarry = 1;
        #50
        if(w_oCarry == 1 && w_oSum == 1) $display("test 3 passed");
        else $display("test 3 failed");
        $stop;
    end        
        
    
endmodule
