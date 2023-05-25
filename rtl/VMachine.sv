module VMachine(
    input clk,
	 input rmb1,   //投币,key[0]
	
	 input ok,          //确认key[3]
	 
	 input [7:0] choice,	 //选择商品
	 
	 input   [1:0] keys  ,
	 input keys2,
	 
	 output wire [55:0] LED,//[55:0]显示剩余商品量[55:42]显示投币数额，[41:28]显示消费额，[27:14]不显示，[13:0]显示找零
	 
//    output wire [13:0] sevenrmb1 ,//7段数码管显示投币额度 HEX[7]、HEX[6]
//    output wire [13:0] sevenconsume, //消费额	 HEX[4]、HEX[5]
//	 output wire [13:0] change,  //找零 HEX[0]
	 output [7:0]  led //货物灯
	 );



reg [3:0] goodsValue[7:0]; //给8种商品赋值
initial begin
 goodsValue[0] = 4'd1;
 goodsValue[1] = 4'd3;
 goodsValue[2] = 4'd4;
 goodsValue[3] = 4'd2;
 goodsValue[4] = 4'd1;
 goodsValue[5] = 4'd2;
 goodsValue[6] = 4'd1;
 goodsValue[7] = 4'd2;
end
	
reg [2:0] goodsNum[7:0]; //8种商品余量
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

reg [7:0] LED7_0 [7:0];  //7个显示商品剩余寄存器
//reg [7:0] LED6;
//reg [7:0] LED5;
//reg [7:0] LED4;
//reg [7:0] LED3;
//reg [7:0] LED2;
//reg [7:0] LED1;
//reg [7:0] LED0;


reg [13:0] sevenrmb_r; //投币量寄存器
reg [13:0] change_r;   //找零寄存器
reg [13:0] sevenconsume_r; //消费额寄存器

reg [4:0] value = 5'b0000; //找零值
reg [4:0] rmbSum = 5'b00000;   //投币额度
reg [4:0] choicesum = 5'b00000; //已选额度
reg [7:0] choiceOk = 8'b0000_0000; //已选中商品

reg flag = 0; //数码管显示，0显示投币消费额，1显示商品剩余

always@(*)begin               //8种商品的余量与数码管连接
    for(integer j=0; j<8; j++)begin
    case(goodsNum[j])
	 3'd0:  LED7_0[j] = 7'b100_0000;
	 3'd1:  LED7_0[j] = 7'b111_1001;
	 3'd2:  LED7_0[j] = 7'b010_0100;
	 3'd3:  LED7_0[j] = 7'b011_0000;
	 3'd4:  LED7_0[j] = 7'b001_1001;
	 3'd5:  LED7_0[j] = 7'b001_0010;
	 3'd6:  LED7_0[j] = 7'b000_0010;
	 3'd7:  LED7_0[j] = 7'b111_1000;
	 default: LED7_0[j] = 7'b100_0000;
	 endcase
	 end
end

always@(negedge keys2)begin    //数码管显示标志
    if(!keys2)begin
    flag <= !flag;
	 end
end

always@(*)begin
    if(flag)begin
	 LED[55:49] = LED7_0[7];
	 LED[48:42] = LED7_0[6];
	 LED[41:35] = LED7_0[5];
	 LED[34:28] = LED7_0[4];
	 LED[27:21] = LED7_0[3];
    LED[20:14] = LED7_0[2];
	 LED[13:7]  = LED7_0[1];
	 LED[6:0]   = LED7_0[0];
	 end
	 else begin
	 LED[55:42] = sevenrmb_r;
	 LED[41:28] = sevenconsume_r;
	 LED[27:14] = 14'b000_0000_000_0000;
	 LED[13:0]  = change_r;
	 end
end

always@(negedge keys[0] or negedge keys[1])begin
    if(!keys[0])begin
	 rmbSum <= rmbSum + 1'b1;
	 end
	 else if(!keys[1])begin
	 value <= rmbSum - choicesum; //找零
	 rmbSum <= 0;  //投币量为零
	 end
