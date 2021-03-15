module mux4_1(out,d0,d1,d2,d3,s0,s1);
  output out;
  input d0,d1,d2,d3;
  input s0,s1;
  assign out=(~s0&~s1&d0)|(~s0&s1&d1)|(s0&~s1&d2)|(s0&s1&d3);
endmodule
