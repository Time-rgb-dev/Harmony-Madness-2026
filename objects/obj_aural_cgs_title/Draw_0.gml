for(var i = 0; i < bg_id; i++) {
	draw_background_layer(i);
}

gpu_set_blendmode(bm_add);
draw_sprite_tiled_horizontal(spr_titlescreen_bg3d, 0, water_move, 144);
draw_sprite_tiled_horizontal(spr_titlescreen_bg, 2, 0, 144);
gpu_set_blendmode(bm_normal);

draw_sprite(spr_titlescreen_aural_cgs, 0, 0, 0);

if(FRAME_TIMER mod 9 == 0) prompt_draw = !prompt_draw;

draw_set_font(global.font_small);
draw_set_halign(fa_center);
if(prompt_draw) draw_text(WINDOW_WIDTH/2, WINDOW_HEIGHT/2+88, "PRESS THE START BUTTON");
draw_set_halign(fa_left);
draw_text(0, WINDOW_HEIGHT-8, "DARKN 2019-2023");
