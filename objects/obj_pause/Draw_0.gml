/// @description Insert description here
// You can write your code in this editor

	var c, cx, cy, sw, sh;
	c = view_camera[view_current];
	cx = camera_get_view_x(c);
	cy = camera_get_view_y(c);
	sw = global.window_width;
	sh = global.window_height;
	
	
	//Draw background
	draw_set_color(c_black);
	draw_rectangle(cx, cy, cx+sw, cy+sh, false);
	draw_set_color(c_white);
	
	switch(pause_screen)
	{
		case 0: //Xiaohei jumpscare
		{
			draw_set_font(global.font_debug);
			draw_set_halign(fa_center);
			draw_set_color(c_white);
			draw_set_valign(fa_top);
			draw_text(cx + WINDOW_WIDTH / 2, cy + 8, "you should be watching The Legend of Hei right now");
			draw_text(cx + WINDOW_WIDTH / 2, cy + 16, "^ no");
			draw_set_font(-1);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_sprite_ext(spr_eppstein, 0, cx + WINDOW_WIDTH / 2, cy + WINDOW_HEIGHT / 2, 0.175, 0.175, 0, c_white, 0.5);
			draw_sprite_ext(spr_luo_xiaohei, 0, cx + WINDOW_WIDTH / 2, cy + WINDOW_HEIGHT / 2, 0.175, 0.175, 0, c_white, 1);
			break;
		}
		
		case 1: //Spider-Man
		{
			draw_sprite_ext(spr_spiderman, 0, cx + WINDOW_WIDTH / 2, cy + WINDOW_HEIGHT / 2, 0.5, 0.5, 0, c_white, 1);
			break;
		}
		
		case 2: //Anton
		{
			draw_sprite_ext(spr_anton, 0, cx + WINDOW_WIDTH / 2, cy + WINDOW_HEIGHT / 2, 1, 1, 0, c_white, 1);
			break;
		}
		
		case 3: //bup
		{
			draw_sprite_ext(spr_bup_hd, 0, cx + WINDOW_WIDTH / 2, cy + WINDOW_HEIGHT / 2, 1, 1, 0, c_white, 1);
			break;
		}
	}