`include "lookahead_carry_generator.v"

module ripple_carry_lookahead_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,         // Carry input
    output [3:0] Sum,
    output Cout        // Carry output
);
    lookahead_carry_generator LCAG (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
endmodule
