module decoder_3to8(Data_in,Data_out,enable);
    input [2:0] Data_in;
    input enable;
    output [7:0] Data_out;
    reg [7:0] Data_out;

    
    always @(Data_in or enable)
    if(enable==1)   
      case (Data_in)   
        3'b111 : Data_out = 8'b11111110;
        3'b110 : Data_out = 8'b11111101;
        3'b101 : Data_out = 8'b11111011;
        3'b100 : Data_out = 8'b11110111;
        3'b011 : Data_out = 8'b11101111;
        3'b010 : Data_out = 8'b11011111;
        3'b001 : Data_out = 8'b10111111;
        3'b000 : Data_out = 8'b01111111;
      endcase
    else if(enable ==0)
      Data_out = 8'b11111111; 
      

endmodule
module resulttask(f,i);
input [3:0]i;
output f;
wire [7:0]w,k;
decoder3to8 d1(i[2:0],w[7:0],i[3]);
decoder3to8 d2(i[2:0],k[7:0],~i[3]);
nand g1(f,w[0],w[1],w[4],w[7],k[1],k[3],k[5],k[6],k[7]);


endmodule
