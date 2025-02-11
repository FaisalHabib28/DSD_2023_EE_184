`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 12:47:06 PM
// Design Name: 
// Module Name: Dsd_lab3
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


module Dsd_lab3(

    );
endmodule input a,
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
