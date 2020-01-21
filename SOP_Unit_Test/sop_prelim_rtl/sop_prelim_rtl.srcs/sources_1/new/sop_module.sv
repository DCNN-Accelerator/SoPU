

module sop_module 
(

input clk,
input rst, 

input sop_enable, 

input [7:0] img_window_0,
input [7:0] img_window_1,
input [7:0] img_window_2,
input [7:0] img_window_3,
input [7:0] img_window_4,
input [7:0] img_window_5,
input [7:0] img_window_6,
input [7:0] img_window_7,
input [7:0] img_window_8,
input [7:0] img_window_9,

input [7:0] img_window_10,
input [7:0] img_window_11,
input [7:0] img_window_12,
input [7:0] img_window_13,
input [7:0] img_window_14,
input [7:0] img_window_15,
input [7:0] img_window_16,
input [7:0] img_window_17,
input [7:0] img_window_18,
input [7:0] img_window_19,

input [7:0] img_window_20,
input [7:0] img_window_21,
input [7:0] img_window_22,
input [7:0] img_window_23,
input [7:0] img_window_24,
input [7:0] img_window_25,
input [7:0] img_window_26,
input [7:0] img_window_27,
input [7:0] img_window_28,
input [7:0] img_window_29,

input [7:0] img_window_30,
input [7:0] img_window_31,
input [7:0] img_window_32,
input [7:0] img_window_33,
input [7:0] img_window_34,
input [7:0] img_window_35,
input [7:0] img_window_36,
input [7:0] img_window_37,
input [7:0] img_window_38,
input [7:0] img_window_39,

input [7:0] img_window_40,
input [7:0] img_window_41,
input [7:0] img_window_42,
input [7:0] img_window_43,
input [7:0] img_window_44,
input [7:0] img_window_45,
input [7:0] img_window_46,
input [7:0] img_window_47,
input [7:0] img_window_48,

input [7:0] kernel_0,
input [7:0] kernel_1,
input [7:0] kernel_2,
input [7:0] kernel_3,
input [7:0] kernel_4,
input [7:0] kernel_5,
input [7:0] kernel_6,
input [7:0] kernel_7,
input [7:0] kernel_8,
input [7:0] kernel_9,

input [7:0] kernel_10,
input [7:0] kernel_11,
input [7:0] kernel_12,
input [7:0] kernel_13,
input [7:0] kernel_14,
input [7:0] kernel_15,
input [7:0] kernel_16,
input [7:0] kernel_17,
input [7:0] kernel_18,
input [7:0] kernel_19,
input [7:0] kernel_20,

input [7:0] kernel_21,
input [7:0] kernel_22,
input [7:0] kernel_23,
input [7:0] kernel_24,
input [7:0] kernel_25,
input [7:0] kernel_26,
input [7:0] kernel_27,
input [7:0] kernel_28,
input [7:0] kernel_29,

input [7:0] kernel_30,
input [7:0] kernel_31,
input [7:0] kernel_32,
input [7:0] kernel_33,
input [7:0] kernel_34,
input [7:0] kernel_35,
input [7:0] kernel_36,
input [7:0] kernel_37,
input [7:0] kernel_38,
input [7:0] kernel_39,

input [7:0] kernel_40,
input [7:0] kernel_41,
input [7:0] kernel_42,
input [7:0] kernel_43,
input [7:0] kernel_44,
input [7:0] kernel_45,
input [7:0] kernel_46,
input [7:0] kernel_47,
input [7:0] kernel_48,


output reg [15:0] fm_out,

output reg out_valid


); 

//need a synchronous, active-high reset signal for the IP module
reg ip_reset; 

//buffer register for the IP output, only latch it in when enable signal is asserted and done signal
reg [15:0] ip_out_buf;

