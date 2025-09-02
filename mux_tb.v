// Code your testbench here
// or browse Examples
module tb_mux_2to1;
    // Inputs
    reg a, b, sel;
    // Output
    wire y;

    // Instantiate the 2-to-1 MUX
    mux_2to1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .y(y)
    );

    // Test stimulus
    initial begin
        $monitor("a=%b, b=%b, sel=%b, y=%b", a, b, sel, y);

        // Test Case 1: sel = 0, y should be a
        a = 0; b = 0; sel = 0; #10;
        a = 1; b = 0; sel = 0; #10;

        // Test Case 2: sel = 1, y should be b
        a = 0; b = 1; sel = 1; #10;
        a = 1; b = 1; sel = 1; #10;

        $finish;
    end
endmodule
