#include <stdint.h>
#include "include/fixed.h"
#include "include/ray.h"
uint8_t grid[32768];

// Based on http://www.cse.yorku.ca/~amana/research/grid.pdf
struct face traverse_grid(struct ray ray, fixed max_distance){
    struct face output;
    /*if (ray.origin.x >= 8192 || ray.origin.x < 0 || // 8192 = 32 * 256
        ray.origin.y >= 8192 || ray.origin.y < 0 ||
        ray.origin.z >= 8192 || ray.origin.z < 0
    ){
        output.face = FACE_NONE;
        output.intersect_pos = ray.origin;
        output.type = 0;
        output.distance = 0;
        output.face_uv.x = 127;
        output.face_uv.y = 127;
        return output;
    }*/
    struct vector3 direction_incdec;
    direction_incdec.x = (ray.d_vector.x >= 0) ? 256 : -256;
    direction_incdec.y = (ray.d_vector.y >= 0) ? 256 : -256;
    direction_incdec.z = (ray.d_vector.z >= 0) ? 256 : -256;
    struct vector3 direction_incdec_int;
    direction_incdec_int.x = (ray.d_vector.x >= 0) ? 1 : -1;
    direction_incdec_int.y = (ray.d_vector.y >= 0) ? 1 : -1;
    direction_incdec_int.z = (ray.d_vector.z >= 0) ? 1 : -1;
    fixed scalar = 0;
    //uint8_t scalar_validity = 0xff;
    uint8_t reciprocal_validity = 0;

    struct vector3 d_reciprocals;

    // compute reciprocals
    if (ray.d_vector.x == 0){
        d_reciprocals.x = 0x7fff; // Dummy value
    }
    else{
        d_reciprocals.x = fixed_div(256, ray.d_vector.x);
        reciprocal_validity |= 0b001;
    }
    // Repeat for other axes
    if (ray.d_vector.y == 0){
        d_reciprocals.y = 0x7fff;
    }
    else{
        d_reciprocals.y = fixed_div(256, ray.d_vector.y);
        reciprocal_validity |= 0b010;
    }
    if (ray.d_vector.z == 0){
        d_reciprocals.z = 0x7fff;
    }
    else{
        d_reciprocals.z = fixed_div(256, ray.d_vector.z);
        reciprocal_validity |= 0b100;
    }
    struct vector3 intersection_point;
    intersection_point = ray.origin;
    uint8_t current_voxel_x = fixed_to_int(intersection_point.x);
    uint8_t current_voxel_y = fixed_to_int(intersection_point.y);
    uint8_t current_voxel_z = fixed_to_int(intersection_point.z);

    struct vector3 scalarMax;
    struct vector3 scalarDelta;

    scalarMax.x = fixed_mult(((int_to_fixed(current_voxel_x) + fixed_max(direction_incdec.x, 0)) - ray.origin.x), d_reciprocals.x);
    scalarMax.y = fixed_mult(((int_to_fixed(current_voxel_y) + fixed_max(direction_incdec.y, 0)) - ray.origin.y), d_reciprocals.y);
    scalarMax.z = fixed_mult(((int_to_fixed(current_voxel_z) + fixed_max(direction_incdec.z, 0)) - ray.origin.z), d_reciprocals.z);

    scalarDelta.x = fixed_abs(d_reciprocals.x);
    scalarDelta.y = fixed_abs(d_reciprocals.y);
    scalarDelta.z = fixed_abs(d_reciprocals.z);

    output.voxel_pos.x=-32000;
    output.voxel_pos.y=-32000;
    output.voxel_pos.z=-32000;

    uint8_t uv_switch;

