`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2019 09:37:20 AM
// Design Name: 
// Module Name: image_window_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module image_window_tb();



reg clk;
reg rst; 

reg shift_enable; 

reg [7:0] uart_pixel_test; 

reg [7:0] sr_line_0_in; 
reg [7:0] sr_line_1_in; 
reg [7:0] sr_line_2_in; 
reg [7:0] sr_line_3_in; 
reg [7:0] sr_line_4_in; 
reg [7:0] sr_line_5_in; 


wire [7:0] pixel_to_line_buf_test; 

wire [7:0] im_window_00;
wire [7:0] im_window_01;
wire [7:0] im_window_02;
wire [7:0] im_window_03;
wire [7:0] im_window_04;
wire [7:0] im_window_05;
wire [7:0] im_window_06;

wire [7:0] im_window_10;
wire [7:0] im_window_11;
wire [7:0] im_window_12;
wire [7:0] im_window_13;
wire [7:0] im_window_14;
wire [7:0] im_window_15;
wire [7:0] im_window_16;

wire [7:0] im_window_20;
wire [7:0] im_window_21;
wire [7:0] im_window_22;
wire [7:0] im_window_23;
wire [7:0] im_window_24;
wire [7:0] im_window_25;
wire [7:0] im_window_26;

wire [7:0] im_window_30;
wire [7:0] im_window_31;
wire [7:0] im_window_32;
wire [7:0] im_window_33;
wire [7:0] im_window_34;
wire [7:0] im_window_35;
wire [7:0] im_window_36;

wire [7:0] im_window_40;
wire [7:0] im_window_41;
wire [7:0] im_window_42;
wire [7:0] im_window_43;
wire [7:0] im_window_44;
wire [7:0] im_window_45;
wire [7:0] im_window_46;

wire [7:0] im_window_50;
wire [7:0] im_window_51;
wire [7:0] im_window_52;
wire [7:0] im_window_53;
wire [7:0] im_window_54;
wire [7:0] im_window_55;
wire [7:0] im_window_56;

wire [7:0] im_window_60;
wire [7:0] im_window_61;
wire [7:0] im_window_62;
wire [7:0] im_window_63;
wire [7:0] im_window_64;
wire [7:0] im_window_65;
wire [7:0] im_window_66;



image_window uut

(
.clk(clk),
.rst(rst),

.shift_enable(shift_enable),
.uart_pixel_in(uart_pixel_test),

.sr_line_0_in(sr_line_0_in),
.sr_line_1_in(sr_line_1_in),
.sr_line_2_in(sr_line_2_in),
.sr_line_3_in(sr_line_3_in),
.sr_line_4_in(sr_line_4_in),
.sr_line_5_in(sr_line_5_in),


.im_window_00(im_window_00),
.im_window_01(im_window_01),
.im_window_02(im_window_02),
.im_window_03(im_window_03),
.im_window_04(im_window_04),
.im_window_05(im_window_05),
.im_window_06(im_window_06),

.im_window_10(im_window_10),
.im_window_11(im_window_11),
.im_window_12(im_window_12),
.im_window_13(im_window_13),
.im_window_14(im_window_14),
.im_window_15(im_window_15),
.im_window_16(im_window_16),

.im_window_20(im_window_20),
.im_window_21(im_window_21),
.im_window_22(im_window_22),
.im_window_23(im_window_23),
.im_window_24(im_window_24),
.im_window_25(im_window_25),
.im_window_26(im_window_26),

.im_window_30(im_window_30),
.im_window_31(im_window_31),
.im_window_32(im_window_32),
.im_window_33(im_window_33),
.im_window_34(im_window_34),
.im_window_35(im_window_35),
.im_window_36(im_window_36),

.im_window_40(im_window_40),
.im_window_41(im_window_41),
.im_window_42(im_window_42),
.im_window_43(im_window_43),
.im_window_44(im_window_44),
.im_window_45(im_window_45),
.im_window_46(im_window_46),

.im_window_50(im_window_50),
.im_window_51(im_window_51),
.im_window_52(im_window_52),
.im_window_53(im_window_53),
.im_window_54(im_window_54),
.im_window_55(im_window_55),
.im_window_56(im_window_56),

.im_window_60(im_window_60),
.im_window_61(im_window_61),
.im_window_62(im_window_62),
.im_window_63(im_window_63),
.im_window_64(im_window_64),
.im_window_65(im_window_65),
.im_window_66(im_window_66),

.pixel_to_line_buf(pixel_to_line_buf_test)

);





/* Generate Clock and Reset Signals */
initial forever 
begin
clk = 0; 
#5; 
clk = 1; 
#5; 
end

initial 
begin
rst = 0; 
#400;
rst = 1; 
end 

/*Pulse shift enable to test shifting functionality*/

initial forever begin
shift_enable = 0; 
#5; 
shift_enable = 1; 
#5; 
shift_enable = 0; 
#3000; 
end 

/*Increment all "line buffer" inputs by 1 every time the clock and shift_enable are high, makes it easy to see if the shift registers
are doing what they are supposed to"
*/

always @ (posedge clk) 
    begin
        
        if (!rst) 
            begin
                sr_line_0_in <= 0;
                sr_line_1_in <= 1; 
                sr_line_2_in <= 2;
                sr_line_3_in <= 3;
                sr_line_4_in <= 4;
                sr_line_5_in <= 5;
                uart_pixel_test <= 6; 
                
            end 
        
        else 
            begin
                
                if (shift_enable)
                    begin
                    sr_line_0_in <= sr_line_0_in + 1; 
                    sr_line_1_in <= sr_line_1_in + 1;
                    sr_line_2_in <= sr_line_2_in + 1;
                    sr_line_3_in <= sr_line_3_in + 1;
                    sr_line_4_in <= sr_line_4_in + 1;
                    sr_line_5_in <= sr_line_5_in + 1;
                    uart_pixel_test <= uart_pixel_test + 1; 
                    end
            
            end //not reset check end         
         
    end 
            

endmodule
