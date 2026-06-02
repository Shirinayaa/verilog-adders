module full_adder_tb;
reg A;
reg B;
reg Cin, expected1,expected2;
wire SUM,Cout;

full_adder uut(
    .A(A), .B(B), .Cin(Cin), .SUM(SUM), .Cout(Cout)
);

initial begin
    $dumpfile("full_adder_wave.vcd");
    $dumpvars(0,full_adder_tb);
    $display("A B Cin | SUM | Cout");
    A=0;B=0;Cin=0;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    A=0;B=0;Cin=1;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    A=0;B=1;Cin=0;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    A=0;B=1;Cin=1;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    A=1;B=0;Cin=0;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    A=1;B=0;Cin=1;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    A=1;B=1;Cin=0;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    A=1;B=1;Cin=1;expected1=(A^B^Cin); expected2=((A&B)|((A^B)&Cin)); #10;
    $display("%b %b %b | %b | %b ",A,B,Cin,SUM,Cout);
    if(SUM != expected1)
        $display("Sum Error");
    if(Cout != expected2)
        $display("Cout Error");
    $finish;
end
endmodule
