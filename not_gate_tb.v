// Code your testbench here
// or browse Examples
module tb();
  reg a;
  wire out;
  not_gate DUT(a,out);
  initial
    begin
      a = 0;
      #5;
      a = 1;
      #5;
    end
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
      $monitor("a = %0d,out = %0d",a,out);
    end 
endmodule