//HLS IP Instantiation
fp_sop_0 sop_unit
(
.kernel_patch_0_V(kernel_0),
.kernel_patch_1_V(kernel_1),
.kernel_patch_2_V(kernel_2),
.kernel_patch_3_V(kernel_3),
.kernel_patch_4_V(kernel_4),
.kernel_patch_5_V(kernel_5),
.kernel_patch_6_V(kernel_6),
.kernel_patch_7_V(kernel_7),
.kernel_patch_8_V(kernel_8),
.kernel_patch_9_V(kernel_9),

.kernel_patch_10_V(kernel_10),
.kernel_patch_11_V(kernel_11),
.kernel_patch_12_V(kernel_12),
.kernel_patch_13_V(kernel_13),
.kernel_patch_14_V(kernel_14),
.kernel_patch_15_V(kernel_15),
.kernel_patch_16_V(kernel_16),
.kernel_patch_17_V(kernel_17),
.kernel_patch_18_V(kernel_18),
.kernel_patch_19_V(kernel_19),

.kernel_patch_20_V(kernel_20),
.kernel_patch_21_V(kernel_21),
.kernel_patch_22_V(kernel_22),
.kernel_patch_23_V(kernel_23),
.kernel_patch_24_V(kernel_24),
.kernel_patch_25_V(kernel_25),
.kernel_patch_26_V(kernel_26),
.kernel_patch_27_V(kernel_27),
.kernel_patch_28_V(kernel_28),
.kernel_patch_29_V(kernel_29),

.kernel_patch_30_V(kernel_30),
.kernel_patch_31_V(kernel_31),
.kernel_patch_32_V(kernel_32),
.kernel_patch_33_V(kernel_33),
.kernel_patch_34_V(kernel_34),
.kernel_patch_35_V(kernel_35),
.kernel_patch_36_V(kernel_36),
.kernel_patch_37_V(kernel_37),
.kernel_patch_38_V(kernel_38),
.kernel_patch_39_V(kernel_39),

.kernel_patch_40_V(kernel_40),
.kernel_patch_41_V(kernel_41),
.kernel_patch_42_V(kernel_42),
.kernel_patch_43_V(kernel_43),
.kernel_patch_44_V(kernel_44),
.kernel_patch_45_V(kernel_45),
.kernel_patch_46_V(kernel_46),
.kernel_patch_47_V(kernel_47),
.kernel_patch_48_V(kernel_48),

.pixel_window_0_V(img_window_0),
.pixel_window_1_V(img_window_1),
.pixel_window_2_V(img_window_2),
.pixel_window_3_V(img_window_3),
.pixel_window_4_V(img_window_4),
.pixel_window_5_V(img_window_5),
.pixel_window_6_V(img_window_6),
.pixel_window_7_V(img_window_7),
.pixel_window_8_V(img_window_8),
.pixel_window_9_V(img_window_9),

.pixel_window_10_V(img_window_10),
.pixel_window_11_V(img_window_11),
.pixel_window_12_V(img_window_12),
.pixel_window_13_V(img_window_13),
.pixel_window_14_V(img_window_14),
.pixel_window_15_V(img_window_15),
.pixel_window_16_V(img_window_16),
.pixel_window_17_V(img_window_17),
.pixel_window_18_V(img_window_18),
.pixel_window_19_V(img_window_19),

.pixel_window_20_V(img_window_20),
.pixel_window_21_V(img_window_21),
.pixel_window_22_V(img_window_22),
.pixel_window_23_V(img_window_23),
.pixel_window_24_V(img_window_24),
.pixel_window_25_V(img_window_25),
.pixel_window_26_V(img_window_26),
.pixel_window_27_V(img_window_27),
.pixel_window_28_V(img_window_28),
.pixel_window_29_V(img_window_29),

.pixel_window_30_V(img_window_30),
.pixel_window_31_V(img_window_31),
.pixel_window_32_V(img_window_32),
.pixel_window_33_V(img_window_33),
.pixel_window_34_V(img_window_34),
.pixel_window_35_V(img_window_35),
.pixel_window_36_V(img_window_36),
.pixel_window_37_V(img_window_37),
.pixel_window_38_V(img_window_38),
.pixel_window_39_V(img_window_39),

.pixel_window_40_V(img_window_40),
.pixel_window_41_V(img_window_41),
.pixel_window_42_V(img_window_42),
.pixel_window_43_V(img_window_43),
.pixel_window_44_V(img_window_44),
.pixel_window_45_V(img_window_45),
.pixel_window_46_V(img_window_46),
.pixel_window_47_V(img_window_47),
.pixel_window_48_V(img_window_48),

.ap_clk(clk),
.ap_rst(ip_reset),

.out_val_V(ip_out_buf),
.out_valid(out_valid)

);

always @ (posedge clk or negedge rst)
    begin
    
        if (!rst)
            begin
            
            ip_reset   <= 1; //active high
            ip_out_buf <= 0; 
            out_valid  <= 0; 
            
            end
            
        else  
            
        /*
        SOP Logic 
        
        - first things first:
            set ip_reset to 0
        
        - if sop_enable == 1 && out_valid = 1:
               fm_out <= ip_out_buf
          
        - else 
            fm_out <= 0; 
            
        */
               
            begin
            
                ip_reset   <= 0; 
                
                if (sop_enable && out_valid)
                
                    fm_out <= ip_out_buf; 
                                    
                else 
                    fm_out <= 0; 
            
            end 

    end



endmodule