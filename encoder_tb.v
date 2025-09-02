module encoder_tb;
reg [3:0] D;
wire [1:0] Y;

encoder uut (.D(D), .Y(Y));

initial begin
    D=4'b0001; #10;
    D=4'b0010; #10;
    D=4'b0100; #10;
    D=4'b1000; #10;
    $finish;
end
endmodule
