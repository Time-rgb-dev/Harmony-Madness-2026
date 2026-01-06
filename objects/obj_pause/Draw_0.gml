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
		case 0: //epstein jumpscare
		{
			draw_sprite_stretched_ext(spr_eppstein, 0, cx, cy, WINDOW_WIDTH, WINDOW_HEIGHT, c_white, 0.5);
			draw_set_font(global.font_debug);
			draw_set_halign(fa_center);
			draw_set_color(c_white);
			draw_set_valign(fa_top);
			draw_text(cx + WINDOW_WIDTH / 2, cy + 8, "isn't there something you forgot to check?");
			draw_set_font(-1);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
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
		
		case 4: //bold and ready
		{
			draw_sprite_ext(spr_jordan, 0, cx + WINDOW_WIDTH / 2, cy + WINDOW_HEIGHT / 2, 0.75, 0.75, 0, c_white, 1);
			break;
		}
		
		case 5: //you're being watched
		{
			draw_sprite_stretched(spr_you_are_watched, 0, cx, cy, WINDOW_WIDTH, WINDOW_HEIGHT);
			break;
		}
		
		case 6: //football
		{
			draw_sprite_stretched(spr_football_field, 0, cx, cy, WINDOW_WIDTH, WINDOW_HEIGHT);
			if(sukuna_chance == 16) draw_sprite(spr_ryomen_sukuna_fortnite, 0, cx + WINDOW_WIDTH - 84, cy + WINDOW_HEIGHT + 304);
			break;
		}
		
		case 7: //Her
		{
			draw_sprite(spr_mokou_bg, 0, cx, cy);
			var count = 8;
			for (var i = 0; i < count; ++i) {
				//It's called depth sorting mom
				var ang = ((360/count)*i)+timer*3;
				var scale = (1-dsin(ang+180)*0.4)*0.5
				
				var _depth = gpu_get_depth()

				gpu_set_depth(_depth-scale)
				gpu_set_ztestenable(1)
				gpu_set_alphatestenable(1)
				gpu_set_zwriteenable(1)
				
				draw_sprite_ext(spr_mokou, 0, (cx+sw/2)+dcos(ang)*64, (cy+sh/2)+dsin(ang)*32, scale, scale, 0, c_white, 1);
				
				//Reset depth sorting
				gpu_set_depth(_depth)
				gpu_set_ztestenable(0)
				gpu_set_zwriteenable(0)
				gpu_set_alphatestenable(0)
			}
			break;
		}
	}