module Algo #(parameter N = 6)
             (input logic [N-1:0] commodity,
				 output logic [4:0] a);
logic [4:0] price [5:0];
assign price[0] = 2;
assign price[1] = 8;
assign price[2] = 3;
assign price[3] = 10;
assign price[4] = 4;
assign price[5] = 5;

logic [4:0] pricesum [N-1:0];

always_comb begin
    for(integer j = 0; j<N; j = j+1) begin
	 pricesum[j] = commodity[j] ? price[j] : 0;   
	 end
end
always_comb begin
    for(integer j = 0;j<N;j=j+1) begin
	 if(j == 0)
	 a = pricesum[0];
	 else
	 a = a + pricesum[j];
	 end
end
endmodule