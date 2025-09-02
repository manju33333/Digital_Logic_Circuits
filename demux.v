module demultiplexer(
    input A,
    input Sel,
    output Y0,
    output Y1
);

assign Y0 = (Sel==0) ? A : 0;
assign Y1 = (Sel==1) ? A : 0;

endmodule
