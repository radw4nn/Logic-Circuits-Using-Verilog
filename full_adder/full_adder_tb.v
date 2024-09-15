`include "full_adder.v"


module tb_full_adder;

    // Inputs
    reg A;
    reg B;
    reg Cin;

    // Outputs
    wire Sum;
    wire Cout;

    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Test stimulus
    initial begin
        // Apply test vectors
        A = 0; B = 0; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 0; B = 0; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 0; B = 1; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 1; B = 0; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 1; B = 1; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule
