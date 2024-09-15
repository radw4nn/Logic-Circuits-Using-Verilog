`include "../half_adder/half_adder.v"

module full_adder(
    input A,
    input B,
    input Cin,      // Carry input
    output Sum,
    output Cout     // Carry output
);
    wire sum1, carry1, carry2;
    
    // First half adder
    half_adder HA1 (
        .A(A),
        .B(B),
        .Sum(sum1),
        .Carry(carry1)
    );
    
    // Second half adder
    half_adder HA2 (
        .A(sum1),
        .B(Cin),
        .Sum(Sum),
        .Carry(carry2)
    );
    
    // OR gate for final carry
    assign Cout = carry1 | carry2;
endmodule
