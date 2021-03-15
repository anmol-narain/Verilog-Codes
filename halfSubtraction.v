module hsub(a,b,diff,bor);
  input a,b;
  output diff,bor;
  wire p;
  xor g1(diff,a,b);
  not g2(p,a);
  and g3(bor,p,b);
  
endmodule;
