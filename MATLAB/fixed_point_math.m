%Hussain Khajanchi
%Fixed Point Tester 
%DCNN Accelerator Senior Project

function [error_16b, error_8b] = fixed_point_math(disp_true)

%Instantiate Float64 Kernel Window (serves as the benchmark) and random
%integer array to emulate Image Patch

kernel_vals_original = rand(7,7); 
pixel_window         = randi([0 255],7,7); 

%Fixed Point Quantization of Kernel Values
kernel_vals_q0_15 = fi(kernel_vals_original,1,16,15);
kernel_vals_q0_7  = fi(kernel_vals_original,1,8,7); 

%Dot Product and Add - with pure MATLAB arithmetic
conv_out_original = sum(sum(pixel_window .* kernel_vals_original));
conv_out_16b      = sum(sum(pixel_window .* kernel_vals_q0_15.data));
conv_out_8b       = sum(sum(pixel_window .* kernel_vals_q0_7.data));

% Dot Product with Fixed Point Arithmetic  

fimath_settings = fimath( 'ProductMode', 'SpecifyPrecision',...  
                          'ProductWordLength', 16, ...
                          'ProductFractionLength', 2, ...
                          'SumMode','SpecifyPrecision',...
                          'SumWordLength', 16, ...
                          'SumFractionLength',2 ); 
                      
                      
kernel_fi =  fi(kernel_vals_original, 1, 16, 15, fimath_settings);
pixel_fi  =  fi(pixel_window,         0, 8, 0,  fimath_settings); 

out_fi = sum(sum(kernel_fi .* pixel_fi));



%Compute Errors
error_16b = ((abs (conv_out_16b - conv_out_original))/ conv_out_original) * 100; 

error_8b  = ((abs (conv_out_8b - conv_out_original))/ conv_out_original) * 100; 

%Display Results

if (disp_true == true)
    
    disp("Floating Point Kernel Values")
    disp( kernel_vals_original)
    
    disp("Q0.15 Kernel Values")
    disp( kernel_vals_q0_15)
    
    disp("Q0.7 Kernel Values")
    disp( kernel_vals_q0_7)
    
    
    disp ("Fixed-Point Arithmetic Output")
    disp (out_fi); 
    
    
    disp ("SoPU output with Double-Precision Arithmetic")
    disp (conv_out_original)

    disp ("SoPU output with Q0.15 Fixed Point Kernel Values")
    disp (conv_out_16b)
    

    disp ("SoPU Error Relative to benchmark - 16 bit")
    disp (error_16b)

    disp ("SoPU output with Q0.7 Kernel Values")
    disp (conv_out_8b)

    disp ("SoPU Error Relative to benchmark - 8 bit")
    disp (error_8b)
end


end
