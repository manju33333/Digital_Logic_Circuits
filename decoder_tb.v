module decoder_tb;
reg [1:0] A;
wire [3:0] Y;

decoder uut (.A(A), .Y(Y));

initial begin
    A=2'b00; #10;
    A=2'b01; #10;
    A=2'b10; #10;
    A=2'b11; #10;
    $finish;
end
endmodule
