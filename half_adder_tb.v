// Code your testbench here
// or browse Examples
module tb();
  wire sum,carry;
  reg a,b;
  halfadder DUT(sum,carry,a,b);
  initial
    begin
      a = 0;b = 0;
      #5;
      a = 0;b = 1;
      #5;
      a = 1;b = 0;
      #5;
      a = 1;b = 1;
      #5;
    end
  initial
    begin
      $monitor("a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
    end
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars(1);
    end
endmodule