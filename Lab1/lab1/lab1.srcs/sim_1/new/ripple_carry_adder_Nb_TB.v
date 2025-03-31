`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Testbench for ripple carry adder
//////////////////////////////////////////////////////////////////////////////////

module ripple_carry_adder_Nb_TB;

    // Parameters for the ripple carry adder width
    parameter ADDER_WIDTH = 16;

    // Inputs to the ripple carry adder
    reg [ADDER_WIDTH-1:0] iA, iB;
    reg iCarry;
    
    // Outputs from the ripple carry adder
    wire [ADDER_WIDTH-1:0] oSum;
    wire oCarry;

    // Instantiate the ripple carry adder
    ripple_carry_adder_Nb #(
        .ADDER_WIDTH(ADDER_WIDTH)
    ) uut (
        .iA(iA),
        .iB(iB),
        .iCarry(iCarry),
        .oSum(oSum),
        .oCarry(oCarry)
    );

    // Initialize inputs and apply test vectors
    initial begin
        // Initialize inputs
        iA = 0;
        iB = 0;
        iCarry = 0;
        
        // Test vector 1: 16-bit binary add with carry input = 0
        #10;
        iA = 16'b0000000000000011;  // 3
        iB = 16'b0000000000000101;  // 5
        iCarry = 0;
        #10;
        check_result(16'b0000000000001000, 0); // Expected sum = 8, carry = 0

        // Test vector 2: Add with carry input = 1
        #10;
        iA = 16'b0000000000000011;  // 3
        iB = 16'b0000000000000101;  // 5
        iCarry = 1;
        #10;
        check_result(16'b0000000000001001, 0); // Expected sum = 9, carry = 1

        // Test vector 3: Add with no carry input
        #10;
        iA = 16'b1111111111111111;  // 65535
        iB = 16'b0000000000000001;  // 1
        iCarry = 0;
        #10;
        check_result(16'b0000000000000000, 1); // Expected sum = 0, carry = 1

        // Test vector 4: Add with carry input
        #10;
        iA = 16'b1111111111111111;  // 65535
        iB = 16'b1111111111111111;  // 65535
        iCarry = 1;
        #10;
        check_result(16'b1111111111111111, 1); // Expected sum = 65535, carry = 1
        
        // End simulation
        $finish;
    end
    
    // Function to check if the result is correct
    task check_result(input [ADDER_WIDTH-1:0] expected_sum, input expected_carry);
        if (oSum == expected_sum && oCarry == expected_carry) begin
            $display("Test PASSED: Sum = %b, Carry = %b", oSum, oCarry);
        end else begin
            $display("Test FAILED: Sum = %b, Carry = %b (Expected Sum = %b, Expected Carry = %b)", oSum, oCarry, expected_sum, expected_carry);
        end
    endtask

endmodule

