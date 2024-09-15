`include "ripple_carry_lookahead_adder.v"


module tb_ripple_carry_lookahead_adder;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    // Outputs
    wire [3:0] Sum;
    wire Cout;

    // Instantiate the Unit Under Test (UUT)
    ripple_carry_lookahead_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Test stimulus
    initial begin
        // Apply test vectors
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 4'b0001; B = 4'b0001; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 4'b0011; B = 4'b0011; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule
