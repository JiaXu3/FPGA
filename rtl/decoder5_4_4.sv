//5位输入，两个4位输出
module decoder5_4_4(input logic [4:0] a,
					  output logic [3:0] d1_0,d1_1);
always_comb
    case(a)
	    5'd0: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0000;		 
		 end
		 5'd1: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0001;		 
		 end
		 5'd2: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0010;		 
		 end
		 5'd3: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0011;		 
		 end
		 5'd4: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0100;		 
		 end
		 5'd5: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0101;		 
		 end
		 5'd6: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0110;		 
		 end
		 5'd7: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b0111;		 
		 end
		 5'd8: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b1000;		 
		 end
		 5'd9: begin
		    d1_1 = 4'b0000;
			 d1_0 = 4'b1001;		 
		 end
		 5'd10: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0000;		 
		 end
		 5'd11: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0001;		 
		 end
		 5'd12: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0010;		 
		 end
		 5'd13: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0011;		 
		 end
		 5'd14: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0100;		 
		 end
		 5'd15: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0101;		 
		 end
		 5'd16: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0110;		 
		 end
		 5'd17: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b0111;		 
		 end
		 5'd18: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b1000;		 
		 end
		 5'd19: begin
		    d1_1 = 4'b0001;
			 d1_0 = 4'b1001;		 
		 end
		 5'd20: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0000;		 
		 end
		 5'd21: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0001;		 
		 end
		 5'd22: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0010;		 
		 end
		 5'd23: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0011;		 
		 end
		 5'd24: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0100;		 
		 end
		 5'd25: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0101;		 
		 end
		 5'd26: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0110;		 
		 end
		 5'd27: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b0111;		 
		 end
		 5'd28: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b1000;		 
		 end
		 5'd29: begin
		    d1_1 = 4'b0010;
			 d1_0 = 4'b1001;		 
		 end
		 5'd30: begin
		    d1_1 = 4'b0011;
			 d1_0 = 4'b0000;		 
		 end
		 5'd31: begin
		    d1_1 = 4'b0011;
			 d1_0 = 4'b0001;		 
		 end
		 default:begin
		    d1_1 = 4'b1111;
			 d1_0 = 4'b1111;
		 end
	    endcase
	endmodule	 