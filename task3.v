module task3(A,B,C,D,Y);
  output Y;
  input A,B,C,D;
  reg Y;
  always@(A or B or C or D)
    case({A,B,C,D})
      4'b0000: Y=0;
      4'b0001: Y=0;
      4'b0010: Y=0;
      4'b0011: Y=1;
      4'b0100: Y=0;
      4'b0101: Y=1;
      4'b0110: Y=1;
      4'b0111: Y=1;
      4'b1000: Y=1;
      4'b1001: Y=1;
      4'b1010: Y=1;
      4'b1011: Y=1;
      4'b1100: Y=1;
      4'b1101: Y=1;
      4'b1110: Y=1;
      4'b1111: Y=1;
    endcase
endmodule
