module A19(a,b,c,f);
  input a,b,c;
  output f;
  wire p,q,r,s,t,u;
  not g1(p,a);
  not g2(q,b);
  not g3(r,c);
  
  and g4(s,a,b,c);
  and g5(t,a,c,q);
  and g6(u,p,q,r);
  
  or g7(f,s,t,u);
endmodule;
