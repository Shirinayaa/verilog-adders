module half_adder_tb;
reg A;
reg B;
reg expected1;
reg expected2;
wire SUM;
wire CARRY;

half_adder uut(
    .A(A),
    .B(B),
    .SUM(SUM),
    .CARRY(CARRY)
);

initial begin
    $dumpfile("half_adder_wave.vcd");
    $dumpvars(0,half_adder_tb);
    $display("A B | SUM | CARRY");
    A=0; B=0; expected1= A^B; expected2= A&B; #10;
    $display("%b %b | %b | %b",A,B,SUM,CARRY);
    if(SUM != expected1)
        $display("Error");
    if(CARRY != expected2)
        $display("Error");
    A=0; B=1; expected1= A^B; expected2= A&B; #10;
    $display("%b %b | %b | %b",A,B,SUM,CARRY);
    if(SUM != expected1)
        $display("Error");
    if(CARRY != expected2)
        $display("Error");
    A=1; B=0; expected1= A^B; expected2= A&B; #10;
    $display("%b %b | %b | %b",A,B,SUM,CARRY);
    if(SUM != expected1)
        $display("Error");
    if(CARRY != expected2)
        $display("Error");
    A=1; B=1; expected1= A^B; expected2= A&B; #10;
    $display("%b %b | %b | %b",A,B,SUM,CARRY);
    if(SUM != expected1)
        $display("Error");
    if(CARRY != expected2)
        $display("Error");
    $finish;
end
endmodule
