module sub_ok(input logic commodity,
           input logic reset,
           input logic ok,
			  output logic [3:0] d0);

always_ff@(posedge ok or posedge reset) begin
    if(reset)
	 d0 <= 8;
	 else if(commodity)
	 d0 <= d0 - 1 ;
end

endmodule