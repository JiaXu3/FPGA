module VMachine_top(
    input clk,
	 input rmb1,   //投币,
	 input [7:0] choice,	 //选择商品
	 input ok,          //确认
	 input  [1:0] keys ,
	 input keys2,
	  output wire [55:0] LED,
//    output wire [13:0] sevenrmb1 ,//7段数码管显示投币额度 HEX[7]、HEX[6]
//    output wire [13:0] sevenconsume, //消费额	 HEX[4]、HEX[5]
//	 output wire [13:0] change,  //找零 HEX[0]
	 output [7:0]  led//货物灯
	 
);

reg [2:0] goodsNum[7:0];
initial begin
goodsNum[0] = 3'd7;
goodsNum[1] = 3'd7;
goodsNum[2] = 3'd7;
goodsNum[3] = 3'd7;
goodsNum[4] = 3'd7;
goodsNum[5] = 3'd7;
goodsNum[6] = 3'd7;
goodsNum[7] = 3'd7;
end

VMachine VMachine_top(
    .clk(clk),
	 .rmb1(rmb1),
	 .choice(choice),
	 .ok(ok),
	 .keys(keys),
	 .keys2(keys2),
	 .LED(LED),
//	 .sevenrmb1(sevenrmb1),
//	 .sevenconsume(sevenconsume),
//	 .change(change),
	 .led(led)	 
);

endmodule