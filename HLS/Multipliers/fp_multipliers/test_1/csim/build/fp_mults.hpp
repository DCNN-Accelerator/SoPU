#ifndef fp_mults_h
#define fp_mults_h

#include "ap_fixed.h"

typedef ap_fixed<8,1,AP_RND> kernel_t;
typedef ap_ufixed<8,8,AP_RND> pixel_t;

typedef ap_fixed<16,14,AP_RND> fm_t;


void fp_sop (kernel_t kernel_patch[49], pixel_t pixel_window[49], fm_t &out_val);


#endif
