#pragma once
#include <stdint.h>
#include "include/fixed.h"

#define FACE_NONE       (1 << 0) // my favorite face of a cube, the NULL face
#define FACE_TOP        (1 << 1) // +Y
#define FACE_NORTH      (1 << 2) // +X
#define FACE_EAST       (1 << 3) // +Z
#define FACE_BOTTOM     (1 << 4) // -Y
#define FACE_SOUTH      (1 << 5) // -X
#define FACE_WEST       (1 << 6) // -Z

#define grid_width 32 
#define grid_height 32
#define grid_depth 32

extern uint8_t grid[32768];
struct vector3{
    fixed x;
    fixed y;
    fixed z;
};
struct vector2{
    fixed x;
    fixed y;
};
struct ray{
    struct vector3 origin;
    struct vector3 d_vector;
};
struct face{
    struct vector3 intersect_pos;
    struct vector3 voxel_pos;
    struct vector3 face_uv;
    fixed distance;
    uint8_t type;
    uint8_t face;
};

struct face traverse_grid(struct ray ray, fixed max_distance);