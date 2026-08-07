module ripple_carry_adder_tb;
reg [3:0] a,b;
reg cin;
reg [4:0] expected;
wire [3:0] sum;
wire cout;

integer i,j,k;

ripple_carry_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    $dumpfile("ripple_carry_adder_demo_wave.vcd");
    $dumpvars(0,ripple_carry_adder_tb);
    $display("|  A  |  B  | Cin | SUM | Cout  |");
   
    a=4'b000; b=4'b0000; cin=0;#10;
    $display("| %b | %b | %b | %b | %b |",a,b,cin,sum,cout);

    a=4'b001; b=4'b0001; cin=0;#10;
    $display("| %b | %b | %b | %b | %b |",a,b,cin,sum,cout);

    a=4'b011; b=4'b0101; cin=0;#10;
    $display("| %b | %b | %b | %b | %b |",a,b,cin,sum,cout);

    a=4'b1111; b=4'b1111; cin=1;#10;
    $display("| %b | %b | %b | %b | %b |",a,b,cin,sum,cout);

    $finish;
end
endmodule
