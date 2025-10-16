#include <string.h>
#include <stdio.h>
#include <debug.h>
#include <stdlib.h>
#include <math.h>
#include <sys/timers.h>
#include <ti/screen.h>
#include <sys/lcd.h>
#include <keypadc.h>
#include <stdlib.h>
#include <graphx.h>
#include "include/fixed.h"
#include "include/ray.h"
#include "include/render.h"

#define render_pixel_shift 2

uint16_t rx_start = 40>>render_pixel_shift;
uint16_t rx_end = 280>>render_pixel_shift;
uint16_t ry_end = 180>>render_pixel_shift;
#define x_offset -160
#define y_offset -90

uint8_t texture[4][4] = {
    {28,28,31,28},
    {31,18,28,18},
    {18,42,18,42},
    {42,53,42,53}
};

void render(uint8_t* buffer, fixed render_distance, fixed Mult, struct camera camera, uint8_t dbg, uint8_t section){
    //memset(buffer, 0, 320 * 240);
    //uint8_t offset_x = (section&1)<<2;
    //uint8_t offset_y = ((section>>1)&1)<<2;
    //offset_y = offset_x;
    //offset_x = 0;
    uint8_t offset_x = 0;
    uint8_t offset_y = (section&1)<<(render_pixel_shift-1);
    //fixed render_distance_reciprocal = fixed_div(int_to_fixed(1), render_distance);
    fixed scale = fixed_div(Mult, int_to_fixed(320));
    fixed uscale;
    /*if (camera.pos_x < 0 || camera.pos_x >= int_to_fixed(32) ||
        camera.pos_y < 0 || camera.pos_y >= int_to_fixed(32) ||
        camera.pos_z < 0 || camera.pos_z >= int_to_fixed(32)){
            return;
    }*/

    fixed u;
    fixed v;
    struct ray render_ray; 
    //struct vector3 rotation; 
    struct face iface;
    
    //float sx = sin(camera.rot_x);
    //float cx = cos(camera.rot_x);
    fixed sy = sub_fixed_sin(camera.rot_y);
    fixed cy = sub_fixed_cos(camera.rot_y);
    fixed sz = sub_fixed_sin(camera.rot_z);
    fixed cz = sub_fixed_cos(camera.rot_z);
    int16_t x;
    int16_t y;
    fixed fog_dist = fixed_mult(render_distance, 96);
    render_ray.origin.x = camera.pos_x;
    render_ray.origin.y = camera.pos_y;
    render_ray.origin.z = camera.pos_z;
    fixed skip_field;
    uint8_t skip_pixel;
    uint8_t skip_pixel_below[320]; 
    memset(skip_pixel_below, 0, 320);
    uint8_t r_color[320]; 
    fixed skip_condition_distances[3] = {fixed_div(int_to_fixed(1), Mult), fixed_div(int_to_fixed(2), Mult), fixed_div(int_to_fixed(8), Mult)};
    t_rng();
    fixed u_start;
    fixed v_start;
    u_start = fixed_mult(int_to_fixed((rx_start<<render_pixel_shift) + x_offset), scale);
    v_start = fixed_mult(int_to_fixed(y_offset), scale);
    v = v_start;
    fixed uv_inc = fixed_mult((int_to_fixed(1<<render_pixel_shift)), scale);
    uint8_t r;
    fixed deltatime;
    for (uint16_t ry = 0; ry < ry_end; ry++){
        y = ry<<render_pixel_shift;
        if ((y & 3) == 0){
            kb_Scan();
            if (kb_Data[6] & kb_Clear) {
                memset(buffer, 0, 76800);
                return;
            }
        }
        //v = fixed_mult(int_to_fixed(y + y_offset), scale);
        u = u_start;
        skip_pixel=0;
        r = t_rng() & 3;
        for (uint16_t rx = rx_start; rx < rx_end; rx++){
            x = rx<<render_pixel_shift;
            /*if (skip_pixel_below[x]){
                if (skip_pixel)
                    skip_pixel--;
                skip_pixel_below[x] = 0;
                if (dbg) iface.type = 0;
                else iface.type = r_color[x];
                if (iface.type == 0 && (iface.distance < fog_dist))
                    continue;
                goto skipray;
            }*/
            if (skip_pixel){
                skip_pixel--;
                if (dbg) {
                    iface.type = 0;
                    iface.distance = 0;
                }
                goto skipray;
            }
            //u = fixed_mult(int_to_fixed(x + x_offset), scale);
            render_ray.d_vector.x = 256;
            //render_ray.d_vector.y = 0.0f;
            //render_ray.d_vector.z = 0.0f;
            render_ray.d_vector.z = u + offset_x;
            render_ray.d_vector.y = v + offset_y;
            //uscale = sqrtf(render_ray.d_vector.z*render_ray.d_vector.z + render_ray.d_vector.y*render_ray.d_vector.y + render_ray.d_vector.x*render_ray.d_vector.x);
            //uscale = int_to_fixed(1);
            /*render_ray.d_vector.x /= uscale;
            render_ray.d_vector.y /= uscale;
            render_ray.d_vector.z /= uscale;*/
            //render_ray.d_vector = rotate_point(render_ray.d_vector, rotation);
            render_ray.d_vector = rotate_onaxis(render_ray.d_vector, 2, sz, cz);
            render_ray.d_vector = rotate_onaxis(render_ray.d_vector, 1, sy, cy);
            //render_ray.d_vector = rotate_point(render_ray.d_vector, rotation);
            iface = traverse_grid(render_ray, render_distance);
            //uint32_t r = ((iface.face & (FACE_TOP | FACE_BOTTOM)) != 0) ? 255 : 0;
            //uint32_t g = ((iface.face & (FACE_NORTH | FACE_SOUTH)) != 0) ? 255 : 0;
            //uint32_t b = ((iface.face & (FACE_EAST | FACE_WEST)) != 0) ? 255 : 0;
            /*if (Mult != 0 && iface.type != 0 && skip_field < 112 && iface.distance < skip_condition_distances[2]){
                if (iface.distance < skip_condition_distances[0] && skip_field < 72)
                    skip_pixel = 4;
                else if (iface.distance < skip_condition_distances[1] && skip_field < 96)
                    skip_pixel = 2;
                else
                    skip_pixel = 1;
                //skip_pixel = 0;
            }*/

            if (iface.type){
                iface.type = texture[fixed_to_int(iface.face_uv.y<<2)][fixed_to_int(iface.face_uv.x<<2)];
                //iface.type = iface.type;
            }
            else {
                iface.type = 0xF0;
                skip_pixel = 2;
            }
            if (iface.face & (FACE_TOP))
                iface.type = 0b11000000 | (iface.type & 63);
            else if (iface.face & (FACE_NORTH | FACE_EAST))
                iface.type = 0b10000000 | (iface.type & 63);
            else if (iface.face & (FACE_SOUTH | FACE_WEST))
                iface.type = 0b01000000 | (iface.type & 63);
            else if (iface.face & (FACE_BOTTOM))
                iface.type = 0b00000000 | (iface.type & 63);
            /*if (iface.face != 0 && fixed_max(fixed_abs(iface.face_uv.x - 128), fixed_abs(iface.face_uv.y - 128)) > 64){
                iface.type = 0x00;
            }*/
        
            /*if (iface.type == 0 && (iface.distance < fog_dist)){
                skip_pixel = 1;
                if (dbg){
                    iface.type = 2;
                    goto skipray;
                }
                else
                    goto skipray;
            }*/

            skip_field = fixed_max(fixed_abs(((iface.face_uv.x<<2)&0xff) - 128), fixed_abs(((iface.face_uv.y<<2)&0xff) - 128));
            if ((x != 0) && (((x&3) == r) || (Mult != 0 && iface.type != 0 && skip_field < 120 && iface.distance < skip_condition_distances[2]))){
                if ((skip_field < 96 && iface.distance < skip_condition_distances[1])){
                    skip_pixel = 2;
                    //r_color[x] = iface.type;
                    //skip_pixel_below[x] = 1;
                }
                else{
                    skip_pixel = 1;
                }
            }
            skipray:
            for (int px_y = 0; px_y < 3; px_y++){
                for (int px_x = 0; px_x < 4; px_x++){
                    //buffer[(x+(px_x<<0)) + ((y+(px_y<<0)) * 320)] = iface.type;
                    if ((iface.distance < fog_dist) || (px_x^(px_y))&1)
                        buffer[(offset_x+x+(px_x<<0)) + ((offset_y+y+(px_y<<0)) * 320)] = iface.type;
                    else
                        buffer[(offset_x+x+(px_x<<0)) + ((offset_y+y+(px_y<<0)) * 320)] = 0xF0;
                }
            }
            u += uv_inc;
        }
        v += uv_inc;
    }
    return;
}

