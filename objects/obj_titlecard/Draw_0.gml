/// @description Draw Title Card
	var c, cx, cy;
	
	//Screen values
	c = view_camera[view_current];
	cx = camera_get_view_x(c);
	cy = camera_get_view_y(c);
	
	draw_set_color(c_black);
	if(act_trans) draw_set_alpha(0.7);
	draw_rectangle(cx, cy, cx + global.window_width,  cy + global.window_height, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	//Draw whole ass water
	if(!surface_exists(surf_bg)) surf_bg = surface_create(global.window_width, global.window_height);
	
	//Draw shit in this
	surface_set_target(surf_bg);
	
	//Clear alpha
	draw_clear_alpha(c_black, 0);
	
	var act_text = "Act " + string(obj_level.act);
	if (obj_level.act == 0) {
		act_text = "Single Act"	
	}
	
	draw_sprite(spr_title_card_tower, 0, WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2);
	
	draw_set_font(global.font_debug);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_text(WINDOW_WIDTH / 2, 8, act_text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	var lives_text = "Lives Remaining: " + string(global.life);
	if(global.life == 1)
	{
		lives_text = "Lives Remaining:\nyou gonna die lmao";
	}
	else if(global.life <= 0)
	{
		lives_text = "Lives Remaining:\nbro is actually\nimmortal what the shit?";
	}
	draw_text(16, WINDOW_HEIGHT / 2, lives_text);
	draw_set_font(font_titlecard);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text_ext(WINDOW_WIDTH - 16, WINDOW_HEIGHT / 2, string(obj_level.stage_name), 30, WINDOW_WIDTH / 4);
	draw_set_font(-1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	//Done
	surface_reset_target();

	//Draw surface
	draw_surface(surf_bg, cx, cy);