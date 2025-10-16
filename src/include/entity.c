#include <stdint.h>
#include "include/entity.h"
#include "include/fixed.h"
#include "include/ray.h"

uint8_t free_entity_stack[64];
uint8_t fes_pointer = 0;

struct entity entities;
void entity_system_init(){
    fes_pointer = 255;
    for (int i = 63; i >= 0; i--){
        fes_pointer++;
        free_entity_stack[fes_pointer] = (uint8_t)i;
    }
    return;
}
uint8_t entity_spawn(uint8_t type, struct vector3 origin, struct vector3 rotation){
    uint8_t index = free_entity_stack[fes_pointer];
    fes_pointer--;
    entities.dx[index] = 0;
    entities.dy[index] = 0;
    entities.dz[index] = 0;
    entities.origin_x[index] = origin.x;
    entities.origin_y[index] = origin.y;
    entities.origin_z[index] = origin.z;
    entities.rot_x[index] = rotation.x;
    entities.rot_y[index] = rotation.y;
    entities.rot_z[index] = rotation.z;
    return index;
}
void entity_despawn(uint8_t entity_index){ 
    fes_pointer++;
    free_entity_stack[fes_pointer] = entity_index;
    return;
}

void entity_tick(){
    for (int i = 0; i < 64; i++){
        break;
    }
}

/*void generic_voxel_collision_check(uint8_t entity_index){

}*/

void generic_move(uint8_t entity_index){
    fixed new_x = entities.origin_x[entity_index] + entities.dx[entity_index];
    fixed new_y = entities.origin_y[entity_index] + entities.dy[entity_index];
    fixed new_z = entities.origin_z[entity_index] + entities.dz[entity_index];
    int new_x_int = fixed_to_int(new_x);
    int new_y_int = fixed_to_int(new_y);
    int new_z_int = fixed_to_int(new_z);
    int old_x_int = fixed_to_int(entities.origin_x[entity_index]);
    int old_y_int = fixed_to_int(entities.origin_y[entity_index]);
    int old_z_int = fixed_to_int(entities.origin_z[entity_index]);
    if (entities.dx[entity_index] > entities.dz[entity_index]) {
        if (grid[get_voxel_index(new_x_int, old_y_int, old_z_int)] == 0)
            entities.origin_x[entity_index] = new_x;
        if (grid[get_voxel_index(old_x_int, old_y_int, new_z_int)] == 0)
            entities.origin_z[entity_index] = new_z;
    }
    else {
        if (grid[get_voxel_index(old_x_int, old_y_int, new_z_int)] == 0)
            entities.origin_z[entity_index] = new_z;
        if (grid[get_voxel_index(new_x_int, old_y_int, old_z_int)] == 0)
            entities.origin_x[entity_index] = new_x;
    }
    if (grid[get_voxel_index(old_x_int, new_y_int, old_z_int)] == 0)
        entities.origin_y[entity_index] = new_y;
    else
        entities.dy[entity_index] = 0;
}