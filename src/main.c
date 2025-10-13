// Copy & Paste code from Burnlike
// Written using https://github.com/CE-Programming/toolchain
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
#include <sys/rtc.h>
#include "include/fixed.h"
#include "include/ray.h"
#include "include/render.h"
#include "include/palette.h"
#include <time.h>

// Following code "borrowed" from TheScienceElf
// https://github.com/TheScienceElf/Blocks-TI-84
#define BUFFER_1 0xD40000
#define BUFFER_2 0xD52C00
#define BUFFER_SWP (BUFFER_1 ^ BUFFER_2)
uint8_t* buffer1 = (uint8_t*)BUFFER_1;
uint8_t* buffer2 = (uint8_t*)BUFFER_2;
uint8_t* VRAM = (uint8_t*)BUFFER_1;

// Don't worry guys this is Code that's more original

extern uint8_t grid[32768];
uint16_t storage[8192];
uint16_t hotbar[8];
uint8_t render_dbg = 0;
uint8_t section = 0;

int main(void){
    //os_ClrHome();
    gfx_Begin();
    memset(grid, 0, 32768);
    memcpy(lcd_Palette, palette, 512);
    for (int i = 0; i < 32768; i++){
        if ((rand()&0b111) == 0)
            grid[i] = (uint8_t)rand();
    }
    memset(storage, 0, 16384);
    memset(hotbar, 0, 16);
    memset(buffer1, 0, 76800);
    memset(buffer2, 0, 76800);
    gfx_SetDrawScreen();

    uint8_t* ptr = VRAM;
    for (int i = 0; i < 1608; i = i + 7){
        ptr += (unsigned int)((fixed_sin(i / 4) + float_to_fixed(2.0f)) /4);
        memset(ptr, 0xE0, 5);
        ptr -= (unsigned int)((fixed_sin(i / 4) + float_to_fixed(2.0f)) /4);
        ptr += 320;  
    }
    ptr = VRAM;
    for (int i = 0; i < 1608; i = i + 7){
        ptr += (unsigned int)((fixed_cos(i / 4) + float_to_fixed(2.0f)) /4);
        memset(ptr, 0x18, 5);
        ptr -= (unsigned int)((fixed_cos(i / 4) + float_to_fixed(2.0f)) /4);
        ptr += 320;  
    }
    sleep(1);
    memset(buffer1, 0, 76800);
    ptr = VRAM;
    for (int i = 0; i < 1608; i = i + 7){
        ptr += (unsigned int)((fixed_sin(i * 4) + float_to_fixed(2.0f)) /4);
        memset(ptr, 0xE0, 5);
        ptr -= (unsigned int)((fixed_sin(i * 4) + float_to_fixed(2.0f)) /4);
        ptr += 320;  
    }
    ptr = VRAM;
    for (int i = 0; i < 1608; i = i + 7){
        ptr += (unsigned int)((fixed_cos(i * 4) + float_to_fixed(2.0f)) /4);
        memset(ptr, 0x18, 5);
        ptr -= (unsigned int)((fixed_cos(i * 4) + float_to_fixed(2.0f)) /4);
        ptr += 320;  
    }
    sleep(1);
    memset(buffer1, 0, 76800);

    
    int running = 1;
    int x = 0;
    struct camera cam;
    cam.pos_x = int_to_fixed(16);
    cam.pos_y = int_to_fixed(16);
    cam.pos_z = int_to_fixed(16);
    cam.rot_x = 0;
    cam.rot_y = 0;
    cam.rot_z = 0;
    //VRAM = (uint8_t*)((uint24_t)VRAM ^ BUFFER_SWP);
    float last_time;
    float cps_reciprocal = 1.0f / (float)CLOCKS_PER_SEC;
    while (running){
        cam.pos_x = fixed_min(fixed_max(1,cam.pos_x), 8191);
        cam.pos_y = fixed_min(fixed_max(1,cam.pos_y), 8191);
        cam.pos_z = fixed_min(fixed_max(1,cam.pos_z), 8191);
        uint8_t* ptr1 = (uint8_t*)((uint24_t)VRAM + 40);
        uint8_t* ptr2 = (uint8_t*)(((uint24_t)VRAM)^BUFFER_SWP + 40);
        for (uint16_t i = 0; i < 180; i++){
            if ((i & 0b100) != (section & 1)<<2 || 1)
                memcpy(ptr1, ptr2, 280);
            ptr1 += 320;
            ptr2 += 320;
        }
        /*ptr = VRAM;
        uint8_t offset = x;
        uint8_t base = 0;
        for (int i = 0; i < 76800; i = i + 4){
            *ptr = base+offset;
            ptr += 4;
            base += 4;
        }*/
        render(VRAM, 2048, 402, cam, render_dbg, section);
        memset((uint8_t*)((uint24_t)VRAM + 57600), 0, 19200);
        ptr1 = VRAM;
        ptr2 = (uint8_t*)((uint24_t)VRAM + 280);
        for (uint8_t i=0; i < 180; i++){
            memset(ptr1, 0, 40);
            memset(ptr2, 0, 40);
            ptr1 += 320;
            ptr2 += 320;
        }
        section++;
        float current_time = (float)clock() * cps_reciprocal;
        char fps_string[20];
        if (current_time > last_time) {
            float fps = 1.0f / (current_time - last_time);
            gfx_SetTextXY(0, 200);
            gfx_SetTextFGColor(0b10111111);
            sprintf(fps_string, "FPS: %f", fps);
            gfx_PrintString(fps_string);
        }
        memset(fps_string, 0, 20);
        gfx_SetTextXY(0, 210);
        sprintf(fps_string, "DEBUG: %d", render_dbg);
        gfx_PrintString(fps_string);
        last_time = current_time;
        VRAM = (uint8_t*)((uint24_t)VRAM ^ BUFFER_SWP);
        gfx_SwapDraw();
        kb_Scan();
        x += 1;
        if (kb_Data[6] & kb_Clear) running = 0;
        if (kb_Data[1] & kb_Yequ) render_dbg ^= 1;
        
        if (kb_Data[7] & kb_Up) cam.rot_z -= fixed_div(PI_CONST, int_to_fixed(8));
        if (kb_Data[7] & kb_Down) cam.rot_z += fixed_div(PI_CONST, int_to_fixed(8));

        cam.rot_z = fixed_max(cam.rot_z, fixed_mult(PI_CONST, float_to_fixed(-0.48f)));
        cam.rot_z = fixed_min(cam.rot_z, fixed_mult(PI_CONST, float_to_fixed(0.48f)));

        if (kb_Data[7] & kb_Left) cam.rot_y -= fixed_div(PI_CONST, int_to_fixed(8));
        if (kb_Data[7] & kb_Right) cam.rot_y += fixed_div(PI_CONST, int_to_fixed(8));
        
        //cam.rot_y += fixed_div(PI_CONST, int_to_fixed(16));
        struct vector2 m_vector;
        m_vector.x = 0;
        m_vector.y = 0;
        if (kb_Data[1] & kb_2nd) {
            m_vector.x = -64;
        }
        if (kb_Data[2] & kb_Alpha) {
            m_vector.x = 64;
        }
        m_vector = rotate_2d(m_vector,fixed_sin(-cam.rot_y),fixed_cos(-cam.rot_y));
        cam.pos_x += m_vector.x;
        cam.pos_z += m_vector.y;
    }
    gfx_End();
    //os_ClrHome();
    return 0;
}
