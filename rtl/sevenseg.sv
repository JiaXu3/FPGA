//译码器
module sevenseg(input logic [3:0] y,
                output logic [6:0] segments);
always_comb 
   case(y)
	4'd0:    segments = 7'b100_0000;
	4'd1:    segments = 7'b111_1001;
	4'd2:    segments = 7'b010_0100;
	4'd3:    segments = 7'b011_0000;
	4'd4:    segments = 7'b001_1001;
	4'd5:    segments = 7'b001_0010;
	4'd6:    segments = 7'b000_0010;
	4'd7:    segments = 7'b111_1000;
	4'd8:    segments = 7'b000_0000;
	4'd9:    segments = 7'b001_0000;
	default:segments = 7'b111_1111;
   endcase
endmodule