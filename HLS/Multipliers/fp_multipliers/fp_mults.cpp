#include "fp_mults.hpp"
#include "iostream"


using namespace std;

void print (const kernel_t *kernel, const pixel_t *pixel, int size)
{

	/*For Debugging Only - NOT FOR SYNTHESIS */


	cout << "------------------------------------------" << "\n";

	cout << " " << "\n";


	cout << "Pixel Window" << "\n";

	for (int i = 0; i < size; i++)
	{
		cout << *pixel << "\n";
	}


	cout << " " << "\n";
	cout << " " << "\n";



	cout << "Kernel Patch" << "\n";

	for (int i = 0; i < size; i++)
	{
		cout << *kernel << "\n";
	}


	cout << " " << "\n";
	cout << " " << "\n";

}


void fp_sop
(

		kernel_t kernel_patch_0,
		kernel_t kernel_patch_1,
		kernel_t kernel_patch_2,
		kernel_t kernel_patch_3,
		kernel_t kernel_patch_4,
		kernel_t kernel_patch_5,
		kernel_t kernel_patch_6,
		kernel_t kernel_patch_7,
		kernel_t kernel_patch_8,
		kernel_t kernel_patch_9,
		kernel_t kernel_patch_10,
		kernel_t kernel_patch_11,
		kernel_t kernel_patch_12,
		kernel_t kernel_patch_13,
		kernel_t kernel_patch_14,
		kernel_t kernel_patch_15,
		kernel_t kernel_patch_16,
		kernel_t kernel_patch_17,
		kernel_t kernel_patch_18,
		kernel_t kernel_patch_19,
		kernel_t kernel_patch_20,
		kernel_t kernel_patch_21,
		kernel_t kernel_patch_22,
		kernel_t kernel_patch_23,
		kernel_t kernel_patch_24,
		kernel_t kernel_patch_25,
		kernel_t kernel_patch_26,
		kernel_t kernel_patch_27,
		kernel_t kernel_patch_28,
		kernel_t kernel_patch_29,
		kernel_t kernel_patch_30,
		kernel_t kernel_patch_31,
		kernel_t kernel_patch_32,
		kernel_t kernel_patch_33,
		kernel_t kernel_patch_34,
		kernel_t kernel_patch_35,
		kernel_t kernel_patch_36,
		kernel_t kernel_patch_37,
		kernel_t kernel_patch_38,
		kernel_t kernel_patch_39,
		kernel_t kernel_patch_40,
		kernel_t kernel_patch_41,
		kernel_t kernel_patch_42,
		kernel_t kernel_patch_43,
		kernel_t kernel_patch_44,
		kernel_t kernel_patch_45,
		kernel_t kernel_patch_46,
		kernel_t kernel_patch_47,
		kernel_t kernel_patch_48,

		pixel_t pixel_window_0,
		pixel_t pixel_window_1,
		pixel_t pixel_window_2,
		pixel_t pixel_window_3,
		pixel_t pixel_window_4,
		pixel_t pixel_window_5,
		pixel_t pixel_window_6,
		pixel_t pixel_window_7,
		pixel_t pixel_window_8,
		pixel_t pixel_window_9,
		pixel_t pixel_window_10,
		pixel_t pixel_window_11,
		pixel_t pixel_window_12,
		pixel_t pixel_window_13,
		pixel_t pixel_window_14,
		pixel_t pixel_window_15,
		pixel_t pixel_window_16,
		pixel_t pixel_window_17,
		pixel_t pixel_window_18,
		pixel_t pixel_window_19,
		pixel_t pixel_window_20,
		pixel_t pixel_window_21,
		pixel_t pixel_window_22,
		pixel_t pixel_window_23,
		pixel_t pixel_window_24,
		pixel_t pixel_window_25,
		pixel_t pixel_window_26,
		pixel_t pixel_window_27,
		pixel_t pixel_window_28,
		pixel_t pixel_window_29,
		pixel_t pixel_window_30,
		pixel_t pixel_window_31,
		pixel_t pixel_window_32,
		pixel_t pixel_window_33,
		pixel_t pixel_window_34,
		pixel_t pixel_window_35,
		pixel_t pixel_window_36,
		pixel_t pixel_window_37,
		pixel_t pixel_window_38,
		pixel_t pixel_window_39,
		pixel_t pixel_window_40,
		pixel_t pixel_window_41,
		pixel_t pixel_window_42,
		pixel_t pixel_window_43,
		pixel_t pixel_window_44,
		pixel_t pixel_window_45,
		pixel_t pixel_window_46,
		pixel_t pixel_window_47,
		pixel_t pixel_window_48,


		bool sop_enable,


		bool &out_valid,
		fm_t &out_val
		)

