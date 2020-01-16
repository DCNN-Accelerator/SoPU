#ifndef fp_window_h
#define fp_window_h

#include "ap_int.h"
#include "iostream"

typedef ap_fixed<16,1,AP_RND> kernel_t;
typedef ap_uint<8> pixel_t;
typedef ap_fixed<24,8,AP_RND> output_t;

#define kernel_win_length = 7;
#define kernel_win_height = 7;

#define pixel_win_length = 7;
#define pixel_win_height = 7;


void conv_2d (
			 pixel_t line_1,
			 pixel_t line_2,

		   /*pixel_t line_3,
			 pixel_t line_4,
			 pixel_t line_5,
			 pixel_t line_6,*/

			 pixel_t uart_line_in,
			 output_t conv_out);





#endif
