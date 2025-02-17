`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 10:03:18 PM
// Design Name: 
// Module Name: DSD_lab4
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


module DSD_lab4(input  logic [1:0] a, 
    input  logic [1:0] b,  
    output logic r,        
    output logic g,       
    output logic c         
);
    assign r = a[1] | (a[0] & ~b[1] & ~b[0]);
    assign g = (~a[1] & ~a[0] & ~b[1] & ~b[0]) | 
                (a[1] & a[0] & b[1] & b[0]) | 
                (~a[1] & a[0] & b[1]);

    assign c = (~a[1] & b[1]) | 
               (~a[1] & b[0]) | 
               (~a[0] & b[1] & b[0]);
endmodule