{

#pragma HLS INTERFACE ap_ctrl_none port=return

	out_val = 0;

	fm_t intermediate_add [7] = {0,0,0,0,0,0,0};

	/* Parallel Multiplication */

	fm_t mult_buf_0;
	fm_t mult_buf_1;
	fm_t mult_buf_2;
	fm_t mult_buf_3;
	fm_t mult_buf_4;
	fm_t mult_buf_5;
	fm_t mult_buf_6;
	fm_t mult_buf_7;
	fm_t mult_buf_8;
	fm_t mult_buf_9;
	fm_t mult_buf_10;
	fm_t mult_buf_11;
	fm_t mult_buf_12;
	fm_t mult_buf_13;
	fm_t mult_buf_14;
	fm_t mult_buf_15;
	fm_t mult_buf_16;
	fm_t mult_buf_17;
	fm_t mult_buf_18;
	fm_t mult_buf_19;
	fm_t mult_buf_20;
	fm_t mult_buf_21;
	fm_t mult_buf_22;
	fm_t mult_buf_23;
	fm_t mult_buf_24;
	fm_t mult_buf_25;
	fm_t mult_buf_26;
	fm_t mult_buf_27;
	fm_t mult_buf_28;
	fm_t mult_buf_29;
	fm_t mult_buf_30;
	fm_t mult_buf_31;
	fm_t mult_buf_32;
	fm_t mult_buf_33;
	fm_t mult_buf_34;
	fm_t mult_buf_35;
	fm_t mult_buf_36;
	fm_t mult_buf_37;
	fm_t mult_buf_38;
	fm_t mult_buf_39;
	fm_t mult_buf_40;
	fm_t mult_buf_41;
	fm_t mult_buf_42;
	fm_t mult_buf_43;
	fm_t mult_buf_44;
	fm_t mult_buf_45;
	fm_t mult_buf_46;
	fm_t mult_buf_47;
	fm_t mult_buf_48;




	mult_buf_0 = kernel_patch_0 * pixel_window_0 ;
	mult_buf_1 = kernel_patch_1 * pixel_window_1 ;
	mult_buf_2 = kernel_patch_2 * pixel_window_2 ;
	mult_buf_3 = kernel_patch_3 * pixel_window_3 ;
	mult_buf_4 = kernel_patch_4 * pixel_window_4 ;
	mult_buf_5 = kernel_patch_5 * pixel_window_5 ;
	mult_buf_6 = kernel_patch_6 * pixel_window_6 ;
	mult_buf_7 = kernel_patch_7 * pixel_window_7 ;
	mult_buf_8 = kernel_patch_8 * pixel_window_8 ;
	mult_buf_9 = kernel_patch_9 * pixel_window_9 ;
	mult_buf_10 = kernel_patch_10 * pixel_window_10 ;
	mult_buf_11 = kernel_patch_11 * pixel_window_11 ;
	mult_buf_12 = kernel_patch_12 * pixel_window_12 ;
	mult_buf_13 = kernel_patch_13 * pixel_window_13 ;
	mult_buf_14 = kernel_patch_14 * pixel_window_14 ;
	mult_buf_15 = kernel_patch_15 * pixel_window_15 ;
	mult_buf_16 = kernel_patch_16 * pixel_window_16 ;
	mult_buf_17 = kernel_patch_17 * pixel_window_17 ;
	mult_buf_18 = kernel_patch_18 * pixel_window_18 ;
	mult_buf_19 = kernel_patch_19 * pixel_window_19 ;
	mult_buf_20 = kernel_patch_20 * pixel_window_20 ;
	mult_buf_21 = kernel_patch_21 * pixel_window_21 ;
	mult_buf_22 = kernel_patch_22 * pixel_window_22 ;
	mult_buf_23 = kernel_patch_23 * pixel_window_23 ;
	mult_buf_24 = kernel_patch_24 * pixel_window_24 ;
	mult_buf_25 = kernel_patch_25 * pixel_window_25 ;
	mult_buf_26 = kernel_patch_26 * pixel_window_26 ;
	mult_buf_27 = kernel_patch_27 * pixel_window_27 ;
	mult_buf_28 = kernel_patch_28 * pixel_window_28 ;
	mult_buf_29 = kernel_patch_29 * pixel_window_29 ;
	mult_buf_30 = kernel_patch_30 * pixel_window_30 ;
	mult_buf_31 = kernel_patch_31 * pixel_window_31 ;
	mult_buf_32 = kernel_patch_32 * pixel_window_32 ;
	mult_buf_33 = kernel_patch_33 * pixel_window_33 ;
	mult_buf_34 = kernel_patch_34 * pixel_window_34 ;
	mult_buf_35 = kernel_patch_35 * pixel_window_35 ;
	mult_buf_36 = kernel_patch_36 * pixel_window_36 ;
	mult_buf_37 = kernel_patch_37 * pixel_window_37 ;
	mult_buf_38 = kernel_patch_38 * pixel_window_38 ;
	mult_buf_39 = kernel_patch_39 * pixel_window_39 ;
	mult_buf_40 = kernel_patch_40 * pixel_window_40 ;
	mult_buf_41 = kernel_patch_41 * pixel_window_41 ;
	mult_buf_42 = kernel_patch_42 * pixel_window_42 ;
	mult_buf_43 = kernel_patch_43 * pixel_window_43 ;
	mult_buf_44 = kernel_patch_44 * pixel_window_44 ;
	mult_buf_45 = kernel_patch_45 * pixel_window_45 ;
	mult_buf_46 = kernel_patch_46 * pixel_window_46 ;
	mult_buf_47 = kernel_patch_47 * pixel_window_47 ;
	mult_buf_48 = kernel_patch_48 * pixel_window_48 ;

	/*Adder Tree */

	intermediate_add[0] = mult_buf_0 + mult_buf_1 + mult_buf_2 + mult_buf_3 + mult_buf_4 + mult_buf_5 + mult_buf_6;
	intermediate_add[1] = mult_buf_7 + mult_buf_8 + mult_buf_9 + mult_buf_10 + mult_buf_11 + mult_buf_12 + mult_buf_13;
	intermediate_add[2] = mult_buf_14 + mult_buf_15 + mult_buf_16 + mult_buf_17 + mult_buf_18 + mult_buf_19 + mult_buf_20;
	intermediate_add[3] = mult_buf_21 + mult_buf_22 + mult_buf_23 + mult_buf_24 + mult_buf_25 + mult_buf_26 + mult_buf_27;
	intermediate_add[4] = mult_buf_28 + mult_buf_29 + mult_buf_30 + mult_buf_31 + mult_buf_32 + mult_buf_33 + mult_buf_34;
	intermediate_add[5] = mult_buf_35 + mult_buf_36 + mult_buf_37 + mult_buf_38 + mult_buf_39 + mult_buf_40 + mult_buf_41;
	intermediate_add[6] = mult_buf_42 + mult_buf_43 + mult_buf_44 + mult_buf_45 + mult_buf_46 + mult_buf_47 + mult_buf_48;


	if (sop_enable)
	{
		for (int i = 0; i < 7; i++)
		{

#pragma HLS unroll
			out_val = out_val + intermediate_add[i];
		}

		out_valid = true;

	}

	else
	{
		out_val = 0;
		out_valid = false;

	}



}
