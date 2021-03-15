module RSFF_Behav(R,S,Q,Qb,clk);
  input R,S,clk;
  output reg Q,Qb;
  always@(negedge clk)
  begin
    if(S==1) begin Q=1;Qb=0;end
    else if (R==1) begin Q=0;Qb=1;end
    else if (S==0&&R==0) begin Q<=Q;Qb<=Qb;end
  end
endmodule 
