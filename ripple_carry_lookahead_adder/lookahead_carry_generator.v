module lookahead_carry_generator(
    input [3:0] A,
    input [3:0] B,
    input Cin,         // Carry input
    output [3:0] Sum,
    output Cout        // Carry output
);
    wire [3:0] G, P;   // Generate and Propagate signals
    wire [4:0] C;      // Carry signals

    // Generate (G) and Propagate (P) signals
    assign G = A & B;   // G_i = A_i & B_i
    assign P = A ^ B;   // P_i = A_i ^ B_i
    
    // Carry signals
    assign C[0] = Cin;  // Initial carry
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign C[4] = G[3] | (P[3] & C[3]);

    // Sum calculation
    assign Sum = P ^ C[3:0];
    assign Cout = C[4];
endmodule
