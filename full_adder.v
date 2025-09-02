// Code your design here;
module fulladder(output wire sum,carry,input a,b,c);
  assign sum = a^b^c;
  assign carry = a&b|b&c|c&a;
endmodule