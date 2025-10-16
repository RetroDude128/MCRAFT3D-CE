#pragma once
#include <stdint.h>
#include "fixed.h"
#include "ray.h"

extern uint8_t free_entity_stack[64];
extern uint8_t fes_pointer;
extern struct entity entities;
struct entity{
    uint24_t *specific_attributes[64];
    fixed dx[64];
    fixed dy[64];
    fixed dz[64];
    fixed origin_x[64];
    fixed origin_y[64];
    fixed origin_z[64];
    fixed rot_x[64];
    fixed rot_y[64];
    fixed rot_z[64];
    fixed hit_box_x1_offset[64];
    fixed hit_box_x2_offset[64];
    fixed hit_box_y1_offset[64];
    fixed hit_box_y2_offset[64];
    fixed hit_box_z1_offset[64];
    fixed hit_box_z2_offset[64];
    fixed collide_box_x1_offset[64];
    fixed collide_box_x2_offset[64];
    fixed collide_box_y1_offset[64];
    fixed collide_box_y2_offset[64];
    fixed collide_box_z1_offset[64];
    fixed collide_box_z2_offset[64];
    fixed age[64];
    uint16_t state[64];
    uint8_t type[64];
};

void entity_system_init();
uint8_t entity_spawn(uint8_t type, struct vector3 origin, struct vector3 rotation);
void entity_despawn(uint8_t entity_index);
void entity_tick();

// Generic Entity
void generic_move(uint8_t entity_index);