struct vector3 rotate_onaxis(struct vector3 point, int axis, fixed sine, fixed cosine){
    struct vector3 output;
    switch (axis){
        case 0:
            // Rotate on X Axis
            output.y = fixed_mult(point.y, cosine) - fixed_mult(point.z, sine);
            output.z = fixed_mult(point.y, sine) + fixed_mult(point.z, cosine);
            output.x = point.x;
            break;
        case 1:
            // Rotate on Y Axis
            output.z = fixed_mult(point.z, cosine) - fixed_mult(point.x, sine);
            output.x = fixed_mult(point.z, sine) + fixed_mult(point.x, cosine);
            output.y = point.y;
            break;
        case 2:
            // Rotate on Z Axis
            output.x = fixed_mult(point.x, cosine) - fixed_mult(point.y, sine);
            output.y = fixed_mult(point.x, sine) + fixed_mult(point.y, cosine);
            output.z = point.z;
            break;
    }
    return output;
}

struct vector2 rotate_2d(struct vector2 point, fixed sine, fixed cosine){
    struct vector2 output;
    output.x = fixed_mult(point.x, cosine) - fixed_mult(point.y, sine);
    output.y = fixed_mult(point.x, sine) + fixed_mult(point.y, cosine);
    return output;
}

uint8_t rng_tpos = 0;
uint16_t rng_table[256] = {24954, 50352, 5005, 48825, 38088, 42840, 2831, 7593, 25184, 35893, 32906, 41791, 15397, 47540, 29812, 43673, 
12539, 48433, 26401, 62166, 42399, 13739, 49884, 35890, 52480, 7094, 26643, 58938, 61659, 54244, 55376, 50685, 
32343, 54120, 64912, 35597, 30426, 54247, 10400, 57285, 43244, 36221, 9638, 40841, 43035, 26627, 14876, 484, 
54783, 517, 10051, 40716, 23882, 10910, 62832, 4244, 52098, 52632, 44050, 44917, 37537, 29619, 58756, 62329, 
59750, 8602, 21105, 38885, 29922, 47773, 13154, 16510, 64167, 20428, 49994, 25506, 5219, 4314, 22125, 41206, 
50024, 26259, 31157, 8290, 41784, 43725, 47934, 6483, 44279, 29099, 37612, 46449, 3475, 40434, 47279, 52452, 
11677, 19566, 57057, 26584, 53353, 14870, 40121, 287, 36563, 17129, 51629, 12308, 33889, 63149, 63121, 54067, 
4637, 19223, 6570, 32526, 886, 16618, 23904, 13533, 43300, 4554, 27963, 59732, 37408, 61530, 18495, 15485, 
59046, 57508, 35670, 39431, 1610, 356, 56098, 10085, 31546, 30304, 36002, 25207, 26050, 22328, 16756, 14060, 
7738, 53103, 50349, 41790, 59523, 60166, 33575, 110, 24266, 42900, 9104, 40203, 43921, 38170, 50086, 50938, 
34264, 9397, 7108, 26644, 43159, 48197, 52725, 42829, 63509, 41255, 38944, 57100, 45376, 12818, 50674, 37406, 
17974, 331, 46098, 24488, 27628, 56423, 16720, 22527, 25414, 53544, 30990, 50305, 28105, 28977, 59866, 3719, 
16127, 18208, 35658, 21859, 50654, 22023, 58543, 20580, 6241, 20139, 12742, 38622, 60869, 55208, 62746, 55919, 
38396, 40040, 28479, 57562, 38480, 9375, 51650, 31556, 42251, 30455, 2347, 34952, 12224, 16349, 26662, 5553, 
51097, 56893, 50572, 48555, 53201, 11512, 50991, 24203, 1531, 358, 8830, 22841, 27273, 35489, 17827, 29326, 
37000, 27305, 34547, 52166, 38204, 3725, 14852, 61466, 46450, 56959, 23905, 24823, 25986, 13480, 31763, 55639};