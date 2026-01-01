/// @description Insert description here
// You can write your code in this editor

	var c, cx, cy, sw, sh;
	c = WINDOW_camera[WINDOW_current];
	cx = camera_get_WINDOW_x(c);
	cy = camera_get_WINDOW_y(c);
	sw = global.window_width;
	sh = global.window_height;
	
	
	//Draw background
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(cx, cy, cx+sw, cy+sh, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	