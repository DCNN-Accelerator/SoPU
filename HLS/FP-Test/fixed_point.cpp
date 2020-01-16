#include "fixed_point.hpp"


void conv_2d ( pixel_t line_1,
			   pixel_t line_2,
			   pixel_t uart_line_in,
			   output_t conv_out)

{
	pixel_t   pixel_window  [3][3];  //[pixel_win_height][pixel_win_length];
	kernel_t  kernel_window [3][3];   //[kernel_win_height][kernel_win_length]

	output_t dot_product [3][3];
	output_t accum = 0;


	//Instantiate Pixel Window
	pixel_window[0][1] = 0;
    pixel_window[0][2] = 0;
	pixel_window[0][3] = 0;

	pixel_window[1][1] = 1;
	pixel_window[1][2] = 2;
	pixel_window[1][3] = 3;

	pixel_window[2][1] = 4;
	pixel_window[2][2] = 5;
	pixel_window[2][3] = 6;

	//Instantiate Kernel Window

	kernel_window[0][1] = 0.1;
    kernel_window[0][2] = 0.2;
	kernel_window[0][3] = 0.3;

	kernel_window[1][1] = 0.4;
	kernel_window[1][2] = 0.5;
	kernel_window[1][3] = 0.6;

	kernel_window[2][1] = 0.7;
	kernel_window[2][2] = 0.8;
	kernel_window[2][3] = 0.9;


	//Take in new Line Buf and UART Values -- assuming we already shifted
	pixel_window [0][1] = line_1;
	pixel_window [2][1] = line_2;
	pixel_window [3][1] = uart_line_in;

	//Compute the dot product

	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 3; j++)
		{

			std::cout << "Current iteration" << i << j << "\n";

			std::cout << "Pixel Window Value  :  "  <<  pixel_window[i][j] << "\n";
			std::cout << "Kernel Window Value :  "  << kernel_window[i][j] << "\n";

			dot_product [i][j] = pixel_window[i][j] * kernel_window[i][j];

		}
	}

	//Implement the "collapse-sum"

	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			accum = accum + dot_product[i][j];

		}
	}


	//Implement "Shifting


	pixel_window [0][1] = 0;
	pixel_window [2][1] = 0;
	pixel_window [3][1] = 0;

	for (int j = 1; j < 3; j ++ )
	{
		for (int i = 1; i < 3; i++)
		{
			pixel_window[i][j] = pixel_window[i][j-1];
			std::cout << "Shifted Pixel Window Value" << i << j << pixel_window[i][j] << "\n";
		}
	}


	pixel_window [0][1] = 0;
	pixel_window [2][1] = 0;
	pixel_window [3][1] = 0;

	conv_out = accum;

};
