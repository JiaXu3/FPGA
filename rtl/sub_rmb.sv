module sub_rmb #(parameter N = 5)
            (input logic reset,
				 input logic [N-1:0] a,
				 input logic [N-1:0] b,
				 input logic ok,
				 output logic [N-1:0] a1
				 );
always_ff@(posedge ok)
    if(reset) a1 <= 0;
	 else if(b >= a) 
    a1 <= b - a;
    else
    a1 <= 0;
	 
endmodule