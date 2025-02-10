`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2025 09:34:47 PM
// Design Name: 
// Module Name: dsd2
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


module dsd2(input a,
    input b,
    input c,
    output x,
    output y
    );
    assign or_output  = a | b;
    assign x = (~c) ^ or_output;
    assign xor_output = (~(a & b)) ^ (or_output);
    assign y = or_output & xor_output;
endmodule

