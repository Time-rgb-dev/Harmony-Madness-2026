/// @description Sprites
    //Local variables
	var cx, cy, space, wrapt;
    
	//Get screen position
	cx = camera_get_view_x(view_camera[view_current]);
	cy = camera_get_view_y(view_camera[view_current]);
	
	//Create surface if it doesn't exist
	if(!surface_exists(surf)) surf = surface_create(global.window_width, global.window_height);
	
	//Set surface target
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);   
    
	//The background
	if(timer >= 15) draw_sprite(spr_garn47_bg, 0, 0, 0);
	
	//Garn47!
	draw_sprite(spr_garn47, 0, WINDOW_WIDTH/2, garn_offset[0]+WINDOW_HEIGHT);
	
    draw_set_font(global.font_small);
    draw_set_halign(fa_center);
    
    surface_reset_target();
    draw_surface(surf, cx, cy);