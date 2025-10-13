#pragma once
#include <stdint.h>
#include <math.h>
//#include <debug.h> // Include the debug header
// based on https://blarg.ca/2020/10/11/fixed-point-math
typedef int16_t fixed;

#define PI_CONST 804
#define TAU_CONST 1608

#define float_to_fixed(f) ((fixed)((f) * 256.0f))
#define int_to_fixed(i) ((fixed)(((int24_t)i)<<8))
#define fixed_to_float(x)      ((float)((x) * 0.00390625f))
//#define fixed_to_int(x)      ((int)((x)/256))
#define fixed_to_int(x)      ((x >= 0) ? ((uint16_t)x>>8) : -((int16_t)((uint16_t)(-x)>>8)))
#define fixed_mult(x, y)      (fixed)(((int32_t)x * (int32_t)y)>>8)
#define fixed_div(x, y)      (fixed)((((int24_t)x)*256) / (int24_t)y)

extern const fixed sin_lut[1024];


inline fixed fixed_mod(fixed x, fixed y){
    fixed r = x % y;
    return r < 0 ? r + y : r;
}
inline fixed fixed_max(fixed x, fixed y){
    return (x > y) ? (x) : (y);
}
inline fixed fixed_min(fixed x, fixed y){
    return (x > y) ? (y) : (x);
}
inline fixed fixed_abs(fixed x){
    return (x >= 0) ? (x) : -(x);
}

inline fixed fixed_sin(fixed x){
    // No intentions on using linear interpolation
    /*
    fixed x_mod = fixed_mod(x, TAU_CONST);
    fixed i = fixed_mult(x_mod, 41556);            // 41556 = 4 * ((255/tau) * 256)
    dbg_printf("%d\n", (uint8_t)fixed_to_int(i));
    switch(fixed_to_int(fixed_mult(x_mod, 163))) { // 163 = (2/pi) * 256
        case(0):
        return sin_lut[(uint8_t)fixed_to_int(i)];
        case(1):
        return sin_lut[255 - (uint8_t)fixed_to_int(i)];
        case(2):
        return -sin_lut[(uint8_t)fixed_to_int(i)];
        case(3):
        return -sin_lut[255 - (uint8_t)fixed_to_int(i)];
        default:
        return 0;
    }*/

    // Temporary solution of the 1337 h4x0ring variety
    // (code is when random numbers in system font, and the more random numbers in system font there are the more code it is, and when there's a lot of random numbers in system font in code, it's haxxoring)
    //return float_to_fixed(sinf(fixed_to_float(x)));

    //fixed x_mod = fixed_mod(x, TAU_CONST);
    fixed i = fixed_mult(x, 10390); // 10390 = ((255/tau) * 256)
    return sin_lut[(uint16_t)fixed_to_int(i) * 4 + 512];
}

inline fixed fixed_cos(fixed x){
    return fixed_sin(x + 402); // 402 = (pi/2) * 256
}


fixed sub_fixed_sin(fixed x);
fixed sub_fixed_cos(fixed x);