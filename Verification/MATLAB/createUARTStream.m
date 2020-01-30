%%%

% Hussain Khajanchi 
% DCNN Senior Project 
% 
% MATLAB Verification

% Description: Creates a UART stream with kernel and pixel data

%%%



function[uartStream] =  createUARTStream(image_array, kernel_array)


    
% Create a 1D array to hold all the elements of the image and kernel arrays
% The numel() function gets the total number of elements in an array data type in MATLAB, which is nice for creating a 1D row vector to hold those said elements

uartStreamSize = (numel(image_array) + numel(kernel_array)); 
uartStream     = zeros(uartStreamSize,1); 

% Instantiate a write pointer for the UART stream so that we can keep track of where the last byte was written to (makes sure that the image data doesn't overwrite the kernel)

uartWritePtr = 1; 


% Start filling up the UART stream with all the kernel values, row by row
for i = 1:length(kernel_array)
    for j = 1:length(kernel_array)
        
        uartStream(uartWritePtr) = kernel_array(i,j); 
                   uartWritePtr  = uartWritePtr + 1; 
    end 
end 


%Same process for all the image data
for i = 1:length(image_array)
    for j = 1:length(kernel_array)
        
        uartStream(uartWritePtr) = image_array(i,j); 
                    uartWritePtr = uartWritePtr + 1; 
        
    end 
end 





end 