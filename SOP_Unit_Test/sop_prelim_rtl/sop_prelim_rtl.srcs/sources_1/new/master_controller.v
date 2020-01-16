`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 10:34:08 PM
// Design Name: 
// Module Name: master_controller
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


module master_controller
(

input clk,
input rst, 

input uart_byte_recieved, 
input uart_byte_sent,

input ilb_bytes_recieved,
input ilb_byte_sent,

output reg uart_read_enable,
output reg uart_send_enable,

output reg ilb_read_enable,
output reg ilb_send_enable,

output reg im_window_shift_enable, 
output reg conv_enable,

output reg new_kernel


);


localparam [2:0] IDLE = 3'b0; 
localparam [2:0] LOAD_KERNEL = 3'd1; 
localparam [2:0] READ_UART_PIXEL = 3'd2; 
localparam [2:0] SEND_ILB = 3'd3; 
localparam [2:0] READ_ILB = 3'd4; 
localparam [2:0] IM_WINDOW_SHIFT = 3'd5; 
localparam [2:0] CONV_ENABLE = 3'd6; 
localparam [2:0] SEND_UART = 3'd7; 

reg kernel_loaded; 

reg [3:0] master_state; 
reg [8:0] kernel_ctr; 
reg [11:0] conv_ctr;

reg [1:0] im_window_delay_ctr; 
reg [1:0] conv_delay_ctr; 


always @ (posedge clk) 
begin



    if (!rst) 
        begin
        
        master_state <= IDLE; 
        
        //Peripheral Enable Signals
        uart_read_enable <= 0; 
        uart_send_enable <= 0; 
        
        ilb_read_enable <= 0; 
        ilb_send_enable <= 0; 
        
        im_window_shift_enable <= 0; 
        conv_enable <= 0; 
        
        //Misc Signals 
        new_kernel <= 0; 
        
        //SoPU Status Signals
        kernel_loaded <= 0;
        
        //FSM Counter Signals
        kernel_ctr <= 0;
        conv_ctr <= 0; 
       
       //Delay Counters
        im_window_delay_ctr <= 0; 
        conv_delay_ctr <= 0;  
       
        end // if rst end



    else 
        
        begin
            
            case (master_state)
                    
                IDLE: begin
                        
                       if (!kernel_loaded) 
                          master_state <= LOAD_KERNEL; 
                          
                       else 
                          master_state <= READ_UART_PIXEL; 
                        
                        
                      uart_read_enable <= 0; 
                      uart_send_enable <= 0; 
                      
                      ilb_read_enable <= 0; 
                      ilb_send_enable <= 0; 
                      
                      im_window_shift_enable <= 0; 
                      conv_enable <= 0; 
                      
                      im_window_delay_ctr <= 0; 
                      conv_delay_ctr <= 0; 
                                                                   
                      end //IDLE Case handling end
                  
            LOAD_KERNEL: 
                          begin
                          
                          if (kernel_loaded)
                              master_state <= IDLE; 
                          else 
                              master_state <= LOAD_KERNEL;
                          
                          
                          if (uart_byte_recieved)
                             begin
                                
                                if (kernel_ctr == 3072)
                                  begin
                                   kernel_loaded <= 1; 
                                   new_kernel <= 0; 
                                  end
                                  
                                else
                                   begin
                                    kernel_ctr <= kernel_ctr + 1; 
                                    new_kernel <= 1;
                                   end  
                             
                             
                             end
                              
                               
                          uart_read_enable <= 1; 
                          uart_send_enable <= 0; 
                          
                          ilb_read_enable <= 0; 
                          ilb_send_enable <= 0; 
                          
                          im_window_shift_enable <= 0; 
                          conv_enable <= 0;
                                                       
                          new_kernel <= 0;
                          
                          
                          
                          
                          end //load kernel block end
             
          READ_UART_PIXEL: 
                            begin
                            
                                if (uart_byte_recieved)
                                    master_state <= SEND_ILB;
                                else
                                    master_state <= READ_UART_PIXEL; //poll the uart reciever until we get a pixel
                                
                                
                                
                                    uart_read_enable <= 1; 
                                    uart_send_enable <= 0; 
                                    
                                    ilb_read_enable <= 0; 
                                    ilb_send_enable <= 0; 
                                    
                                    im_window_shift_enable <= 0; 
                                    conv_enable <= 0; 
                                
                            
                            
                            end //read_uart_pixel blk end   
             
                SEND_ILB:    
                            begin
                            
                                if (ilb_byte_sent)
                                    master_state <= READ_ILB;
                                else
                                    master_state <= SEND_ILB; //stay in this state unitl the byte gets SENT 
                                
                                
                                    uart_read_enable <= 0; 
                                    uart_send_enable <= 0; 
                                    
                                    ilb_read_enable <= 0; 
                                    ilb_send_enable <= 1; 
                                    
                                    im_window_shift_enable <= 0; 
                                    conv_enable <= 0; 
                                
                            
                            
                            
                            end //send ilb block end
                  
                READ_ILB:
                
                         begin
                            
                            if (ilb_bytes_recieved)
                                master_state <= IM_WINDOW_SHIFT; 
                            else 
                                master_state <= READ_ILB; 
                                      
                                                               
                            uart_read_enable <= 0; 
                            uart_send_enable <= 0; 
                            
                            ilb_read_enable <= 1; 
                            ilb_send_enable <= 0; 
                            
                            im_window_shift_enable <= 0; 
                            conv_enable <= 0; 
              
                         end //read ilb block end
                         
                         
             IM_WINDOW_SHIFT:
                              begin
                              
                              
                              if (im_window_delay_ctr == 1) 
                                  master_state <= CONV_ENABLE;
                              else 
                                  begin
                                    master_state <= IM_WINDOW_SHIFT; 
                                    im_window_delay_ctr <= im_window_delay_ctr + 1;
                                  end 
                                                              
                                  uart_read_enable <= 0; 
                                  uart_send_enable <= 0; 
                                  
                                  ilb_read_enable <= 0; 
                                  ilb_send_enable <= 0; 
                                  
                                  im_window_shift_enable <= 1; 
                                  conv_enable <= 0; 
                              
                        
                              end //im window shift block end
                              
          CONV_ENABLE:
                        begin
                            
                            if (conv_delay_ctr == 2) //the conv unit is "done" computing - what should it do now?
                              begin
                              
                                if (conv_ctr == 3072) //if the conv ctr is at the max aka conv == valid
                                   master_state <= SEND_UART;
                                   
                                 else 
                                    begin
                                    conv_ctr <= conv_ctr + 1; 
                                    master_state <= IDLE; //cycle through the "read pixel - shift- compute-conv - until the ILB is "loaded"
                                    end 
                                
                                 end 
                                 
                            else //the corresponding else stmnt for if (conv_delay_ctr == 1) -- aka the conv unit isn't "done"
                          
                                begin
                                    master_state <= CONV_ENABLE; 
                                    conv_delay_ctr <= conv_delay_ctr +1; 
                                end
                            
                            
                            uart_read_enable <= 0; 
                            uart_send_enable <= 0; 
                            
                            ilb_read_enable <= 0; 
                            ilb_send_enable <= 0; 
                            
                            im_window_shift_enable <= 0; 
                            conv_enable <= 1; 
                         
                       
                        end //conv_enable blocc end
            
         SEND_UART: 
                        begin
                        
                        if (uart_byte_sent)
                            master_state <= IDLE;
                        else
                           master_state <= SEND_UART;
                           
                           
                           uart_read_enable <= 0; 
                           uart_send_enable <= 1; 
                           
                           ilb_read_enable <= 0; 
                           ilb_send_enable <= 0; 
                           
                           im_window_shift_enable <= 0; 
                           conv_enable <= 0; 
                      
                       
                        end //uart send block end     
                 
            endcase 
            
      
        end //not rst blk end

end //master always blk end


endmodule
