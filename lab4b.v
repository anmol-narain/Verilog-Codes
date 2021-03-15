module ha2(a,b,c,s);
  input a,b;
  output s,c;
  wire a,b;
  assign s=a^b;
  assign c=a&b;
endmodule
//Installation of FA using HA
//main 
module fa2(a,b,cin,s,c);
  input a,b,cin;
  output s,c;
  wire s0,c0,c1;
  ha ha1(a,b,s0,c0);
  ha ha2(s0,cin,s,c1);
  or o1(c,c0,c1);
endmodule

