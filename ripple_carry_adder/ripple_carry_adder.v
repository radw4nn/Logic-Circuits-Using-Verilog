`include "full_adder/full_adder.v"

module ripple_carry_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,       // Carry input
    output [3:0] Sum,
    output Cout      // Carry output
);
    wire c1, c2, c3;
    
    // First full adder
    full_adder FA1 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .Sum(Sum[0]),
        .Cout(c1)
    );
    
    // Second full adder
    full_adder FA2 (
        .A(A[1]),
        .B(B[1]),
        .Cin(c1),
        .Sum(Sum[1]),
        .Cout(c2)
    );
    
    // Third full adder
    full_adder FA3 (
        .A(A[2]),
        .B(B[2]),
        .Cin(c2),
        .Sum(Sum[2]),
        .Cout(c3)
    );
    
    // Fourth full adder
    full_adder FA4 (
        .A(A[3]),
        .B(B[3]),
        .Cin(c3),
        .Sum(Sum[3]),
        .Cout(Cout)
    );
endmodule
