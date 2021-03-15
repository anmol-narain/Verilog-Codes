module DA2(out,A,b,C,d,d0,d1,d2,d3);
  output out;
  input A,b,C,d;
  input d0,d1,d2,d3;
  assign d0=~A&~C;
  assign d1=A^C;
  assign d2=A&~C;
  assign d3=~A|C;
  assign out=(~b&~d&d0)|(~b&d&d1)|(b&~d&d2)|(b&d&d3);
endmodule;

