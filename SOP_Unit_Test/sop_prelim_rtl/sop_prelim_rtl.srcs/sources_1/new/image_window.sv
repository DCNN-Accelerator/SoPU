module image_window 
(

//-----------------Generic HW Signals---------------
input clk, 
input rst,

//Tells the Window to shift
input shift_enable, 

//New Pixel Value from UART
input [7:0] uart_pixel_in,

//--------------------Line Buffer Signals--------------

//Input Data from Line Buffers 
input [7:0] sr_line_0_in,
input [7:0] sr_line_1_in,
input [7:0] sr_line_2_in,
input [7:0] sr_line_3_in,
input [7:0] sr_line_4_in,
input [7:0] sr_line_5_in,

//------------------Output Signals to Conv Block -----------------------
//Output Data - Entire Image Window gets streamed to the multipliers
output [7:0] im_window_00,
output [7:0] im_window_01,
output [7:0] im_window_02,
output [7:0] im_window_03,
output [7:0] im_window_04,
output [7:0] im_window_05,
output [7:0] im_window_06,

output [7:0] im_window_10,
output [7:0] im_window_11,
output [7:0] im_window_12,
output [7:0] im_window_13,
output [7:0] im_window_14,
output [7:0] im_window_15,
output [7:0] im_window_16,

output [7:0] im_window_20,
output [7:0] im_window_21,
output [7:0] im_window_22,
output [7:0] im_window_23,
output [7:0] im_window_24,
output [7:0] im_window_25,
output [7:0] im_window_26,

output [7:0] im_window_30,
output [7:0] im_window_31,
output [7:0] im_window_32,
output [7:0] im_window_33,
output [7:0] im_window_34,
output [7:0] im_window_35,
output [7:0] im_window_36,

output [7:0] im_window_40,
output [7:0] im_window_41,
output [7:0] im_window_42,
output [7:0] im_window_43,
output [7:0] im_window_44,
output [7:0] im_window_45,
output [7:0] im_window_46,

output [7:0] im_window_50,
output [7:0] im_window_51,
output [7:0] im_window_52,
output [7:0] im_window_53,
output [7:0] im_window_54,
output [7:0] im_window_55,
output [7:0] im_window_56,

output [7:0] im_window_60,
output [7:0] im_window_61,
output [7:0] im_window_62,
output [7:0] im_window_63,
output [7:0] im_window_64,
output [7:0] im_window_65,
output [7:0] im_window_66


//-------------------Output Signals to Line Buffer--------------------
); 

/*

Description: 

This module serves as the Image Window that holds the patch of pixels at any given time and streams it to the multipliers

When the Line Buffer + UART is ready to send in pixels, the master FSM will first send a shift enable signal. The entire window will
shift Left-to-Right Column Wise and the last element (element 7,7) will be shifted into a register to be read by the Line Buffer unit

Once RTR/RTS handshaking with the Line Buffer + UART is established, the master FSM will send a read enable signal that allows the 
image window to read in the new pixel values from the Line Buffers and UART respectively

*/




reg [7:0] shift_register_array [0:6][0:6]; 


always_ff @ (posedge clk) 

    begin
    
    
        if (!rst) //active low reset signal, set all image window values to zero
            begin
            
                for (int i = 0; i < 7; i++)
                    begin
                    
                        for (int j = 0; j < 7; j++)
                        begin
                        
                            shift_register_array[i][j] <= 0; 
                            
                        end //inner loop end
                        
                    end //outer loop end
                
            
            end //!rst block end 
            
       else 
            begin
            
            
                if (shift_enable)
                    begin
                    
                    //Classic Shift Algorithm, nothing fancy here
                    for (int i = 0; i < 6; i++)
                        begin
                        shift_register_array[0][i] <= shift_register_array[0][i+1];
                        shift_register_array[1][i] <= shift_register_array[1][i+1];
                        shift_register_array[2][i] <= shift_register_array[2][i+1];
                        shift_register_array[3][i] <= shift_register_array[3][i+1];
                        shift_register_array[4][i] <= shift_register_array[4][i+1];
                        shift_register_array[5][i] <= shift_register_array[5][i+1];
                        shift_register_array[6][i] <= shift_register_array[6][i+1];
                        end
                    
                    
                   
                    //Add the Image buffer values 
                    shift_register_array[0][6] <= sr_line_0_in; 
                    shift_register_array[1][6] <= sr_line_1_in; 
                    shift_register_array[2][6] <= sr_line_2_in; 
                    shift_register_array[3][6] <= sr_line_3_in; 
                    shift_register_array[4][6] <= sr_line_4_in; 
                    shift_register_array[5][6] <= sr_line_5_in; 
                    shift_register_array[6][6] <= uart_pixel_in; 
                    
                    
                    end //if shift_enable block end
            
            end  //else block end
         
    end //shifter fcnality block end


assign im_window_00 = shift_register_array[0][0];
assign im_window_01 = shift_register_array[0][1];
assign im_window_02 = shift_register_array[0][2];
assign im_window_03 = shift_register_array[0][3];
assign im_window_04 = shift_register_array[0][4];
assign im_window_05 = shift_register_array[0][5];
assign im_window_06 = shift_register_array[0][6];

assign im_window_10 = shift_register_array[1][0];
assign im_window_11 = shift_register_array[1][1];
assign im_window_12 = shift_register_array[1][2];
assign im_window_13 = shift_register_array[1][3];
assign im_window_14 = shift_register_array[1][4];
assign im_window_15 = shift_register_array[1][5];
assign im_window_16 = shift_register_array[1][6];

assign im_window_20 = shift_register_array[2][0];
assign im_window_21 = shift_register_array[2][1];
assign im_window_22 = shift_register_array[2][2];
assign im_window_23 = shift_register_array[2][3];
assign im_window_24 = shift_register_array[2][4];
assign im_window_25 = shift_register_array[2][5];
assign im_window_26 = shift_register_array[2][6];

assign im_window_30 = shift_register_array[3][0];
assign im_window_31 = shift_register_array[3][1];
assign im_window_32 = shift_register_array[3][2];
assign im_window_33 = shift_register_array[3][3];
assign im_window_34 = shift_register_array[3][4];
assign im_window_35 = shift_register_array[3][5];
assign im_window_36 = shift_register_array[3][6];

assign im_window_40 = shift_register_array[4][0];
assign im_window_41 = shift_register_array[4][1];
assign im_window_42 = shift_register_array[4][2];
assign im_window_43 = shift_register_array[4][3];
assign im_window_44 = shift_register_array[4][4];
assign im_window_45 = shift_register_array[4][5];
assign im_window_46 = shift_register_array[4][6];

assign im_window_50 = shift_register_array[5][0];
assign im_window_51 = shift_register_array[5][1];
assign im_window_52 = shift_register_array[5][2];
assign im_window_53 = shift_register_array[5][3];
assign im_window_54 = shift_register_array[5][4];
assign im_window_55 = shift_register_array[5][5];
assign im_window_56 = shift_register_array[5][6];

assign im_window_60 = shift_register_array[6][0];
assign im_window_61 = shift_register_array[6][1];
assign im_window_62 = shift_register_array[6][2];
assign im_window_63 = shift_register_array[6][3];
assign im_window_64 = shift_register_array[6][4];
assign im_window_65 = shift_register_array[6][5];
assign im_window_66 = shift_register_array[6][6];






endmodule 