    while (1){
        if (scalar >= max_distance){
            output.face = FACE_NONE;
            output.intersect_pos = ray.origin;
            output.type = 0;
            output.distance = INT16_MAX;
            output.face_uv.x = 127;
            output.face_uv.y = 127;
            return output;
        }
        if(scalarMax.x < scalarMax.y){
            if((scalarMax.x < scalarMax.z || ((reciprocal_validity & 4) == 0)) && !((reciprocal_validity & 1) == 0)){
                current_voxel_x += direction_incdec_int.x;
                output.voxel_pos.x = current_voxel_x<<8;
                uv_switch = 0;
                scalar = scalarMax.x;
                if (current_voxel_x >= grid_width){
                    output.face = FACE_NONE;
                    output.intersect_pos = ray.origin;
                    output.type = 0;
                    output.distance = scalar;
                    output.face_uv.x = 127;
                    output.face_uv.y = 127;
                    return output;
                }
                scalarMax.x += scalarDelta.x;
            }
            else {
                current_voxel_z += direction_incdec_int.z;
                output.voxel_pos.z = current_voxel_z<<8;
                uv_switch = 2;
                scalar = scalarMax.z;
                if (current_voxel_z >= grid_depth){
                    output.face = FACE_NONE;
                    output.intersect_pos = ray.origin;
                    output.type = 0;
                    output.distance = scalar;
                    output.face_uv.x = 127;
                    output.face_uv.y = 127;
                    return output;
                }
                scalarMax.z += scalarDelta.z;
            }
        }
        else{
            if((scalarMax.y < scalarMax.z || ((reciprocal_validity & 4) == 0)) && !((reciprocal_validity & 2) == 0)){
                current_voxel_y += direction_incdec_int.y;
                output.voxel_pos.y = current_voxel_y<<8;
                uv_switch = 1;
                scalar = scalarMax.y;
                if (current_voxel_y >= grid_height){
                    output.face = FACE_NONE;
                    output.intersect_pos = ray.origin;
                    output.type = 0;
                    output.distance = scalar;
                    output.face_uv.x = 127;
                    output.face_uv.y = 127;
                    return output;
                }
                scalarMax.y += scalarDelta.y;
            }
            else {
                current_voxel_z += direction_incdec_int.z;
                output.voxel_pos.z = current_voxel_z<<8;
                uv_switch = 2;
                scalar = scalarMax.z;
                if (current_voxel_z >= grid_depth){
                    output.face = FACE_NONE;
                    output.intersect_pos = ray.origin;
                    output.type = 0;
                    output.distance = scalar;
                    output.face_uv.x = 127;
                    output.face_uv.y = 127;
                    return output;
                }
                scalarMax.z += scalarDelta.z;
            }
        }
        uint16_t voxel_index = (current_voxel_x & 0b00011111) + ((current_voxel_y & 0b00011111)<<5) + ((current_voxel_z & 0b00011111)<<10);
        if (grid[voxel_index] != 0 && scalar < max_distance){
            intersection_point.x = ray.origin.x + (fixed_mult(ray.d_vector.x, scalar));
            intersection_point.y = ray.origin.y + (fixed_mult(ray.d_vector.y, scalar));
            intersection_point.z = ray.origin.z + (fixed_mult(ray.d_vector.z, scalar));
            output.intersect_pos = intersection_point;
            output.type = grid[voxel_index];
            output.distance = scalar;
            switch (uv_switch){
                case 0:
                    output.face_uv.x = intersection_point.z & 0xff;
                    output.face_uv.y = intersection_point.y & 0xff;
                    if (direction_incdec.x > 0){
                        output.face = FACE_SOUTH;
                    }
                    else {
                        output.face = FACE_NORTH;
                    }
                break;
                case 1:
                    output.face_uv.x = intersection_point.z & 0xff;
                    output.face_uv.y = intersection_point.x & 0xff;
                    if (direction_incdec.y > 0){
                        output.face = FACE_BOTTOM;
                    }
                    else {
                        output.face = FACE_TOP;
                    }
                break;
                case 2:
                    output.face_uv.x = intersection_point.x & 0xff;
                    output.face_uv.y = intersection_point.y & 0xff;
                    if (direction_incdec.z > 0){
                        output.face = FACE_WEST;
                    }
                    else {
                        output.face = FACE_EAST;
                    }
                break;
            }
            return output;
        }
    }
}