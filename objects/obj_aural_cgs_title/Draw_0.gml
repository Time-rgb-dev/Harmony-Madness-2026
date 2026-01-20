//Create surface in case it's automatically deleted
if(!surface_exists(surf)) surf = surface_create(WINDOW_WIDTH, WINDOW_HEIGHT);

//Draw BG
draw_sprite_tiled_horizontal(spr_titlescreen_bg, 0, -FRAME_TIMER/5, 0);
draw_sprite_tiled_horizontal(spr_titlescreen_bg, 1, -FRAME_TIMER/8, 0);

//Draw water with perspective
surface_set_target(surf);
draw_mode7(obj_fake_camera, spr_titlescreen_bg3d);
surface_reset_target();
draw_surface(surf, 0, 23);

//Final part of BG drawing
gpu_set_blendmode(bm_add);
draw_sprite_tiled_horizontal(spr_titlescreen_bg, 2, 0, 125+19);
gpu_set_blendmode(bm_normal);

//Draw title screen art
draw_sprite(spr_titlescreen_aural_cgs, 0, WINDOW_WIDTH/2, WINDOW_HEIGHT/2);

//Draw press start text
draw_set_halign(fa_center);
draw_set_font(global.font_small);
if(FRAME_TIMER mod 24 < 24/2)
    draw_text(WINDOW_WIDTH/2, WINDOW_HEIGHT-32, "PRESS THE START BUTTON");
    
//Draw the egoist
draw_set_halign(fa_left);
draw_text(0, WINDOW_HEIGHT-8, "DARKN 2019-2023");