// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:fp_sop:1.0
// IP Revision: 2001211031

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module fp_sop_0 (
  out_valid_ap_vld,
  out_val_V_ap_vld,
  ap_clk,
  ap_rst,
  kernel_patch_0_V,
  kernel_patch_1_V,
  kernel_patch_2_V,
  kernel_patch_3_V,
  kernel_patch_4_V,
  kernel_patch_5_V,
  kernel_patch_6_V,
  kernel_patch_7_V,
  kernel_patch_8_V,
  kernel_patch_9_V,
  kernel_patch_10_V,
  kernel_patch_11_V,
  kernel_patch_12_V,
  kernel_patch_13_V,
  kernel_patch_14_V,
  kernel_patch_15_V,
  kernel_patch_16_V,
  kernel_patch_17_V,
  kernel_patch_18_V,
  kernel_patch_19_V,
  kernel_patch_20_V,
  kernel_patch_21_V,
  kernel_patch_22_V,
  kernel_patch_23_V,
  kernel_patch_24_V,
  kernel_patch_25_V,
  kernel_patch_26_V,
  kernel_patch_27_V,
  kernel_patch_28_V,
  kernel_patch_29_V,
  kernel_patch_30_V,
  kernel_patch_31_V,
  kernel_patch_32_V,
  kernel_patch_33_V,
  kernel_patch_34_V,
  kernel_patch_35_V,
  kernel_patch_36_V,
  kernel_patch_37_V,
  kernel_patch_38_V,
  kernel_patch_39_V,
  kernel_patch_40_V,
  kernel_patch_41_V,
  kernel_patch_42_V,
  kernel_patch_43_V,
  kernel_patch_44_V,
  kernel_patch_45_V,
  kernel_patch_46_V,
  kernel_patch_47_V,
  kernel_patch_48_V,
  pixel_window_0_V,
  pixel_window_1_V,
  pixel_window_2_V,
  pixel_window_3_V,
  pixel_window_4_V,
  pixel_window_5_V,
  pixel_window_6_V,
  pixel_window_7_V,
  pixel_window_8_V,
  pixel_window_9_V,
  pixel_window_10_V,
  pixel_window_11_V,
  pixel_window_12_V,
  pixel_window_13_V,
  pixel_window_14_V,
  pixel_window_15_V,
  pixel_window_16_V,
  pixel_window_17_V,
  pixel_window_18_V,
  pixel_window_19_V,
  pixel_window_20_V,
  pixel_window_21_V,
  pixel_window_22_V,
  pixel_window_23_V,
  pixel_window_24_V,
  pixel_window_25_V,
  pixel_window_26_V,
  pixel_window_27_V,
  pixel_window_28_V,
  pixel_window_29_V,
  pixel_window_30_V,
  pixel_window_31_V,
  pixel_window_32_V,
  pixel_window_33_V,
  pixel_window_34_V,
  pixel_window_35_V,
  pixel_window_36_V,
  pixel_window_37_V,
  pixel_window_38_V,
  pixel_window_39_V,
  pixel_window_40_V,
  pixel_window_41_V,
  pixel_window_42_V,
  pixel_window_43_V,
  pixel_window_44_V,
  pixel_window_45_V,
  pixel_window_46_V,
  pixel_window_47_V,
  pixel_window_48_V,
  sop_enable,
  out_valid,
  out_val_V
);

