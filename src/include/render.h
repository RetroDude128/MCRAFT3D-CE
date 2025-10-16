#pragma once
#include <stdint.h>
#include "include/ray.h"
#include "include/fixed.h"

struct camera{
    fixed pos_x;
    fixed pos_y;
    fixed pos_z;
    fixed rot_x;
    fixed rot_y;
    fixed rot_z;
};

void render(uint8_t* buffer, fixed render_distance, fixed Mult, struct camera camera, uint8_t dbg, uint8_t section);
struct vector3 rotate_onaxis(struct vector3 point, int axis, fixed sine, fixed cosine);
struct vector2 rotate_2d(struct vector2 point, fixed sine, fixed cosine);
extern uint16_t rng_table[256];
extern uint8_t rng_tpos;

inline uint16_t t_rng(){
    return rng_table[rng_tpos++];
}
