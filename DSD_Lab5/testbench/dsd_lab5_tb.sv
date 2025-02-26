`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 06:54:44 AM
// Design Name: 
// Module Name: dsd_lab5_tb
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


module dsd_lab5_tb;
                   logic [3:0] input_bits;  
                   logic [2:0] select;  
                   logic A, B, C, D, E, F, G, Dp;  
                   logic S1, S2, S3, S4, S5, S6, S7, S8; 

    dsd_lab5 uut (
        .input_bits(input_bits), 
        .select(select), 
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(G),
        .Dp(Dp),
        .S1(S1),
        .S2(S2),
        .S3(S3), 
        .S4(S4),
        .S5(S5),
        .S6(S6),
        .S7(S7),
        .S8(S8)
    );

    logic [6:0] expected_output_cathode [15:0];
    logic [7:0] expected_output_anode [7:0]; 

    initial begin
        expected_output_cathode[0]  = 7'b0000001;
        expected_output_cathode[1]  = 7'b1001111;
        expected_output_cathode[2]  = 7'b0010010;
        expected_output_cathode[3]  = 7'b0000110;
        expected_output_cathode[4]  = 7'b1001100;
        expected_output_cathode[5]  = 7'b0100100;
        expected_output_cathode[6]  = 7'b0100000;
        expected_output_cathode[7]  = 7'b0001111;
        expected_output_cathode[8]  = 7'b0000000;
        expected_output_cathode[9]  = 7'b0000100;
        expected_output_cathode[10] = 7'b0001000;
        expected_output_cathode[11] = 7'b1100000;
        expected_output_cathode[12] = 7'b0110001;
        expected_output_cathode[13] = 7'b1000010;
        expected_output_cathode[14] = 7'b0110000;
        expected_output_cathode[15] = 7'b0111000;

        expected_output_anode[0] = 8'b11111110;
        expected_output_anode[1] = 8'b11111101;
        expected_output_anode[2] = 8'b11111011;
        expected_output_anode[3] = 8'b11110111;
        expected_output_anode[4] = 8'b11101111;
        expected_output_anode[5] = 8'b11011111;
        expected_output_anode[6] = 8'b10111111;
        expected_output_anode[7] = 8'b01111111;

        for (int i = 0; i < 16; i++) begin
            for (int j = 0; j < 8; j++) begin
                input_bits = i; 
                select = j;
                #1;
                if (expected_output_cathode[i] !== {A, B, C, D, E, F, G}) begin
                    $display("Incorrect output observed for cathode for input bits = %b (Expected = %b, Output = %b)", 
                             input_bits, expected_output_cathode[i], {A, B, C, D, E, F, G});
                end  

                if ({S8, S7, S6, S5, S4, S3, S2, S1} !== expected_output_anode[j]) begin
                    $display("Incorrect output observed for anode for select=%b (Expected=%b, Got=%b)", 
                             select, expected_output_anode[j], {S8, S7, S6, S5, S4, S3, S2, S1});
 end
#10; 
end
end
$finish;  
end
endmodule