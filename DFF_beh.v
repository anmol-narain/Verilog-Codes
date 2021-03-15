module dff_behv(D,Q,Qb,clk);
  input D,clk;
  output reg Q,Qb;
  always@(negedge clk)
  begin
    if(D==0) begin Q=0;Qb=1;end
    else if(D==1) begin Q=1;Qb=0;end
  end
endmodule
