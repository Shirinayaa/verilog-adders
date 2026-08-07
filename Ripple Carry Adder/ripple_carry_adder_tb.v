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
    $dumpfile("ripple_carry_adder_wave.vcd");
    $dumpvars(0,ripple_carry_adder_tb);
    $display("|  A  |  B  | Cin | SUM | Cout  |");

    for(i=0;i<16;i++)
    begin
        for(j=0;j<16;j++)
        begin
            for(k=0;k<2;k++)
            begin
                a=i;
                b=j;
                cin=k;
                #10;
                expected = i + j + k;
                if(expected != {cout,sum})
                begin
                    $display("Test failed!");
                    $display("| %b | %b | %b |",a,b,cin);
                    $display("Expected = %b ",expected);
                    $display("Got = %b",{cout,sum});
                end
                else
                    $display("|  %b  |  %b  |  %b  |  %b  |  %b  | ",a,b,cin,sum,cout);
            end
        end
    end
    $finish;
end
endmodule
