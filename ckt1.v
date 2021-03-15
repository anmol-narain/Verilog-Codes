module A19BEC0838(a,b,c,w,x,y,z);
  input a,b,c;
  output w,x,y,z;
  
  not gate1(w,a);
  nand gate2(x,a,b);
  nor gate3(y,a,b); 
  or gate4(z,a,b);

endmodule  
  
