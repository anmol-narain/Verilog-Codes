module ckt3(a,b,out);
  input a,b;
  output out;
  
  and g1(out,a,b);
endmodule

module ckt3_tb;
  reg x,y;
  wire o;
  
  ckt3 al(.a(x),.b(y),.out(o));//initialization
  initial
  begin
     x=0; y=0;
     #200 x=1; y=1;
     #100 x=0; y=1;
     #300 x=1; y=0;
     //#400 $stop;
     #200 $finish;
  end 
endmodule
