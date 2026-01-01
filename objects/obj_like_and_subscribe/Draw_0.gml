//Draw whole ass water

	//Temp value
	var c, cx, cy;
	
	//Screen values
	c = view_camera[view_current]
	cx = camera_get_view_x(c)
	cy = camera_get_view_y(c)
	
	if(!surface_exists(surf)) surf = surface_create(global.window_width, global.window_height);
	
	surface_set_target(surf);
	draw_clear_alpha(c_white, 0);
	draw_sprite(spr_hello_neighbor, image_index, 0, WINDOW_HEIGHT+offset)
	surface_reset_target();
	draw_surface(surf, cx, cy);