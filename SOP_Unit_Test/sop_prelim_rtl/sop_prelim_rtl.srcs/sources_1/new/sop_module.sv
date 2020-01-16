`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2019 11:24:58 AM
// Design Name: 
// Module Name: sop_module
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


module sop_multipliers
(

input clk, 
input rst,

//control signals
input new_kernel,
input multiply_enable,

input [7:0] im_window_00,
input [7:0] im_window_01,
input [7:0] im_window_02,
input [7:0] im_window_03,
input [7:0] im_window_04,
input [7:0] im_window_05,
input [7:0] im_window_06,

input [7:0] im_window_10,
input [7:0] im_window_11,
input [7:0] im_window_12,
input [7:0] im_window_13,
input [7:0] im_window_14,
input [7:0] im_window_15,
input [7:0] im_window_16,

input [7:0] im_window_20,
input [7:0] im_window_21,
input [7:0] im_window_22,
input [7:0] im_window_23,
input [7:0] im_window_24,
input [7:0] im_window_25,
input [7:0] im_window_26,

input [7:0] im_window_30,
input [7:0] im_window_31,
input [7:0] im_window_32,
input [7:0] im_window_33,
input [7:0] im_window_34,
input [7:0] im_window_35,
input [7:0] im_window_36,

input [7:0] im_window_40,
input [7:0] im_window_41,
input [7:0] im_window_42,
input [7:0] im_window_43,
input [7:0] im_window_44,
input [7:0] im_window_45,
input [7:0] im_window_46,

input [7:0] im_window_50,
input [7:0] im_window_51,
input [7:0] im_window_52,
input [7:0] im_window_53,
input [7:0] im_window_54,
input [7:0] im_window_55,
input [7:0] im_window_56,

input [7:0] im_window_60,
input [7:0] im_window_61,
input [7:0] im_window_62,
input [7:0] im_window_63,
input [7:0] im_window_64,
input [7:0] im_window_65,
input [7:0] im_window_66,

input reg [15:0] uart_kernel_val,


output reg [15:0] data_out

); 


reg [15:0] kernel_array [0:6][0:6];
reg [31:0] mult_intermediates [0:6][0:6]; 

reg [3:0] row_counter; 
reg [3:0] col_counter; 



/*
ToDo: 
- Finalize Fixed Point Shifting




*/


always_ff @ (posedge clk) //Kernel Array Flip Flops block
    begin
    
    if (!rst) 
        begin
        
         for (int i = 0; i < 7; i++)
            begin
            
                for (int j = 0; j < 7; j++)
                begin
                    kernel_array[i][j] <= 0;  
                end
                
            end
            
         row_counter <= 0; 
         col_counter <= 0; 
            
                                 
     end
        
        
        
    else 
        begin
        
            if (new_kernel) 
                begin
                
                    if (row_counter < 6) 
                        begin
                        
                            if (col_counter < 6) 
                            begin
                            
                             kernel_array[row_counter][col_counter] <= uart_kernel_val;
                             col_counter++; 
                            
                            end
                            
                            else 
                                begin
                                row_counter++; 
                                col_counter <= 0; 
                                end
                       end //row counter check end
                       
                   else 
                        begin
                        //dunno what to implement here yet
                        end
                    
                  
                 end //new kernel if end
       
        end //if reset check end
    
    
 
   end  //always ff end 



//FlipFlop Array for Multiply Results
reg add_enable;


always_ff @ (posedge clk) 

    begin
    
        if (!rst) 
            begin
             for (int i = 0; i < 7; i++)
                       begin
                       
                           for (int j = 0; j < 7; j++)
                           begin
                               mult_intermediates[i][j] <= 0;   
                           end
                       
                       end
            add_enable <= 0; 
            end //rst check end
    
       else 
       
            begin
            
                if (multiply_enable)
                    begin
                    
                    mult_intermediates[0][0]<= {8'b0,im_window_00}* kernel_array[0][0];
                    mult_intermediates[0][1]<= {8'b0,im_window_01}* kernel_array[0][1];
                    mult_intermediates[0][2]<= {8'b0,im_window_02}* kernel_array[0][2];
                    mult_intermediates[0][3]<= {8'b0,im_window_03}* kernel_array[0][3];
                    mult_intermediates[0][4]<= {8'b0,im_window_04}* kernel_array[0][4];
                    mult_intermediates[0][5]<= {8'b0,im_window_05}* kernel_array[0][5];
                    mult_intermediates[0][6]<= {8'b0,im_window_06}* kernel_array[0][6];
                    
                    mult_intermediates[1][0]<= {8'b0,im_window_10}* kernel_array[1][0];
                    mult_intermediates[1][1]<= {8'b0,im_window_11}* kernel_array[1][1];
                    mult_intermediates[1][2]<= {8'b0,im_window_12}* kernel_array[1][2];
                    mult_intermediates[1][3]<= {8'b0,im_window_13}* kernel_array[1][3];
                    mult_intermediates[1][4]<= {8'b0,im_window_14}* kernel_array[1][4];
                    mult_intermediates[1][5]<= {8'b0,im_window_15}* kernel_array[1][5];
                    mult_intermediates[1][6]<= {8'b0,im_window_16}* kernel_array[1][6];
                    
                    mult_intermediates[2][0]<= {8'b0,im_window_20}* kernel_array[2][0];
                    mult_intermediates[2][1]<= {8'b0,im_window_21}* kernel_array[2][1];
                    mult_intermediates[2][2]<= {8'b0,im_window_22}* kernel_array[2][2];
                    mult_intermediates[2][3]<= {8'b0,im_window_23}* kernel_array[2][3];
                    mult_intermediates[2][4]<= {8'b0,im_window_24}* kernel_array[2][4];
                    mult_intermediates[2][5]<= {8'b0,im_window_25}* kernel_array[2][5];
                    mult_intermediates[2][6]<= {8'b0,im_window_26}* kernel_array[2][6];
                    
                    mult_intermediates[3][0]<= {8'b0,im_window_30}* kernel_array[3][0];
                    mult_intermediates[3][1]<= {8'b0,im_window_31}* kernel_array[3][1];
                    mult_intermediates[3][2]<= {8'b0,im_window_32}* kernel_array[3][2];
                    mult_intermediates[3][3]<= {8'b0,im_window_33}* kernel_array[3][3];
                    mult_intermediates[3][4]<= {8'b0,im_window_34}* kernel_array[3][4];
                    mult_intermediates[3][5]<= {8'b0,im_window_35}* kernel_array[3][5];
                    mult_intermediates[3][6]<= {8'b0,im_window_36}* kernel_array[3][6];
                    
                    mult_intermediates[4][0]<= {8'b0,im_window_40}* kernel_array[4][0];
                    mult_intermediates[4][1]<= {8'b0,im_window_41}* kernel_array[4][1];
                    mult_intermediates[4][2]<= {8'b0,im_window_42}* kernel_array[4][2];
                    mult_intermediates[4][3]<= {8'b0,im_window_43}* kernel_array[4][3];
                    mult_intermediates[4][4]<= {8'b0,im_window_44}* kernel_array[4][4];
                    mult_intermediates[4][5]<= {8'b0,im_window_45}* kernel_array[4][5];
                    mult_intermediates[4][6]<= {8'b0,im_window_46}* kernel_array[4][6];
                    
                    mult_intermediates[5][0]<= {8'b0,im_window_50}* kernel_array[5][0];
                    mult_intermediates[5][1]<= {8'b0,im_window_51}* kernel_array[5][1];
                    mult_intermediates[5][2]<= {8'b0,im_window_52}* kernel_array[5][2];
                    mult_intermediates[5][3]<= {8'b0,im_window_53}* kernel_array[5][3];
                    mult_intermediates[5][4]<= {8'b0,im_window_54}* kernel_array[5][4];
                    mult_intermediates[5][5]<= {8'b0,im_window_55}* kernel_array[5][5];
                    mult_intermediates[5][6]<= {8'b0,im_window_56}* kernel_array[5][6];
                    
                    mult_intermediates[6][0]<= {8'b0,im_window_60}* kernel_array[6][0];
                    mult_intermediates[6][1]<= {8'b0,im_window_61}* kernel_array[6][1];
                    mult_intermediates[6][2]<= {8'b0,im_window_62}* kernel_array[6][2];
                    mult_intermediates[6][3]<= {8'b0,im_window_63}* kernel_array[6][3];
                    mult_intermediates[6][4]<= {8'b0,im_window_64}* kernel_array[6][4];
                    mult_intermediates[6][5]<= {8'b0,im_window_65}* kernel_array[6][5];
                    mult_intermediates[6][6]<= {8'b0,im_window_66}* kernel_array[6][6];
                                   
                    add_enable <= 1;    
                    end //mult enable check end
            
                else 
                    begin
                    
                        mult_intermediates <= mult_intermediates; //hold it steady if mult_enable != 1
                        add_enable <= 0; 
                    end //not mult enable check end
            
            
            end //not reset check end
    
    
    end //ff end
    
    
    reg [15:0] result; 
    
    always_ff @ (posedge clk) //Out Result FF
        begin
        
            if (!rst) 
                begin
                
                result <= 0; 
                
                end // rst end  
            else 
                begin
                
                if (add_enable)
                begin
                for (int i = 0; i < 7; i++)
                    begin
                        for (int j = 0; j < 7; j++)
                            begin
                                result <= result + mult_intermediates[i][j]; 
                            end
                    end 
                    
                add_enable <= 0; //deassert when finished
                end //if add enable end
                
                else 
                    result <= 0; 
                
                
                end //if not rst end
                
                
        end //ff end
        











endmodule 