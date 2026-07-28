module full_adder(
    input A, B, Cin,
    output SUM, Cout
);

wire s1,c1,c2;

half_adder ha1(
    .A(A),
    .B(B),
    .SUM(s1),
    .CARRY(c1)
);

half_adder ha2(
    .A(s1),
    .B(Cin),
    .SUM(SUM),
    .CARRY(c2)
);

assign Cout = c1 | c2;

endmodule