end
always@(*)begin
    case(rmbSum)
		5'd0   : sevenrmb_r = 14'b111_1111_100_0000;
		5'd1   : sevenrmb_r = 14'b111_1111_111_1001;
		5'd2   : sevenrmb_r = 14'b111_1111_010_0100;
		5'd3   : sevenrmb_r = 14'b111_1111_011_0000;
		5'd4   : sevenrmb_r = 14'b111_1111_001_1001;
		5'd5   : sevenrmb_r = 14'b111_1111_001_0010;
		5'd6   : sevenrmb_r = 14'b111_1111_000_0010;
		5'd7   : sevenrmb_r = 14'b111_1111_111_1000;
		5'd8   : sevenrmb_r = 14'b111_1111_000_0000;
		5'd9   : sevenrmb_r = 14'b111_1111_001_0000;
		5'd10  : sevenrmb_r = 14'b111_1001_100_0000;
		5'd11  : sevenrmb_r = 14'b111_1001_111_1001;
		5'd12  : sevenrmb_r = 14'b111_1001_010_0100;
		5'd13  : sevenrmb_r = 14'b111_1001_011_0000;
		5'd14  : sevenrmb_r = 14'b111_1001_001_1001;
		5'd15  : sevenrmb_r = 14'b111_1001_001_0010;
		5'd16  : sevenrmb_r = 14'b111_1001_000_0010;
		5'd17  : sevenrmb_r = 14'b111_1001_111_1000;
		5'd18  : sevenrmb_r = 14'b111_1001_000_0000;
		5'd19  : sevenrmb_r = 14'b111_1001_001_0000;
		default: sevenrmb_r = 14'b100_0000_100_0000;
	     endcase
end
//assign sevenrmb1 = sevenrmb_r;

always@(*)begin
case(value)
		5'd0   : change_r = 14'b111_1111_100_0000;
		5'd1   : change_r = 14'b111_1111_111_1001;
		5'd2   : change_r = 14'b111_1111_010_0100;
		5'd3   : change_r = 14'b111_1111_011_0000;
		5'd4   : change_r = 14'b111_1111_001_1001;
		5'd5   : change_r = 14'b111_1111_001_0010;
		5'd6   : change_r = 14'b111_1111_000_0010;
		5'd7   : change_r = 14'b111_1111_111_1000;
		5'd8   : change_r = 14'b111_1111_000_0000;
		5'd9   : change_r = 14'b111_1111_001_0000;
		5'd10  : change_r = 14'b111_1001_100_0000;
		5'd11  : change_r = 14'b111_1001_111_1001;
		5'd12  : change_r = 14'b111_1001_010_0100;
		5'd13  : change_r = 14'b111_1001_011_0000;
		5'd14  : change_r = 14'b111_1001_001_1001;
		5'd15  : change_r = 14'b111_1001_001_0010;
		5'd16  : change_r = 14'b111_1001_000_0010;
		5'd17  : change_r = 14'b111_1001_111_1000;
		5'd18  : change_r = 14'b111_1001_000_0000;
		5'd19  : change_r = 14'b111_1001_001_0000;
		default: change_r	= 14'b100_0000_100_0000;
	 endcase
