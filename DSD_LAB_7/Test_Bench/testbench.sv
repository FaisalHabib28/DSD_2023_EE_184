`timescale 1ns/1ps

module testbench;
    
    logic [3:0] input_bits;
    logic [2:0] select;
    logic clk, reset, we;
    logic [6:0] segments;
    logic [7:0] displays;
    
    // Instantiate the DUT (Device Under Test)
    seven_segment uut (
        .input_bits(input_bits),
        .select(select),
        .clk(clk),
        .reset(reset),
        .we(we),
        .segments(segments),
        .displays(displays)
    );
    
    // Clock generation
    always #5 clk = ~clk;

    initial begin 
        clk = 0;
        reset = 1;
        we = 1;
        #5;
        reset = 0;
        for (int i = 0; i < 8; i++ ) begin 
            select = i;
            input_bits = i;
            #10;
        end

// Disable writing and allow display cycling
        we = 0;

        // Run the simulation for some time
        #100;

        // Finish simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $display("Time	 Reset	 we	 Select	 Input_bits	 Displays	 Segments");
        $monitor("%0t	 %0b	 %0b	 %0d	 %0b	 %0b	 %0b", $time, reset, we, select, input_bits, displays, segments);
    end
endmodule
