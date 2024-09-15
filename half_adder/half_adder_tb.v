`include "half_adder.v"

module tb_half_adder;

    // Inputs
    reg A;
    reg B;

    // Outputs
    wire Sum;
    wire Carry;

    // Instantiate the Unit Under Test (UUT)
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
    );

    // Test stimulus
    initial begin
        // Apply test vectors
        A = 0; B = 0; #10;
        $display("A=%b B=%b | Sum=%b Carry=%b", A, B, Sum, Carry);

        A = 0; B = 1; #10;
        $display("A=%b B=%b | Sum=%b Carry=%b", A, B, Sum, Carry);

        A = 1; B = 0; #10;
        $display("A=%b B=%b | Sum=%b Carry=%b", A, B, Sum, Carry);

        A = 1; B = 1; #10;
        $display("A=%b B=%b | Sum=%b Carry=%b", A, B, Sum, Carry);

        $finish;
    end

endmodule
