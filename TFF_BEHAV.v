module tff_behv(T,Q,Qb,clk);
  input T,clk;
  output reg Q,Qb;
  always@(negedge clk)
  begin
    if(T==0) begin Q<=~Q;Qb<=~Qb;end
    else if(T==1) begin Q<=Q;Qb<=Qb;end
  end
endmodule

