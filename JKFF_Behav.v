module jkff_Behav(J,K,Q,Qb,clk);
  input J,K,clk;
  output reg Q,Qb;
  always@(negedge clk)
  begin
    if(J==0 && K==1) begin Q=0;Qb=1;end
    else if (J==1 && K==0) begin Q=1;Qb=0;end
    else if (J==0 && K==0) begin Q<=Q;Qb<=Qb;end
    else if (J==1 && K==1) begin Q<=~Q;Qb<=~Qb;end
  end
endmodule 
