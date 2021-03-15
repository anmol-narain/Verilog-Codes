module dff_beh(Qb,D,Q,clk);
  input D,clk;
  output reg Q,Qb;
  
  initial
  begin
    Q=0;
    Qb=1;
  end
  always@(posedge clk)
  begin
    if(D==0) begin Q=0;Qb=1;end
    else if(D==1) begin Q=1;Qb=0;end
  end
endmodule

module Async_upCounter_D_FF(clk,q);
  input clk;
  output [3:0]q;
  wire Qb0,Qb1,Qb2,Qb3;
  
  dff_beh x1(.Qb(Qb0),.D(Qb0),.Q(q[0]),.clk(clk));
  dff_beh x2(.Qb(Qb1),.D(Qb1),.Q(q[1]),.clk(Qb0));
  dff_beh x3(.Qb(Qb2),.D(Qb2),.Q(q[2]),.clk(Qb1));
  dff_beh x4(.Qb(Qb3),.D(Qb3),.Q(q[3]),.clk(Qb2));
  
endmodule