output wire out_valid_ap_vld;
output wire out_val_V_ap_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_0_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_0_V DATA" *)
input wire [7 : 0] kernel_patch_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_1_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_1_V DATA" *)
input wire [7 : 0] kernel_patch_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_2_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_2_V DATA" *)
input wire [7 : 0] kernel_patch_2_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_3_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_3_V DATA" *)
input wire [7 : 0] kernel_patch_3_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_4_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_4_V DATA" *)
input wire [7 : 0] kernel_patch_4_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_5_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_5_V DATA" *)
input wire [7 : 0] kernel_patch_5_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_6_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_6_V DATA" *)
input wire [7 : 0] kernel_patch_6_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_7_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_7_V DATA" *)
input wire [7 : 0] kernel_patch_7_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_8_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_8_V DATA" *)
input wire [7 : 0] kernel_patch_8_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_9_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_9_V DATA" *)
input wire [7 : 0] kernel_patch_9_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_10_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_10_V DATA" *)
input wire [7 : 0] kernel_patch_10_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_11_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_11_V DATA" *)
input wire [7 : 0] kernel_patch_11_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_12_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_12_V DATA" *)
input wire [7 : 0] kernel_patch_12_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_13_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_13_V DATA" *)
input wire [7 : 0] kernel_patch_13_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_14_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_14_V DATA" *)
input wire [7 : 0] kernel_patch_14_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_15_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_15_V DATA" *)
input wire [7 : 0] kernel_patch_15_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_16_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_16_V DATA" *)
input wire [7 : 0] kernel_patch_16_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_17_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_17_V DATA" *)
input wire [7 : 0] kernel_patch_17_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_18_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_18_V DATA" *)
input wire [7 : 0] kernel_patch_18_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_19_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_19_V DATA" *)
input wire [7 : 0] kernel_patch_19_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_20_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_20_V DATA" *)
input wire [7 : 0] kernel_patch_20_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_21_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_21_V DATA" *)
input wire [7 : 0] kernel_patch_21_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_22_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_22_V DATA" *)
input wire [7 : 0] kernel_patch_22_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_23_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_23_V DATA" *)
input wire [7 : 0] kernel_patch_23_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_24_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_24_V DATA" *)
input wire [7 : 0] kernel_patch_24_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_25_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_25_V DATA" *)
input wire [7 : 0] kernel_patch_25_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_26_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_26_V DATA" *)
input wire [7 : 0] kernel_patch_26_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_27_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_27_V DATA" *)
input wire [7 : 0] kernel_patch_27_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_28_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_28_V DATA" *)
input wire [7 : 0] kernel_patch_28_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_29_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_29_V DATA" *)
input wire [7 : 0] kernel_patch_29_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_30_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_30_V DATA" *)
input wire [7 : 0] kernel_patch_30_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_31_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_31_V DATA" *)
input wire [7 : 0] kernel_patch_31_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_32_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_32_V DATA" *)
input wire [7 : 0] kernel_patch_32_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_33_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_33_V DATA" *)
input wire [7 : 0] kernel_patch_33_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_34_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_34_V DATA" *)
input wire [7 : 0] kernel_patch_34_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_35_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_35_V DATA" *)
input wire [7 : 0] kernel_patch_35_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_36_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_36_V DATA" *)
input wire [7 : 0] kernel_patch_36_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_37_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_37_V DATA" *)
input wire [7 : 0] kernel_patch_37_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_38_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_38_V DATA" *)
input wire [7 : 0] kernel_patch_38_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_39_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_39_V DATA" *)
input wire [7 : 0] kernel_patch_39_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_40_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_40_V DATA" *)
input wire [7 : 0] kernel_patch_40_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_41_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_41_V DATA" *)
input wire [7 : 0] kernel_patch_41_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_42_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_42_V DATA" *)
input wire [7 : 0] kernel_patch_42_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_43_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_43_V DATA" *)
input wire [7 : 0] kernel_patch_43_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_44_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_44_V DATA" *)
input wire [7 : 0] kernel_patch_44_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_45_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_45_V DATA" *)
input wire [7 : 0] kernel_patch_45_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_46_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_46_V DATA" *)
input wire [7 : 0] kernel_patch_46_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_47_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_47_V DATA" *)
input wire [7 : 0] kernel_patch_47_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME kernel_patch_48_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 kernel_patch_48_V DATA" *)
input wire [7 : 0] kernel_patch_48_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_0_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_0_V DATA" *)
input wire [7 : 0] pixel_window_0_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_1_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_1_V DATA" *)
input wire [7 : 0] pixel_window_1_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_2_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_2_V DATA" *)
input wire [7 : 0] pixel_window_2_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_3_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_3_V DATA" *)
input wire [7 : 0] pixel_window_3_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_4_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_4_V DATA" *)
input wire [7 : 0] pixel_window_4_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_5_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_5_V DATA" *)
input wire [7 : 0] pixel_window_5_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_6_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_6_V DATA" *)
input wire [7 : 0] pixel_window_6_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_7_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_7_V DATA" *)
input wire [7 : 0] pixel_window_7_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_8_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_8_V DATA" *)
input wire [7 : 0] pixel_window_8_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_9_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} m\
aximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_9_V DATA" *)
input wire [7 : 0] pixel_window_9_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_10_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_10_V DATA" *)
input wire [7 : 0] pixel_window_10_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_11_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_11_V DATA" *)
input wire [7 : 0] pixel_window_11_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_12_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_12_V DATA" *)
input wire [7 : 0] pixel_window_12_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_13_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_13_V DATA" *)
input wire [7 : 0] pixel_window_13_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_14_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_14_V DATA" *)
input wire [7 : 0] pixel_window_14_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_15_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_15_V DATA" *)
input wire [7 : 0] pixel_window_15_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_16_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_16_V DATA" *)
input wire [7 : 0] pixel_window_16_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_17_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_17_V DATA" *)
input wire [7 : 0] pixel_window_17_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_18_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_18_V DATA" *)
input wire [7 : 0] pixel_window_18_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_19_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_19_V DATA" *)
input wire [7 : 0] pixel_window_19_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_20_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_20_V DATA" *)
input wire [7 : 0] pixel_window_20_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_21_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_21_V DATA" *)
input wire [7 : 0] pixel_window_21_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_22_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_22_V DATA" *)
input wire [7 : 0] pixel_window_22_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_23_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_23_V DATA" *)
input wire [7 : 0] pixel_window_23_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_24_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_24_V DATA" *)
input wire [7 : 0] pixel_window_24_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_25_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_25_V DATA" *)
input wire [7 : 0] pixel_window_25_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_26_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_26_V DATA" *)
input wire [7 : 0] pixel_window_26_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_27_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_27_V DATA" *)
input wire [7 : 0] pixel_window_27_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_28_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_28_V DATA" *)
input wire [7 : 0] pixel_window_28_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_29_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_29_V DATA" *)
input wire [7 : 0] pixel_window_29_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_30_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_30_V DATA" *)
input wire [7 : 0] pixel_window_30_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_31_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_31_V DATA" *)
input wire [7 : 0] pixel_window_31_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_32_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_32_V DATA" *)
input wire [7 : 0] pixel_window_32_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_33_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_33_V DATA" *)
input wire [7 : 0] pixel_window_33_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_34_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_34_V DATA" *)
input wire [7 : 0] pixel_window_34_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_35_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_35_V DATA" *)
input wire [7 : 0] pixel_window_35_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_36_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_36_V DATA" *)
input wire [7 : 0] pixel_window_36_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_37_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_37_V DATA" *)
input wire [7 : 0] pixel_window_37_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_38_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_38_V DATA" *)
input wire [7 : 0] pixel_window_38_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_39_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_39_V DATA" *)
input wire [7 : 0] pixel_window_39_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_40_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_40_V DATA" *)
input wire [7 : 0] pixel_window_40_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_41_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_41_V DATA" *)
input wire [7 : 0] pixel_window_41_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_42_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_42_V DATA" *)
input wire [7 : 0] pixel_window_42_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_43_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_43_V DATA" *)
input wire [7 : 0] pixel_window_43_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_44_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_44_V DATA" *)
input wire [7 : 0] pixel_window_44_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_45_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_45_V DATA" *)
input wire [7 : 0] pixel_window_45_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_46_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_46_V DATA" *)
input wire [7 : 0] pixel_window_46_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_47_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_47_V DATA" *)
input wire [7 : 0] pixel_window_47_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_window_48_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} \
maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 pixel_window_48_V DATA" *)
input wire [7 : 0] pixel_window_48_V;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sop_enable, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sop_enable DATA" *)
input wire sop_enable;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_valid, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 out_valid DATA" *)
output wire out_valid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_val_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum\
 {}} value 2} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 out_val_V DATA" *)
