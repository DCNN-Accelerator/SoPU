`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 10:34:08 PM
// Design Name: 
// Module Name: uart_in_interface
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





module uart_in_interface
(
input clk,
input rst,

input read_enable,

input [7:0] uart_byte_in,

input sop_to_uart_rts,
output reg sop_to_uart_rtr,

output reg byte_recieved,
output reg [7:0] uart_byte_out

 );
 
localparam IDLE  = 3'b0;
localparam WAIT_FOR_DATA = 3'b1;
localparam LATCH_BYTE = 3'd2 ;

reg [3:0] state; 
 
reg [2:0] ctr; 

 
always @ (posedge clk) 
begin

    if (!rst) 
        begin
        sop_to_uart_rtr <= 0; 
        byte_recieved <= 0; 
        
        uart_byte_out <= 0; 
        
        state <= IDLE; 
        
        ctr <= 0; 
        
        end //reset block end
        
    else 
        begin
        
            case(state)
            
                IDLE: begin
                        
                        sop_to_uart_rtr <= 0; 
                        byte_recieved <= 0; 
                        uart_byte_out <= 0; 
                        ctr <= 0; 
                        
                        
                        if (read_enable) 
                            state <= WAIT_FOR_DATA; 
                        else 
                            state <= IDLE; 
                        
                
                            
                      end //IDLE case end
       
                WAIT_FOR_DATA: begin
                                
                                sop_to_uart_rtr <= 1; 
                                byte_recieved <= 0; 
                                uart_byte_out <= 0; 
                                
                
                                if (sop_to_uart_rts)
                                    state <= LATCH_BYTE; 
                                else    
                                    state <= WAIT_FOR_DATA; 
                                    
                
                
                               end //Wait for data case end
                LATCH_BYTE:    begin
                                
                               sop_to_uart_rtr <= 0; 
                               byte_recieved <= 1;  
                               
                               uart_byte_out <= uart_byte_in;  
                
                              if (ctr == 1) 
                                 state <= IDLE; 
                              else 
                                 ctr <= ctr + 1;   
                                       
                
                
                               end //Latch Byte case end
            
            
            
            
            endcase
       
        end  //else-not-reset block end


end 
 
 
 
 
 
endmodule
