module anmol(a,b,c,d,y);
  input a,b,c,d;
  output y;
  wire A,C,B,D,E,F,G,H,I,s1,s2;
  assign A=~(a&a);
  assign C=~(c&c);
  assign B=~(b&b);
  assign D=~(d&d);
  
  assign E=~(A&C&d);
  assign F=~(A&C&b);
  assign G=~(c&d);
  assign H=~(c&a&B);
  assign I=~(B&a&D);
  
  assign s1=~(E&F&G);
  assign s2=~(H&I);
  assign y=~(s1&s2);
  
endmodule;
 
