//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue Jan 21 14:25:31 2020
//Host        : DESKTOP-Q6SEU8V running 64-bit major release  (build 9200)
//Command     : generate_target inner_module_test_wrapper.bd
//Design      : inner_module_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module inner_module_test_wrapper
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
  input clk_0;
  output [15:0]fm_out_0;
  output kernel_full_0;
  input kernel_write_enable_0;
  input [7:0]new_kernel_0;
  output out_valid_0;
  input rst_0;
  input shift_enable_0;
  input sop_enable_0;
  input [7:0]sr_line_0_in_0;
  input [7:0]sr_line_1_in_0;
  input [7:0]sr_line_2_in_0;
  input [7:0]sr_line_3_in_0;
  input [7:0]sr_line_4_in_0;
  input [7:0]sr_line_5_in_0;
  input [7:0]uart_pixel_in_0;

  wire clk_0;
  wire [15:0]fm_out_0;
  wire kernel_full_0;
  wire kernel_write_enable_0;
  wire [7:0]new_kernel_0;
  wire out_valid_0;
  wire rst_0;
  wire shift_enable_0;
  wire sop_enable_0;
  wire [7:0]sr_line_0_in_0;
  wire [7:0]sr_line_1_in_0;
  wire [7:0]sr_line_2_in_0;
  wire [7:0]sr_line_3_in_0;
  wire [7:0]sr_line_4_in_0;
  wire [7:0]sr_line_5_in_0;
  wire [7:0]uart_pixel_in_0;

  inner_module_test inner_module_test_i
       (.clk_0(clk_0),
        .fm_out_0(fm_out_0),
        .kernel_full_0(kernel_full_0),
        .kernel_write_enable_0(kernel_write_enable_0),
        .new_kernel_0(new_kernel_0),
        .out_valid_0(out_valid_0),
        .rst_0(rst_0),
        .shift_enable_0(shift_enable_0),
        .sop_enable_0(sop_enable_0),
        .sr_line_0_in_0(sr_line_0_in_0),
        .sr_line_1_in_0(sr_line_1_in_0),
        .sr_line_2_in_0(sr_line_2_in_0),
        .sr_line_3_in_0(sr_line_3_in_0),
        .sr_line_4_in_0(sr_line_4_in_0),
        .sr_line_5_in_0(sr_line_5_in_0),
        .uart_pixel_in_0(uart_pixel_in_0));
endmodule
