module d_flip_flop(
    input D,
    input clk,
    input reset,     // Asynchronous reset
    output reg Q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;     // Reset output to 0
        else
            Q <= D;     // Capture input value at rising edge
    end
endmodule