output wire [15 : 0] out_val_V;

  fp_sop inst (
    .out_valid_ap_vld(out_valid_ap_vld),
    .out_val_V_ap_vld(out_val_V_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .kernel_patch_0_V(kernel_patch_0_V),
    .kernel_patch_1_V(kernel_patch_1_V),
    .kernel_patch_2_V(kernel_patch_2_V),
    .kernel_patch_3_V(kernel_patch_3_V),
    .kernel_patch_4_V(kernel_patch_4_V),
    .kernel_patch_5_V(kernel_patch_5_V),
    .kernel_patch_6_V(kernel_patch_6_V),
    .kernel_patch_7_V(kernel_patch_7_V),
    .kernel_patch_8_V(kernel_patch_8_V),
    .kernel_patch_9_V(kernel_patch_9_V),
    .kernel_patch_10_V(kernel_patch_10_V),
    .kernel_patch_11_V(kernel_patch_11_V),
    .kernel_patch_12_V(kernel_patch_12_V),
    .kernel_patch_13_V(kernel_patch_13_V),
    .kernel_patch_14_V(kernel_patch_14_V),
    .kernel_patch_15_V(kernel_patch_15_V),
    .kernel_patch_16_V(kernel_patch_16_V),
    .kernel_patch_17_V(kernel_patch_17_V),
    .kernel_patch_18_V(kernel_patch_18_V),
    .kernel_patch_19_V(kernel_patch_19_V),
    .kernel_patch_20_V(kernel_patch_20_V),
    .kernel_patch_21_V(kernel_patch_21_V),
    .kernel_patch_22_V(kernel_patch_22_V),
    .kernel_patch_23_V(kernel_patch_23_V),
    .kernel_patch_24_V(kernel_patch_24_V),
    .kernel_patch_25_V(kernel_patch_25_V),
    .kernel_patch_26_V(kernel_patch_26_V),
    .kernel_patch_27_V(kernel_patch_27_V),
    .kernel_patch_28_V(kernel_patch_28_V),
    .kernel_patch_29_V(kernel_patch_29_V),
    .kernel_patch_30_V(kernel_patch_30_V),
    .kernel_patch_31_V(kernel_patch_31_V),
    .kernel_patch_32_V(kernel_patch_32_V),
    .kernel_patch_33_V(kernel_patch_33_V),
    .kernel_patch_34_V(kernel_patch_34_V),
    .kernel_patch_35_V(kernel_patch_35_V),
    .kernel_patch_36_V(kernel_patch_36_V),
    .kernel_patch_37_V(kernel_patch_37_V),
    .kernel_patch_38_V(kernel_patch_38_V),
    .kernel_patch_39_V(kernel_patch_39_V),
    .kernel_patch_40_V(kernel_patch_40_V),
    .kernel_patch_41_V(kernel_patch_41_V),
    .kernel_patch_42_V(kernel_patch_42_V),
    .kernel_patch_43_V(kernel_patch_43_V),
    .kernel_patch_44_V(kernel_patch_44_V),
    .kernel_patch_45_V(kernel_patch_45_V),
    .kernel_patch_46_V(kernel_patch_46_V),
    .kernel_patch_47_V(kernel_patch_47_V),
    .kernel_patch_48_V(kernel_patch_48_V),
    .pixel_window_0_V(pixel_window_0_V),
    .pixel_window_1_V(pixel_window_1_V),
    .pixel_window_2_V(pixel_window_2_V),
    .pixel_window_3_V(pixel_window_3_V),
    .pixel_window_4_V(pixel_window_4_V),
    .pixel_window_5_V(pixel_window_5_V),
    .pixel_window_6_V(pixel_window_6_V),
    .pixel_window_7_V(pixel_window_7_V),
    .pixel_window_8_V(pixel_window_8_V),
    .pixel_window_9_V(pixel_window_9_V),
    .pixel_window_10_V(pixel_window_10_V),
    .pixel_window_11_V(pixel_window_11_V),
    .pixel_window_12_V(pixel_window_12_V),
    .pixel_window_13_V(pixel_window_13_V),
    .pixel_window_14_V(pixel_window_14_V),
    .pixel_window_15_V(pixel_window_15_V),
    .pixel_window_16_V(pixel_window_16_V),
    .pixel_window_17_V(pixel_window_17_V),
    .pixel_window_18_V(pixel_window_18_V),
    .pixel_window_19_V(pixel_window_19_V),
    .pixel_window_20_V(pixel_window_20_V),
    .pixel_window_21_V(pixel_window_21_V),
    .pixel_window_22_V(pixel_window_22_V),
    .pixel_window_23_V(pixel_window_23_V),
    .pixel_window_24_V(pixel_window_24_V),
    .pixel_window_25_V(pixel_window_25_V),
    .pixel_window_26_V(pixel_window_26_V),
    .pixel_window_27_V(pixel_window_27_V),
    .pixel_window_28_V(pixel_window_28_V),
    .pixel_window_29_V(pixel_window_29_V),
    .pixel_window_30_V(pixel_window_30_V),
    .pixel_window_31_V(pixel_window_31_V),
    .pixel_window_32_V(pixel_window_32_V),
    .pixel_window_33_V(pixel_window_33_V),
    .pixel_window_34_V(pixel_window_34_V),
    .pixel_window_35_V(pixel_window_35_V),
    .pixel_window_36_V(pixel_window_36_V),
    .pixel_window_37_V(pixel_window_37_V),
    .pixel_window_38_V(pixel_window_38_V),
    .pixel_window_39_V(pixel_window_39_V),
    .pixel_window_40_V(pixel_window_40_V),
    .pixel_window_41_V(pixel_window_41_V),
    .pixel_window_42_V(pixel_window_42_V),
    .pixel_window_43_V(pixel_window_43_V),
    .pixel_window_44_V(pixel_window_44_V),
    .pixel_window_45_V(pixel_window_45_V),
    .pixel_window_46_V(pixel_window_46_V),
    .pixel_window_47_V(pixel_window_47_V),
    .pixel_window_48_V(pixel_window_48_V),
    .sop_enable(sop_enable),
    .out_valid(out_valid),
    .out_val_V(out_val_V)
  );
endmodule
