//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Jan 21 14:25:31 2020
//Host        : DESKTOP-Q6SEU8V running 64-bit major release  (build 9200)
//Command     : generate_target inner_module_test.bd
//Design      : inner_module_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "inner_module_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=inner_module_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "inner_module_test.hwdef" *) 
module inner_module_test
   (clk_0,
    fm_out_0,
    kernel_full_0,
    kernel_write_enable_0,
    new_kernel_0,
    out_valid_0,
    rst_0,
    shift_enable_0,
    sop_enable_0,
    sr_line_0_in_0,
    sr_line_1_in_0,
    sr_line_2_in_0,
    sr_line_3_in_0,
    sr_line_4_in_0,
    sr_line_5_in_0,
    uart_pixel_in_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN inner_module_test_clk_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk_0;
  output [15:0]fm_out_0;
  output kernel_full_0;
  input kernel_write_enable_0;
  input [7:0]new_kernel_0;
  output out_valid_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, POLARITY ACTIVE_LOW" *) input rst_0;
  input shift_enable_0;
  input sop_enable_0;
  input [7:0]sr_line_0_in_0;
  input [7:0]sr_line_1_in_0;
  input [7:0]sr_line_2_in_0;
  input [7:0]sr_line_3_in_0;
  input [7:0]sr_line_4_in_0;
  input [7:0]sr_line_5_in_0;
  input [7:0]uart_pixel_in_0;

  wire clk_0_1;
  wire [7:0]image_window_0_im_window_00;
  wire [7:0]image_window_0_im_window_01;
  wire [7:0]image_window_0_im_window_02;
  wire [7:0]image_window_0_im_window_03;
  wire [7:0]image_window_0_im_window_04;
  wire [7:0]image_window_0_im_window_05;
  wire [7:0]image_window_0_im_window_06;
  wire [7:0]image_window_0_im_window_10;
  wire [7:0]image_window_0_im_window_11;
  wire [7:0]image_window_0_im_window_12;
  wire [7:0]image_window_0_im_window_13;
  wire [7:0]image_window_0_im_window_14;
  wire [7:0]image_window_0_im_window_15;
  wire [7:0]image_window_0_im_window_16;
  wire [7:0]image_window_0_im_window_20;
  wire [7:0]image_window_0_im_window_21;
  wire [7:0]image_window_0_im_window_22;
  wire [7:0]image_window_0_im_window_23;
  wire [7:0]image_window_0_im_window_24;
  wire [7:0]image_window_0_im_window_25;
  wire [7:0]image_window_0_im_window_26;
  wire [7:0]image_window_0_im_window_30;
  wire [7:0]image_window_0_im_window_31;
  wire [7:0]image_window_0_im_window_32;
  wire [7:0]image_window_0_im_window_33;
  wire [7:0]image_window_0_im_window_34;
  wire [7:0]image_window_0_im_window_35;
  wire [7:0]image_window_0_im_window_36;
  wire [7:0]image_window_0_im_window_40;
  wire [7:0]image_window_0_im_window_41;
  wire [7:0]image_window_0_im_window_42;
  wire [7:0]image_window_0_im_window_43;
  wire [7:0]image_window_0_im_window_44;
  wire [7:0]image_window_0_im_window_45;
  wire [7:0]image_window_0_im_window_46;
  wire [7:0]image_window_0_im_window_50;
  wire [7:0]image_window_0_im_window_51;
  wire [7:0]image_window_0_im_window_52;
  wire [7:0]image_window_0_im_window_53;
  wire [7:0]image_window_0_im_window_54;
  wire [7:0]image_window_0_im_window_55;
  wire [7:0]image_window_0_im_window_56;
  wire [7:0]image_window_0_im_window_60;
  wire [7:0]image_window_0_im_window_61;
  wire [7:0]image_window_0_im_window_62;
  wire [7:0]image_window_0_im_window_63;
  wire [7:0]image_window_0_im_window_64;
  wire [7:0]image_window_0_im_window_65;
  wire [7:0]image_window_0_im_window_66;
  wire kernel_bank_0_kernel_full;
  wire [7:0]kernel_bank_0_kernel_reg_0;
  wire [7:0]kernel_bank_0_kernel_reg_1;
  wire [7:0]kernel_bank_0_kernel_reg_10;
  wire [7:0]kernel_bank_0_kernel_reg_11;
  wire [7:0]kernel_bank_0_kernel_reg_12;
  wire [7:0]kernel_bank_0_kernel_reg_13;
  wire [7:0]kernel_bank_0_kernel_reg_14;
  wire [7:0]kernel_bank_0_kernel_reg_15;
  wire [7:0]kernel_bank_0_kernel_reg_16;
  wire [7:0]kernel_bank_0_kernel_reg_17;
  wire [7:0]kernel_bank_0_kernel_reg_18;
  wire [7:0]kernel_bank_0_kernel_reg_19;
  wire [7:0]kernel_bank_0_kernel_reg_2;
  wire [7:0]kernel_bank_0_kernel_reg_20;
  wire [7:0]kernel_bank_0_kernel_reg_21;
  wire [7:0]kernel_bank_0_kernel_reg_22;
  wire [7:0]kernel_bank_0_kernel_reg_23;
  wire [7:0]kernel_bank_0_kernel_reg_24;
  wire [7:0]kernel_bank_0_kernel_reg_25;
  wire [7:0]kernel_bank_0_kernel_reg_26;
  wire [7:0]kernel_bank_0_kernel_reg_27;
  wire [7:0]kernel_bank_0_kernel_reg_28;
  wire [7:0]kernel_bank_0_kernel_reg_29;
  wire [7:0]kernel_bank_0_kernel_reg_3;
  wire [7:0]kernel_bank_0_kernel_reg_30;
  wire [7:0]kernel_bank_0_kernel_reg_31;
  wire [7:0]kernel_bank_0_kernel_reg_32;
  wire [7:0]kernel_bank_0_kernel_reg_33;
  wire [7:0]kernel_bank_0_kernel_reg_34;
  wire [7:0]kernel_bank_0_kernel_reg_35;
  wire [7:0]kernel_bank_0_kernel_reg_36;
  wire [7:0]kernel_bank_0_kernel_reg_37;
  wire [7:0]kernel_bank_0_kernel_reg_38;
  wire [7:0]kernel_bank_0_kernel_reg_39;
  wire [7:0]kernel_bank_0_kernel_reg_4;
  wire [7:0]kernel_bank_0_kernel_reg_40;
  wire [7:0]kernel_bank_0_kernel_reg_41;
  wire [7:0]kernel_bank_0_kernel_reg_42;
  wire [7:0]kernel_bank_0_kernel_reg_43;
  wire [7:0]kernel_bank_0_kernel_reg_44;
  wire [7:0]kernel_bank_0_kernel_reg_45;
  wire [7:0]kernel_bank_0_kernel_reg_46;
  wire [7:0]kernel_bank_0_kernel_reg_47;
  wire [7:0]kernel_bank_0_kernel_reg_48;
  wire [7:0]kernel_bank_0_kernel_reg_5;
  wire [7:0]kernel_bank_0_kernel_reg_6;
  wire [7:0]kernel_bank_0_kernel_reg_7;
  wire [7:0]kernel_bank_0_kernel_reg_8;
  wire [7:0]kernel_bank_0_kernel_reg_9;
  wire kernel_write_enable_0_1;
  wire [7:0]new_kernel_0_1;
  wire rst_0_1;
  wire shift_enable_0_1;
  wire sop_enable_0_1;
  wire [15:0]sop_module_0_fm_out;
  wire sop_module_0_out_valid;
  wire [7:0]sr_line_0_in_0_1;
  wire [7:0]sr_line_1_in_0_1;
  wire [7:0]sr_line_2_in_0_1;
  wire [7:0]sr_line_3_in_0_1;
  wire [7:0]sr_line_4_in_0_1;
  wire [7:0]sr_line_5_in_0_1;
  wire [7:0]uart_pixel_in_0_1;

  assign clk_0_1 = clk_0;
  assign fm_out_0[15:0] = sop_module_0_fm_out;
  assign kernel_full_0 = kernel_bank_0_kernel_full;
  assign kernel_write_enable_0_1 = kernel_write_enable_0;
  assign new_kernel_0_1 = new_kernel_0[7:0];
  assign out_valid_0 = sop_module_0_out_valid;
  assign rst_0_1 = rst_0;
  assign shift_enable_0_1 = shift_enable_0;
  assign sop_enable_0_1 = sop_enable_0;
  assign sr_line_0_in_0_1 = sr_line_0_in_0[7:0];
  assign sr_line_1_in_0_1 = sr_line_1_in_0[7:0];
  assign sr_line_2_in_0_1 = sr_line_2_in_0[7:0];
  assign sr_line_3_in_0_1 = sr_line_3_in_0[7:0];
  assign sr_line_4_in_0_1 = sr_line_4_in_0[7:0];
  assign sr_line_5_in_0_1 = sr_line_5_in_0[7:0];
  assign uart_pixel_in_0_1 = uart_pixel_in_0[7:0];
  inner_module_test_image_window_0_0 image_window_0
       (.clk(clk_0_1),
        .im_window_00(image_window_0_im_window_00),
        .im_window_01(image_window_0_im_window_01),
        .im_window_02(image_window_0_im_window_02),
        .im_window_03(image_window_0_im_window_03),
        .im_window_04(image_window_0_im_window_04),
        .im_window_05(image_window_0_im_window_05),
        .im_window_06(image_window_0_im_window_06),
        .im_window_10(image_window_0_im_window_10),
        .im_window_11(image_window_0_im_window_11),
        .im_window_12(image_window_0_im_window_12),
        .im_window_13(image_window_0_im_window_13),
        .im_window_14(image_window_0_im_window_14),
        .im_window_15(image_window_0_im_window_15),
        .im_window_16(image_window_0_im_window_16),
        .im_window_20(image_window_0_im_window_20),
        .im_window_21(image_window_0_im_window_21),
        .im_window_22(image_window_0_im_window_22),
        .im_window_23(image_window_0_im_window_23),
        .im_window_24(image_window_0_im_window_24),
        .im_window_25(image_window_0_im_window_25),
        .im_window_26(image_window_0_im_window_26),
        .im_window_30(image_window_0_im_window_30),
        .im_window_31(image_window_0_im_window_31),
        .im_window_32(image_window_0_im_window_32),
        .im_window_33(image_window_0_im_window_33),
        .im_window_34(image_window_0_im_window_34),
        .im_window_35(image_window_0_im_window_35),
        .im_window_36(image_window_0_im_window_36),
        .im_window_40(image_window_0_im_window_40),
        .im_window_41(image_window_0_im_window_41),
        .im_window_42(image_window_0_im_window_42),
        .im_window_43(image_window_0_im_window_43),
        .im_window_44(image_window_0_im_window_44),
        .im_window_45(image_window_0_im_window_45),
        .im_window_46(image_window_0_im_window_46),
        .im_window_50(image_window_0_im_window_50),
        .im_window_51(image_window_0_im_window_51),
        .im_window_52(image_window_0_im_window_52),
        .im_window_53(image_window_0_im_window_53),
        .im_window_54(image_window_0_im_window_54),
        .im_window_55(image_window_0_im_window_55),
        .im_window_56(image_window_0_im_window_56),
        .im_window_60(image_window_0_im_window_60),
        .im_window_61(image_window_0_im_window_61),
        .im_window_62(image_window_0_im_window_62),
        .im_window_63(image_window_0_im_window_63),
        .im_window_64(image_window_0_im_window_64),
        .im_window_65(image_window_0_im_window_65),
        .im_window_66(image_window_0_im_window_66),
        .rst(rst_0_1),
        .shift_enable(shift_enable_0_1),
        .sr_line_0_in(sr_line_0_in_0_1),
        .sr_line_1_in(sr_line_1_in_0_1),
        .sr_line_2_in(sr_line_2_in_0_1),
        .sr_line_3_in(sr_line_3_in_0_1),
        .sr_line_4_in(sr_line_4_in_0_1),
        .sr_line_5_in(sr_line_5_in_0_1),
        .uart_pixel_in(uart_pixel_in_0_1));
  inner_module_test_kernel_bank_0_0 kernel_bank_0
       (.clk(clk_0_1),
        .kernel_full(kernel_bank_0_kernel_full),
        .kernel_reg_0(kernel_bank_0_kernel_reg_0),
        .kernel_reg_1(kernel_bank_0_kernel_reg_1),
        .kernel_reg_10(kernel_bank_0_kernel_reg_10),
        .kernel_reg_11(kernel_bank_0_kernel_reg_11),
        .kernel_reg_12(kernel_bank_0_kernel_reg_12),
        .kernel_reg_13(kernel_bank_0_kernel_reg_13),
        .kernel_reg_14(kernel_bank_0_kernel_reg_14),
        .kernel_reg_15(kernel_bank_0_kernel_reg_15),
        .kernel_reg_16(kernel_bank_0_kernel_reg_16),
        .kernel_reg_17(kernel_bank_0_kernel_reg_17),
        .kernel_reg_18(kernel_bank_0_kernel_reg_18),
        .kernel_reg_19(kernel_bank_0_kernel_reg_19),
        .kernel_reg_2(kernel_bank_0_kernel_reg_2),
        .kernel_reg_20(kernel_bank_0_kernel_reg_20),
        .kernel_reg_21(kernel_bank_0_kernel_reg_21),
        .kernel_reg_22(kernel_bank_0_kernel_reg_22),
        .kernel_reg_23(kernel_bank_0_kernel_reg_23),
        .kernel_reg_24(kernel_bank_0_kernel_reg_24),
        .kernel_reg_25(kernel_bank_0_kernel_reg_25),
        .kernel_reg_26(kernel_bank_0_kernel_reg_26),
        .kernel_reg_27(kernel_bank_0_kernel_reg_27),
        .kernel_reg_28(kernel_bank_0_kernel_reg_28),
        .kernel_reg_29(kernel_bank_0_kernel_reg_29),
        .kernel_reg_3(kernel_bank_0_kernel_reg_3),
        .kernel_reg_30(kernel_bank_0_kernel_reg_30),
        .kernel_reg_31(kernel_bank_0_kernel_reg_31),
        .kernel_reg_32(kernel_bank_0_kernel_reg_32),
        .kernel_reg_33(kernel_bank_0_kernel_reg_33),
        .kernel_reg_34(kernel_bank_0_kernel_reg_34),
        .kernel_reg_35(kernel_bank_0_kernel_reg_35),
        .kernel_reg_36(kernel_bank_0_kernel_reg_36),
        .kernel_reg_37(kernel_bank_0_kernel_reg_37),
        .kernel_reg_38(kernel_bank_0_kernel_reg_38),
        .kernel_reg_39(kernel_bank_0_kernel_reg_39),
        .kernel_reg_4(kernel_bank_0_kernel_reg_4),
        .kernel_reg_40(kernel_bank_0_kernel_reg_40),
        .kernel_reg_41(kernel_bank_0_kernel_reg_41),
        .kernel_reg_42(kernel_bank_0_kernel_reg_42),
        .kernel_reg_43(kernel_bank_0_kernel_reg_43),
        .kernel_reg_44(kernel_bank_0_kernel_reg_44),
        .kernel_reg_45(kernel_bank_0_kernel_reg_45),
        .kernel_reg_46(kernel_bank_0_kernel_reg_46),
        .kernel_reg_47(kernel_bank_0_kernel_reg_47),
        .kernel_reg_48(kernel_bank_0_kernel_reg_48),
        .kernel_reg_5(kernel_bank_0_kernel_reg_5),
        .kernel_reg_6(kernel_bank_0_kernel_reg_6),
        .kernel_reg_7(kernel_bank_0_kernel_reg_7),
        .kernel_reg_8(kernel_bank_0_kernel_reg_8),
        .kernel_reg_9(kernel_bank_0_kernel_reg_9),
        .kernel_write_enable(kernel_write_enable_0_1),
        .new_kernel(new_kernel_0_1),
        .rst(rst_0_1));
  inner_module_test_sop_module_0_0 sop_module_0
       (.clk(clk_0_1),
        .fm_out(sop_module_0_fm_out),
        .img_window_0(image_window_0_im_window_00),
        .img_window_1(image_window_0_im_window_01),
        .img_window_10(image_window_0_im_window_13),
        .img_window_11(image_window_0_im_window_14),
        .img_window_12(image_window_0_im_window_15),
        .img_window_13(image_window_0_im_window_16),
        .img_window_14(image_window_0_im_window_20),
        .img_window_15(image_window_0_im_window_21),
        .img_window_16(image_window_0_im_window_22),
        .img_window_17(image_window_0_im_window_23),
        .img_window_18(image_window_0_im_window_24),
        .img_window_19(image_window_0_im_window_25),
        .img_window_2(image_window_0_im_window_02),
        .img_window_20(image_window_0_im_window_26),
        .img_window_21(image_window_0_im_window_30),
        .img_window_22(image_window_0_im_window_31),
        .img_window_23(image_window_0_im_window_32),
        .img_window_24(image_window_0_im_window_33),
        .img_window_25(image_window_0_im_window_34),
        .img_window_26(image_window_0_im_window_35),
        .img_window_27(image_window_0_im_window_36),
        .img_window_28(image_window_0_im_window_40),
        .img_window_29(image_window_0_im_window_41),
        .img_window_3(image_window_0_im_window_03),
        .img_window_30(image_window_0_im_window_42),
        .img_window_31(image_window_0_im_window_43),
        .img_window_32(image_window_0_im_window_44),
        .img_window_33(image_window_0_im_window_45),
        .img_window_34(image_window_0_im_window_46),
        .img_window_35(image_window_0_im_window_50),
        .img_window_36(image_window_0_im_window_51),
        .img_window_37(image_window_0_im_window_52),
        .img_window_38(image_window_0_im_window_53),
        .img_window_39(image_window_0_im_window_54),
        .img_window_4(image_window_0_im_window_04),
        .img_window_40(image_window_0_im_window_55),
        .img_window_41(image_window_0_im_window_56),
        .img_window_42(image_window_0_im_window_60),
        .img_window_43(image_window_0_im_window_61),
        .img_window_44(image_window_0_im_window_62),
        .img_window_45(image_window_0_im_window_63),
        .img_window_46(image_window_0_im_window_64),
        .img_window_47(image_window_0_im_window_65),
        .img_window_48(image_window_0_im_window_66),
        .img_window_5(image_window_0_im_window_05),
        .img_window_6(image_window_0_im_window_06),
        .img_window_7(image_window_0_im_window_10),
        .img_window_8(image_window_0_im_window_11),
        .img_window_9(image_window_0_im_window_12),
        .kernel_0(kernel_bank_0_kernel_reg_0),
        .kernel_1(kernel_bank_0_kernel_reg_1),
        .kernel_10(kernel_bank_0_kernel_reg_10),
        .kernel_11(kernel_bank_0_kernel_reg_11),
        .kernel_12(kernel_bank_0_kernel_reg_12),
        .kernel_13(kernel_bank_0_kernel_reg_13),
        .kernel_14(kernel_bank_0_kernel_reg_14),
        .kernel_15(kernel_bank_0_kernel_reg_15),
        .kernel_16(kernel_bank_0_kernel_reg_16),
        .kernel_17(kernel_bank_0_kernel_reg_17),
        .kernel_18(kernel_bank_0_kernel_reg_18),
        .kernel_19(kernel_bank_0_kernel_reg_19),
        .kernel_2(kernel_bank_0_kernel_reg_2),
        .kernel_20(kernel_bank_0_kernel_reg_20),
        .kernel_21(kernel_bank_0_kernel_reg_21),
        .kernel_22(kernel_bank_0_kernel_reg_22),
        .kernel_23(kernel_bank_0_kernel_reg_23),
        .kernel_24(kernel_bank_0_kernel_reg_24),
        .kernel_25(kernel_bank_0_kernel_reg_25),
        .kernel_26(kernel_bank_0_kernel_reg_26),
        .kernel_27(kernel_bank_0_kernel_reg_27),
        .kernel_28(kernel_bank_0_kernel_reg_28),
        .kernel_29(kernel_bank_0_kernel_reg_29),
        .kernel_3(kernel_bank_0_kernel_reg_3),
        .kernel_30(kernel_bank_0_kernel_reg_30),
        .kernel_31(kernel_bank_0_kernel_reg_31),
        .kernel_32(kernel_bank_0_kernel_reg_32),
        .kernel_33(kernel_bank_0_kernel_reg_33),
        .kernel_34(kernel_bank_0_kernel_reg_34),
        .kernel_35(kernel_bank_0_kernel_reg_35),
        .kernel_36(kernel_bank_0_kernel_reg_36),
        .kernel_37(kernel_bank_0_kernel_reg_37),
        .kernel_38(kernel_bank_0_kernel_reg_38),
        .kernel_39(kernel_bank_0_kernel_reg_39),
        .kernel_4(kernel_bank_0_kernel_reg_4),
        .kernel_40(kernel_bank_0_kernel_reg_40),
        .kernel_41(kernel_bank_0_kernel_reg_41),
        .kernel_42(kernel_bank_0_kernel_reg_42),
        .kernel_43(kernel_bank_0_kernel_reg_43),
        .kernel_44(kernel_bank_0_kernel_reg_44),
        .kernel_45(kernel_bank_0_kernel_reg_45),
        .kernel_46(kernel_bank_0_kernel_reg_46),
        .kernel_47(kernel_bank_0_kernel_reg_47),
        .kernel_48(kernel_bank_0_kernel_reg_48),
        .kernel_5(kernel_bank_0_kernel_reg_5),
        .kernel_6(kernel_bank_0_kernel_reg_6),
        .kernel_7(kernel_bank_0_kernel_reg_7),
        .kernel_8(kernel_bank_0_kernel_reg_8),
        .kernel_9(kernel_bank_0_kernel_reg_9),
        .out_valid(sop_module_0_out_valid),
        .rst(rst_0_1),
        .sop_enable(sop_enable_0_1));
endmodule
