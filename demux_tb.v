module demultiplexer_tb;
reg A, Sel;
wire Y0, Y1;

demultiplexer uut (.A(A), .Sel(Sel), .Y0(Y0), .Y1(Y1));

initial begin
    A=1; Sel=0; #10;
    A=1; Sel=1; #10;
    $finish;
end
endmodule