end
//assign change = change_r;


 
 always@(choice)begin
	 choicesum <= 5'b0000;
	 for(integer j=0;j<8;j++)begin
	     if(choice[j] == 1 && goodsNum[j] > 3'd0)begin
//		  if(goodsNum[j] >= 3'd1)begin
		  choiceOk[j] <= choice[j];  //选中商品
		  choicesum <= choicesum + goodsValue[j]; //加钱
		  goodsNum[j] <= goodsNum[j] - 1'b1; //商品数量减一
//		  end
		  end
	 end
end
assign led = choice;

always@(*)begin
 case(choicesum)
	     5'd0   :sevenconsume_r = 14'b111_1111_100_0000;
		  5'd1   :sevenconsume_r = 14'b111_1111_111_1001;
		  5'd2   :sevenconsume_r = 14'b111_1111_010_0100;
		  5'd3   :sevenconsume_r = 14'b111_1111_011_0000;
		  5'd4   :sevenconsume_r = 14'b111_1111_001_1001;
		  5'd5   :sevenconsume_r = 14'b111_1111_001_0010;
		  5'd6   :sevenconsume_r = 14'b111_1111_000_0010;
		  5'd7   :sevenconsume_r = 14'b111_1111_111_1000;
		  5'd8   :sevenconsume_r = 14'b111_1111_000_0000;
		  5'd9   :sevenconsume_r = 14'b111_1111_001_0000;
		  5'd10  :sevenconsume_r = 14'b111_1001_100_0000;
		  5'd11  :sevenconsume_r = 14'b111_1001_111_1001;
		  5'd12  :sevenconsume_r = 14'b111_1001_010_0100;
		  5'd13  :sevenconsume_r = 14'b111_1001_011_0000;
		  5'd14  :sevenconsume_r = 14'b111_1001_001_1001;
		  5'd15  :sevenconsume_r = 14'b111_1001_001_0010;
		  5'd16  :sevenconsume_r = 14'b111_1001_000_0010;
		  5'd17  :sevenconsume_r = 14'b111_1001_111_1000;
		  5'd18  :sevenconsume_r = 14'b111_1001_000_0000;
		  5'd19  :sevenconsume_r = 14'b111_1001_001_0000;
		  default:sevenconsume_r = 14'b100_0000_100_0000;
	 endcase
end
//assign 	sevenconsume = sevenconsume_r;  
	 
endmodule



//always@(posedge clk)begin
//    if(keys == 2'b01)begin	 //key[2]按下
//     #1	
//    	rmbSum = rmbSum + 1'b1;
//        case(rmbSum)
//		5'd0   : sevenrmb1 = 14'b111_1111_100_0000;
//		5'd1   : sevenrmb1 = 14'b111_1111_111_1001;
//		5'd2   : sevenrmb1 = 14'b111_1111_010_0100;
//		5'd3   : sevenrmb1 = 14'b111_1111_011_0000;
//		5'd4   : sevenrmb1 = 14'b111_1111_001_1001;
//		5'd5   : sevenrmb1 = 14'b111_1111_001_0010;
//		5'd6   : sevenrmb1 = 14'b111_1111_000_0010;
//		5'd7   : sevenrmb1 = 14'b111_1111_111_1000;
//		5'd8   : sevenrmb1 = 14'b111_1111_000_0000;
//		5'd9   : sevenrmb1 = 14'b111_1111_001_0000;
//		5'd10  : sevenrmb1 = 14'b111_1001_100_0000;
//		5'd11  : sevenrmb1 = 14'b111_1001_111_1001;
//		5'd12  : sevenrmb1 = 14'b111_1001_010_0100;
//		5'd13  : sevenrmb1 = 14'b111_1001_011_0000;
//		5'd14  : sevenrmb1 = 14'b111_1001_001_1001;
//		5'd15  : sevenrmb1 = 14'b111_1001_001_0010;
//		5'd16  : sevenrmb1 = 14'b111_1001_000_0010;
//		5'd17  : sevenrmb1 = 14'b111_1001_111_1000;
//		5'd18  : sevenrmb1 = 14'b111_1001_000_0000;
//		5'd19  : sevenrmb1 = 14'b111_1001_001_0000;
//		default: sevenrmb1 = 14'b100_0000_100_0000;
//	     endcase
//	 end
//	 else if(keys == 2'b10)begin
//	 	 value = rmbSum - choicesum;
//	 case(value)
//		5'd0   : change = 14'b111_1111_100_0000;
//		5'd1   : change = 14'b111_1111_111_1001;
//		5'd2   : change = 14'b111_1111_010_0100;
//		5'd3   : change = 14'b111_1111_011_0000;
//		5'd4   : change = 14'b111_1111_001_1001;
//		5'd5   : change = 14'b111_1111_001_0010;
//		5'd6   : change = 14'b111_1111_000_0010;
//		5'd7   : change = 14'b111_1111_111_1000;
//		5'd8   : change = 14'b111_1111_000_0000;
//		5'd9   : change = 14'b111_1111_001_0000;
//		5'd10  : change = 14'b111_1001_100_0000;
//		5'd11  : change = 14'b111_1001_111_1001;
//		5'd12  : change = 14'b111_1001_010_0100;
//		5'd13  : change = 14'b111_1001_011_0000;
//		5'd14  : change = 14'b111_1001_001_1001;
//		5'd15  : change = 14'b111_1001_001_0010;
//		5'd16  : change = 14'b111_1001_000_0010;
//		5'd17  : change = 14'b111_1001_111_1000;
//		5'd18  : change = 14'b111_1001_000_0000;
//		5'd19  : change = 14'b111_1001_001_0000;
//		default: change = 14'b100_0000_100_0000;
//	 endcase
//	 #2
//	 change = 14'b100_0000_100_0000;
//	 sevenrmb1 = 14'b100_0000_100_0000;
//	 end
//end



//always@(negedge rmb1)begin
//    if(!rmb1)begin
//        rmbSum = rmbSum + 1'b1;
//        case(rmbSum)
//		5'd0   : sevenrmb1 = 14'b111_1111_100_0000;
//		5'd1   : sevenrmb1 = 14'b111_1111_111_1001;
//		5'd2   : sevenrmb1 = 14'b111_1111_010_0100;
//		5'd3   : sevenrmb1 = 14'b111_1111_011_0000;
//		5'd4   : sevenrmb1 = 14'b111_1111_001_1001;
//		5'd5   : sevenrmb1 = 14'b111_1111_001_0010;
//		5'd6   : sevenrmb1 = 14'b111_1111_000_0010;
//		5'd7   : sevenrmb1 = 14'b111_1111_111_1000;
//		5'd8   : sevenrmb1 = 14'b111_1111_000_0000;
//		5'd9   : sevenrmb1 = 14'b111_1111_001_0000;
//		5'd10  : sevenrmb1 = 14'b111_1001_100_0000;
//		5'd11  : sevenrmb1 = 14'b111_1001_111_1001;
//		5'd12  : sevenrmb1 = 14'b111_1001_010_0100;
//		5'd13  : sevenrmb1 = 14'b111_1001_011_0000;
//		5'd14  : sevenrmb1 = 14'b111_1001_001_1001;
//		5'd15  : sevenrmb1 = 14'b111_1001_001_0010;
//		5'd16  : sevenrmb1 = 14'b111_1001_000_0010;
//		5'd17  : sevenrmb1 = 14'b111_1001_111_1000;
//		5'd18  : sevenrmb1 = 14'b111_1001_000_0000;
//		5'd19  : sevenrmb1 = 14'b111_1001_001_0000;
//		default: sevenrmb1 = 14'b100_0000_100_0000;
//	     endcase 
//    end
//
//end
//
//always@(negedge ok)begin
//    if(!ok)begin
//    value = rmbSum - choicesum;
//	 case(value)
//		5'd0   : change = 14'b111_1111_100_0000;
//		5'd1   : change = 14'b111_1111_111_1001;
//		5'd2   : change = 14'b111_1111_010_0100;
//		5'd3   : change = 14'b111_1111_011_0000;
//		5'd4   : change = 14'b111_1111_001_1001;
//		5'd5   : change = 14'b111_1111_001_0010;
//		5'd6   : change = 14'b111_1111_000_0010;
//		5'd7   : change = 14'b111_1111_111_1000;
//		5'd8   : change = 14'b111_1111_000_0000;
//		5'd9   : change = 14'b111_1111_001_0000;
//		5'd10  : change = 14'b111_1001_100_0000;
//		5'd11  : change = 14'b111_1001_111_1001;
//		5'd12  : change = 14'b111_1001_010_0100;
//		5'd13  : change = 14'b111_1001_011_0000;
//		5'd14  : change = 14'b111_1001_001_1001;
//		5'd15  : change = 14'b111_1001_001_0010;
//		5'd16  : change = 14'b111_1001_000_0010;
//		5'd17  : change = 14'b111_1001_111_1000;
//		5'd18  : change = 14'b111_1001_000_0000;
//		5'd19  : change = 14'b111_1001_001_0000;
//		default: change = 14'b100_0000_100_0000;
//	 endcase
//	 #5
//	 change = 14'b100_0000_100_0000;
//	 end
//end
