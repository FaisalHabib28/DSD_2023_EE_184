`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 11:16:39 PM
// Design Name: 
// Module Name: DSD_lab4_tb
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

module DSD_lab4_tb;

    // Inputs
    logic [1:0] a;
    logic [1:0] b;

    // Outputs
    logic r;
    logic g;
    logic c;  // Corrected variable name from b1 to c

    // Local parameter for delay
    localparam period = 10;

    // Instantiate the Unit Under Test (UUT)
    DSD_lab4 UUT (
        .a(a),
        .b(b),
        .r(r),
        .g(g),
        .c(c)  // Corrected variable name from b1 to c
    );

    // Testbench logic
    initial 
    begin
        // Test all combinations of a and b
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 0; #period;
        a[1] = 0; a[0] = 0; b[1] = 0; b[0] = 1; #period;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 0; #period;
        a[1] = 0; a[0] = 0; b[1] = 1; b[0] = 1; #period;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 0; #period;
        a[1] = 0; a[0] = 1; b[1] = 0; b[0] = 1; #period;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 0; #period;
        a[1] = 0; a[0] = 1; b[1] = 1; b[0] = 1; #period;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 0; #period;
        a[1] = 1; a[0] = 0; b[1] = 0; b[0] = 1; #period;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 0; #period;
        a[1] = 1; a[0] = 0; b[1] = 1; b[0] = 1; #period;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 0; #period;
        a[1] = 1; a[0] = 1; b[1] = 0; b[0] = 1; #period;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 0; #period;
        a[1] = 1; a[0] = 1; b[1] = 1; b[0] = 1; #period;

        // Stop simulation
        $stop;
    end

endmodule