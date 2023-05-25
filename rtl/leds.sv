module leds(input logic [3:0] d,
            input logic commodity,
            output logic led
);
always_comb begin
    if(commodity && d>0)
	 led = 1;
	 else
	 led =0;
	 
end


endmodule