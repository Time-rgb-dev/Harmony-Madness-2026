	//Screen values
	var c, cx, cy, sw, sh;
	c = view_camera[view_current];
	cx = camera_get_view_x(c);
	cy = camera_get_view_y(c);
	sw = WINDOW_WIDTH;
	sh = WINDOW_HEIGHT;
	
	if(room == rm_harmony_splash) {
		surface_deform(WINDOW_WIDTH, WINDOW_HEIGHT, deform_data, FRAME_TIMER, 1);
		draw_sprite(spr_splash_bg, 0, 0, 0);
		shader_reset();
	
		draw_sprite_tiled_horizontal(spr_splash_border_top, 0, -FRAME_TIMER, -bar_pos);
		draw_sprite_tiled_horizontal(spr_splash_border_bottom, 0, FRAME_TIMER, WINDOW_HEIGHT+bar_pos);
	
		for (var i = 0; i < 3; ++i) 
		{
			if(!surface_exists(logo_surface[i]))
			{
				logo_surface[i] = surface_create(WINDOW_WIDTH, WINDOW_HEIGHT);
			}
		}
	
		surface_set_target(logo_surface[0]);
	
		draw_clear_alpha(c_white, 0);
	
		draw_sprite_ext(spr_splash_logo, 0, WINDOW_WIDTH / 2, (WINDOW_HEIGHT / 2), scale_x, scale_y, 0, c_white, 1);
	
		surface_reset_target();
	
	
		surface_set_target(logo_surface[1]);
	
		surface_deform(WINDOW_WIDTH, WINDOW_HEIGHT, distortion_y, FRAME_TIMER * 3, 1);
		surface_copy(logo_surface[1], 0, 0, logo_surface[0]);
		shader_reset();
	
		surface_reset_target();
	
		surface_set_target(logo_surface[2]);
	
		surface_deform(WINDOW_WIDTH, WINDOW_HEIGHT, distortion_x, FRAME_TIMER);
		surface_copy(logo_surface[2], 0, 0, logo_surface[1]);
		shader_reset();
	
		surface_reset_target();
	
		alpha_dither(dither_timer);
		draw_surface(logo_surface[2], 0, 0);
		shader_reset();
	}
	
	//Fake-out Sonic Worlds splash screen
	if(room == rm_worlds_splash) {
		draw_set_colour(c_black);
		draw_rectangle(0, 0, sw, sh, false);
		draw_set_colour(c_white);
		
		if(grayscale) {
			shader_set(shd_grayscale);
			shader_set_uniform_f(shader_get_uniform(shd_grayscale, "u_Amount"), 1.0);
		}
		
		draw_sprite(spr_sonicworlds_splash, 0, sw/2, 0);
		draw_sprite(spr_poweredby_tails, 0, 222+53, 184);
		draw_sprite(spr_poweredby_sonic, sonic_frame, 243+53, 179);
		
		if(grayscale) shader_reset();
		
		draw_sprite(spr_sfghq, sfghq_frame, sw/2, sfghq_pos);
	}