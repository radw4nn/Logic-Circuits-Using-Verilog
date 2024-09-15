`include "flip-flop.v"


module tb_d_flip_flop;

    // Inputs
    reg D;
    reg clk;
    reg reset;

    // Output
    wire Q;

    // Instantiate the Unit Under Test (UUT)
    d_flip_flop uut (
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Clock period of 10 time units
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        clk = 0;
        reset = 0;
        D = 0;

        // Apply test vectors
        #10;       // Wait for 10 time units
        reset = 1; // Apply reset
        #10;
        reset = 0; // Release reset
        D = 1;     // Set D to 1
        #10;
        D = 0;     // Change D to 0
        #10;
        D = 1;     // Change D to 1 again
        #10;
        
        // Finish simulation
        $finish;
    end

    // Monitor the outputs
    initial begin
        $monitor("At time %t: D=%b clk=%b reset=%b | Q=%b", $time, D, clk, reset, Q);
    end

endmodule
