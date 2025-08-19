// Code your testbench here
// or browse Examples
module tb();
  reg a,b,x,y,z;
  wire out1,out2;
  integer i,j;
  and_gate DUT(a,b,out1);
  and_gate1 DUT1(x,y,z,out2);
  
  initial
    begin
      for(i=0;i<4;i=i+1)
        begin
          {a,b} = i
          #5;
        end
    end
  
  initial
    begin
      for(j=0;j<8;j=j+1)
        begin
          {x,y,z} = j
        end
    end
   initial
   begin
     $dumpfile("test.vcd");
     $dumpvars(1);
   end
  initial
  begin
    $monitor("a = %0d,b = %0d,x = %0d,y = %0d,z = %0d,out1 = %0d,out2 = %0d",a,b,x,y,z,out1,out2);
             end
             endmodule
             
             
 