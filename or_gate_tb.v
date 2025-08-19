module tb();
  reg a,b;
  wire out;
  or_gate DUT(a,b,out);
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
      $dumpfile("test.vcd");
      $dumpvars(1);
    end
  initial
    begin
      $monitor("a = %0d, b = %0d,out = %0d",a,b,out);
    end
endmodule
  