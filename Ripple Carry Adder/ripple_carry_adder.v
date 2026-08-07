module ripple_carry_adder(
    input [3:0] a,b,
    input cin,
    output [3:0] sum,
    output cout
);

wire c1,c2,c3;

full_adder fa0(
    .A(a[0]),
    .B(b[0]),
    .Cin(cin),
    .SUM(sum[0]),
    .Cout(c1)
);

full_adder fa1(
    .A(a[1]),
    .B(b[1]),
    .Cin(c1),
    .SUM(sum[1]),
    .Cout(c2)
);

full_adder fa2(
    .A(a[2]),
    .B(b[2]),
    .Cin(c2),
    .SUM(sum[2]),
    .Cout(c3)
);

full_adder fa3(
    .A(a[3]),
    .B(b[3]),
    .Cin(c3),
    .SUM(sum[3]),
    .Cout(cout)
);

endmodule
