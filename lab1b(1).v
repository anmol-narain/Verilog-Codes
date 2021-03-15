module anm(a,b,c,d,y);
  input a,b,c,d;
  output y;
  wire A,C,B,D,E,F,G,H,I,s1,s2;
  nand g1(A,a,a);
  nand g2(C,c,c);
  nand g3(B,b,b);
  nand g4(D,d,d);
  
  nand g5(E,A,C,d);
  nand g6(F,A,C,b);
  nand g7(G,c,D);
  nand g8(H,c,a,B);
  nand g9(I,B,a,D);
  
  nand g10(s1,E,F,G);
  nand g11(s2,H,I);
  nand g12(y,s1,s2);
  
endmodule;
  
  
