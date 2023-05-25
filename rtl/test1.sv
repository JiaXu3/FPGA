module test1(
             input logic clk,
             input logic ok,
				 input rmb1,rmb5,rmb10,
				 input logic reset1, //币数复位
				 input logic [5:0] reset,   //商品增加到最大
             input logic [5:0] commodity, //商品
             input logic s,               //数码管显示选择
             output logic [6:0] segments0,segments1,segments2,segments3,segments4,segments5,
				 output logic [5:0] leds
				 );

logic [3:0] y0,y1,y2,y3,y4,y5;
logic [3:0] d [5:0][1:0];
logic [4:0] a,a1,a_b;


//投币
money money1(rmb1,rmb5,rmb10,clk,reset1,a_b);

//商品价格运算
Algo Algo0(leds,a);

//币减商品
sub_rmb sub_rmb0(reset1,a,a_b,ok,a1);
 
//商品余量
sub_ok sub_ok0(leds[0],reset[0],ok,d[0][0]);
sub_ok sub_ok1(leds[1],reset[1],ok,d[1][0]);
sub_ok sub_ok2(leds[2],reset[2],ok,d[2][0]);
sub_ok sub_ok3(leds[3],reset[3],ok,d[3][0]);
sub_ok sub_ok4(leds[4],reset[4],ok,d[4][0]);
sub_ok sub_ok5(leds[5],reset[5],ok,d[5][0]);

//商品显示
leds leds0(d[0][0],commodity[0],leds[0]);
leds leds1(d[1][0],commodity[1],leds[1]);
leds leds2(d[2][0],commodity[2],leds[2]);
leds leds3(d[3][0],commodity[3],leds[3]);
leds leds4(d[4][0],commodity[4],leds[4]);
leds leds5(d[5][0],commodity[5],leds[5]);

//544译码
decoder5_4_4 decoder0(a,d[0][1],d[1][1]);
decoder5_4_4 decoder1(a1,d[2][1],d[3][1]);
decoder5_4_4 decoder2(a_b,d[4][1],d[5][1]);

//2选1
mux2 mux2_0(d[0][0],d[0][1],s,y0);
mux2 mux2_1(d[1][0],d[1][1],s,y1);
mux2 mux2_2(d[2][0],d[2][1],s,y2);
mux2 mux2_3(d[3][0],d[3][1],s,y3);
mux2 mux2_4(d[4][0],d[4][1],s,y4);
mux2 mux2_5(d[5][0],d[5][1],s,y5);

//数码管
sevenseg sevenseg0(y0,segments0); 
sevenseg sevenseg1(y1,segments1);
sevenseg sevenseg2(y2,segments2);
sevenseg sevenseg3(y3,segments3);
sevenseg sevenseg4(y4,segments4);
sevenseg sevenseg5(y5,segments5);

endmodule