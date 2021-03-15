module sipo(clk,rst,d,q);
  input d;
  input clk,rst;
  output q;
  reg q;
  always @(posedge clk)
  begin
    if(rst==1'b1)
      q<=1'b0;
    else
      q<=d;
  end
endmodule

