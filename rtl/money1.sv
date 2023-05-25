//三段式状态机
module money1(input logic rmb1,rmb5,rmb10,
             input logic clk,
				 input logic reset,
				 output logic [4:0] a);
typedef enum logic [4:0] {S0=5'd0,S1=5'd1,S2=5'd2,S3=5'd3,S4=5'd4,S5=5'd5,S6=5'd6,S7=5'd7,
                          S8=5'd8,S9=5'd9,S10=5'd10,S11=5'd11,S12=5'd12,S13=5'd13,S14=5'd14,S15=5'd15,
								  S16=5'd16,S17=5'd17,S18=5'd18,S19=5'd19,S20=5'd20,S21=5'd21,S22=5'd22,S23=5'd23,
								  S24=5'd24,S25=5'd25,S26=5'd26,S27=5'd27,S28=5'd28,S29=5'd29,S30=5'd30,S31=5'd31} statetype;
statetype state,nextstate;	


			 
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
		  else 
		       nextstate = S1;
	 end
	 S2:begin
	     if(rmb1 == 1'b1)
		      nextstate = S3;
		  else if(rmb5 == 1'b1)
		       nextstate = S7;
		  
		  else 
		       nextstate = S2;
	 end
	 S3:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S4;
		  else if(rmb5 == 1'b1)
		       nextstate = S8;
		  
		  else 
		       nextstate = S3;
	 end
	 S4:begin
	     if(rmb1 == 1'b1)
		      nextstate = S5;
		  else if(rmb5 == 1'b1)
		       nextstate = S9;
		  
		  else 
		       nextstate = S4;
	 end
	 S5:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S6;
		  else if(rmb5 == 1'b1)
		       nextstate = S10;
		  
		  else 
		       nextstate = S5;
	 end
	 S6:begin
	     if(rmb1 == 1'b1)
		      nextstate = S7;
		  
		  else 
		       nextstate = S6;
	 end
	 S7:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S8;
		  
		  else 
		       nextstate = S7;
	 end
	 S8:begin
	     if(rmb1 == 1'b1)
		      nextstate = S9;
		  
		  else 
		       nextstate = S8;
	 end
	 S9:begin
	     if(!rmb1 == 1'b1)
		      nextstate = S10;
		  
		  else 
		       nextstate = S9;
	 end
	 S10:begin
	     if(rmb1 == 1'b1)
		      nextstate = S10;
		  else if(rmb5 == 1'b1)
		       nextstate = S10;
		  else if(rmb10 == 1'b1)
		       nextstate = S10;
		  else 
		       nextstate = S10;
	 end
	 default:nextstate = S0;
	 endcase
end

assign a = state;


endmodule