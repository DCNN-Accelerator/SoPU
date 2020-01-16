`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 10:34:08 PM
// Design Name: 
// Module Name: uart_out_interface
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


module uart_out_interface
(
input clk,
input rst,

input send_enable,

input [7:0] byte_to_uart,

input uart_to_sop_rtr,


output reg uart_to_sop_rts,
output reg byte_sent,
output reg [7:0] uart_byte_out
);



localparam IDLE  = 3'b0;
localparam WAIT_FOR_UART = 3'b1;
localparam SEND_BYTE = 3'd2 ;

reg [3:0] state; 
 
reg [2:0] ctr;

always @ (posedge clk) 
begin

    if (!rst) 
        begin
        uart_to_sop_rts <= 0; 
        byte_sent <= 0; 
        
        uart_byte_out <= 0; 
        
        state <= IDLE; 
        
        ctr <= 0; 
        
        end //reset block end
        
    else 
        begin
        
            case(state)
            
                IDLE: begin
                        
                        uart_to_sop_rts <= 0; 
                        byte_sent <= 0; 
                        uart_byte_out <= 0; 
                        ctr <= 0; 
                        
                        
                        if (send_enable) 
                            state <= WAIT_FOR_UART; 
                        else 
                            state <= IDLE; 
                        
                
                            
                      end //IDLE case end
       
                WAIT_FOR_UART: begin
                                
                                uart_to_sop_rts <= 1; 
                                byte_sent <= 0; 
                                uart_byte_out <= 0; 
                                
                
                                if (uart_to_sop_rtr)
                                    state <= SEND_BYTE; 
                                else    
                                    state <= WAIT_FOR_UART; 
                                    
                
                
                               end //Wait for data case end
                SEND_BYTE:    begin
                                
                                   uart_to_sop_rts <= 0; 
                                   byte_sent <= 1;  
                                   
                                   uart_byte_out <= byte_to_uart;  
                    
                                  if (ctr == 1) 
                                     state <= IDLE; 
                                  else 
                                     ctr <= ctr + 1;   
                                                   
                               end //Latch Byte case end
            
            
            
            
            endcase
       
        end  //else-not-reset block end


end 
 
 
endmodule 
