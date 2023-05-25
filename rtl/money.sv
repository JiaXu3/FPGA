//三段式状态机
module money(input logic rmb1,rmb5,rmb10,
             input logic clk,
				 input logic reset,
				 output logic [4:0] a);
typedef enum logic [4:0] {S0=5'd0,S1=5'd1,S2=5'd2,S3=5'd3,S4=5'd4,S5=5'd5,S6=5'd6,S7=5'd7,
                          S8=5'd8,S9=5'd9,S10=5'd10,S11=5'd11,S12=5'd12,S13=5'd13,S14=5'd14,S15=5'd15,
								  S16=5'd16,S17=5'd17,S18=5'd18,S19=5'd19,S20=5'd20,S21=5'd21,S22=5'd22,S23=5'd23,
								  S24=5'd24,S25=5'd25,S26=5'd26,S27=5'd27,S28=5'd28,S29=5'd29,S30=5'd30,S31=5'd31} statetype;
statetype state,nextstate;	
logic [5:0] num = 5'd0;			 
always_ff@(posedge clk,posedge reset)
    if(reset) state <= S0;
	 else
	 state <= nextstate;
   

//always@(rmb1,rmb5,rmb10)
always_comb
begin 
	 case(state)
	 S0:begin
	     if(rmb1 == 1'b1)
		      nextstate = S1;
		  else if(rmb5 == 1'b1)
		       nextstate = S5;
		  else if(rmb10 == 1'b1)
		       nextstate = S10;
		  else 
		       nextstate = S0;
	 end
	 S1:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S2;
		  else if(rmb5 == 1'b1)
		       nextstate = S6;
		  else if(rmb10 == 1'b1)
		       nextstate = S11;
		  else 
		       nextstate = S1;
	 end
	 S2:begin
	     if(rmb1 == 1'b1)
		      nextstate = S3;
		  else if(rmb5 == 1'b1)
		       nextstate = S7;
		  else if(rmb10 == 1'b1)
		       nextstate = S12;
		  else 
		       nextstate = S2;
	 end
	 S3:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S4;
		  else if(rmb5 == 1'b1)
		       nextstate = S8;
		  else if(rmb10 == 1'b1)
		       nextstate = S13;
		  else 
		       nextstate = S3;
	 end
	 S4:begin
	     if(rmb1 == 1'b1)
		      nextstate = S5;
		  else if(rmb5 == 1'b1)
		       nextstate = S9;
		  else if(rmb10 == 1'b1)
		       nextstate = S14;
		  else 
		       nextstate = S4;
	 end
	 S5:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S6;
		  else if(rmb5 == 1'b1)
		       nextstate = S10;
		  else if(rmb10 == 1'b1)
		       nextstate = S15;
		  else 
		       nextstate = S5;
	 end
	 S6:begin
	     if(rmb1 == 1'b1)
		      nextstate = S7;
		  else if(rmb5 == 1'b1)
		       nextstate = S11;
		  else if(rmb10 == 1'b1)
		       nextstate = S16;
		  else 
		       nextstate = S6;
	 end
	 S7:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S8;
		  else if(rmb5 == 1'b1)
		       nextstate = S12;
		  else if(rmb10 == 1'b1)
		       nextstate = S17;
		  else 
		       nextstate = S7;
	 end
	 S8:begin
	     if(rmb1 == 1'b1)
		      nextstate = S9;
		  else if(rmb5 == 1'b1)
		       nextstate = S13;
		  else if(rmb10 == 1'b1)
		       nextstate = S18;
		  else 
		       nextstate = S8;
	 end
	 S9:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S10;
		  else if(rmb5 == 1'b1)
		       nextstate = S14;
		  else if(rmb10 == 1'b1)
		       nextstate = S19;
		  else 
		       nextstate = S9;
	 end
	 S10:begin
	     if(rmb1 == 1'b1)
		      nextstate = S11;
		  else if(rmb5 == 1'b1)
		       nextstate = S15;
		  else if(rmb10 == 1'b1)
		       nextstate = S20;
		  else 
		       nextstate = S10;
	 end
	 S11:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S12;
		  else if(rmb5 == 1'b1)
		       nextstate = S16;
		  else if(rmb10 == 1'b1)
		       nextstate = S21;
		  else 
		       nextstate = S11;
	 end
	 S12:begin
	     if(rmb1 == 1'b1)
		      nextstate = S13;
		  else if(rmb5 == 1'b1)
		       nextstate = S17;
		  else if(rmb10 == 1'b1)
		       nextstate = S22;
		  else 
		       nextstate = S12;
	 end
	 S13:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S14;
		  else if(rmb5 == 1'b1)
		       nextstate = S18;
		  else if(rmb10 == 1'b1)
		       nextstate = S23;
		  else 
		       nextstate = S13;
	 end
	 S14:begin
	     if(rmb1 == 1'b1)
		      nextstate = S15;
		  else if(rmb5 == 1'b1)
		       nextstate = S19;
		  else if(rmb10 == 1'b1)
		       nextstate = S24;
		  else 
		       nextstate = S14;
	 end
	 S15:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S16;
		  else if(rmb5 == 1'b1)
		       nextstate = S20;
		  else if(rmb10 == 1'b1)
		       nextstate = S25;
		  else 
		       nextstate = S15;
	 end
	 S16:begin
	     if(rmb1 == 1'b1)
		      nextstate = S17;
		  else if(rmb5 == 1'b1)
		       nextstate = S21;
		  else if(rmb10 == 1'b1)
		       nextstate = S26;
		  else 
		       nextstate = S16;
	 end
	 S17:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S18;
		  else if(rmb5 == 1'b1)
		       nextstate = S22;
		  else if(rmb10 == 1'b1)
		       nextstate = S27;
		  else 
		       nextstate = S17;
	 end
	 S18:begin
	     if(rmb1 == 1'b1)
		      nextstate = S19;
		  else if(rmb5 == 1'b1)
		       nextstate = S23;
		  else if(rmb10 == 1'b1)
		       nextstate = S28;
		  else 
		       nextstate = S18;
	 end
	 S19:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S20;
		  else if(rmb5 == 1'b1)
		       nextstate = S24;
		  else if(rmb10 == 1'b1)
		       nextstate = S29;
		  else 
		       nextstate = S19;
	 end
	 S20:begin
	     if(rmb1 == 1'b1)
		      nextstate = S21;
		  else if(rmb5 == 1'b1)
		       nextstate = S25;
		  else if(rmb10 == 1'b1)
		       nextstate = S30;
		  else 
		       nextstate = S20;
	 end
	 S21:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S22;
		  else if(rmb5 == 1'b1)
		       nextstate = S26;
		  else if(rmb10 == 1'b1)
		       nextstate = S31;
		  else 
		       nextstate = S21;
	 end
	 S22:begin
	     if(rmb1 == 1'b1)
		      nextstate = S23;
		  else if(rmb5 == 1'b1)
		       nextstate = S27;
		  else if(rmb10 == 1'b1)
		       nextstate = S22;
		  else 
		       nextstate = S22;
	 end
	 S23:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S24;
		  else if(rmb5 == 1'b1)
		       nextstate = S28;
		  else if(rmb10 == 1'b1)
		       nextstate = S23;
		  else 
		       nextstate = S23;
	 end
	 S24:begin
	     if(rmb1 == 1'b1)
		      nextstate = S25;
		  else if(rmb5 == 1'b1)
		       nextstate = S29;
		  else if(rmb10 == 1'b1)
		       nextstate = S24;
		  else 
		       nextstate = S24;
	 end
	 S25:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S26;
		  else if(rmb5 == 1'b1)
		       nextstate = S30;
		  else if(rmb10 == 1'b1)
		       nextstate = S25;
		  else 
		       nextstate = S25;
	 end
	 S26:begin
	     if(rmb1 == 1'b1)
		      nextstate = S27;
		  else if(rmb5 == 1'b1)
		       nextstate = S31;
		  else if(rmb10 == 1'b1)
		       nextstate = S26;
		  else 
		       nextstate = S26;
	 end
	 S27:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S28;
		  else if(rmb5 == 1'b1)
		       nextstate = S27;
		  else if(rmb10 == 1'b1)
		       nextstate = S27;
		  else 
		       nextstate = S27;
	 end
	 S28:begin
	     if(rmb1 == 1'b1)
		      nextstate = S29;
		  else if(rmb5 == 1'b1)
		       nextstate = S28;
		  else if(rmb10 == 1'b1)
		       nextstate = S28;
		  else 
		       nextstate = S28;
	 end
	 S29:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S30;
		  else if(rmb5 == 1'b1)
		       nextstate = S29;
		  else if(rmb10 == 1'b1)
		       nextstate = S29;
		  else 
		       nextstate = S29;
	 end
	 S30:begin
	     if(rmb1 == 1'b1)
		      nextstate = S31;
		  else if(rmb5 == 1'b1)
		       nextstate = S30;
		  else if(rmb10 == 1'b1)
		       nextstate = S30;
		  else 
		       nextstate = S30;
	 end
	 S31:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S31;
		  else if(rmb5 == 1'b1)
		       nextstate = S31;
		  else if(rmb10 == 1'b1)
		       nextstate = S31;
		  else 
		       nextstate = S31;
	 end
	 default:nextstate = S0;
	 endcase
end

assign a = state;

//always_ff@(posedge clk,posedge reset) begin
//    if(reset)
//	     a <= 0;
//	 else
//	     case(state)
//		  S0:   a <= 1;
//		  S1:   a <= 2;
//		  S2:   a <= 3;
//		  default a <= 23;
//		  endcase
//end
endmodule