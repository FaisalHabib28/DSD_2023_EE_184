`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 07:39:12 AM
// Design Name: 
// Module Name: dsd_behavioural_lab5
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


module dsd_behavioural_lab5(
    input logic [3:0]
    input_bits,
    input logic [2:0] select,
    output logic A, B, C, D, E, F, G, S1,S2,S3,S4,S5,S6,S7,S8, Dp
);

always_comb 
begin
Dp = 1;
case (input_bits)
    
    4'b0000 : {A,B,C,D,E,F,G} = 7'b0000001;
    4'b0001 : {A,B,C,D,E,F,G} = 7'b1001111;
    4'b0010 : {A,B,C,D,E,F,G} = 7'b0010010;
    4'b0011 : {A,B,C,D,E,F,G} = 7'b0000110;
    4'b0100 : {A,B,C,D,E,F,G} = 7'b1001100;
    4'b0101 : {A,B,C,D,E,F,G} = 7'b0100100;
    4'b0110 : {A,B,C,D,E,F,G} = 7'b0100000;
    4'b0111 : {A,B,C,D,E,F,G} = 7'b0001111;
    4'b1000 : {A,B,C,D,E,F,G} = 7'b0000000;
    4'b1001 : {A,B,C,D,E,F,G} = 7'b0000100;
    4'b1010 : {A,B,C,D,E,F,G} = 7'b0001000;
    4'b1011 : {A,B,C,D,E,F,G} = 7'b1100000;
    4'b1100 : {A,B,C,D,E,F,G} = 7'b0110001;
    4'b1101 : {A,B,C,D,E,F,G} = 7'b1000010;
    4'b1110 : {A,B,C,D,E,F,G} = 7'b0110000;
    4'b1111 : {A,B,C,D,E,F,G} = 7'b0111000;

endcase

end

always_comb 
begin
Dp = 1;
case (select)
    
    3'b000 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b11111110;
    3'b001 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b11111101;
    3'b010 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b11111011;
    3'b011 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b11110111;
    3'b100 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b11101111;
    3'b101 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b11011111;
    3'b110 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b10111111;
    3'b111 : {S8,S7,S6,S5,S4,S3,S2,S1} = 8'b01111111;

endcase
end

endmodule
