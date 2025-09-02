// Code your design here
module halfadder(output wire sum,carry,input a,b);
  assign sum = a^b;
  assign carry = a&b;
endmodule