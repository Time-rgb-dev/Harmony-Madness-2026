for (var i = 0; i < 3; ++i) 
	{
	    logo_surface[i] = surface_create(WINDOW_WIDTH, WINDOW_HEIGHT)
	}
	
	distortion_x = [];
	distortion_y = [];
	
	for (var i = 0; i < 128; ++i) 
	{
	    deform_data[i] = 8 * dsin((360 / 128) * i);
	}
	
	range_x = 64;
	range_y = 32;
	
	scale_x = 1;
	scale_y = 2;
	
	dither_timer = 0;
	
	timer = 0;
	
	ease_timer[0] = 1;
	ease_timer[1] = 1;
	ease_timer[2] = 0;
	ease_timer[3] = 0;
	
	bar_pos = 0;
	
	sfghq_pos = -160;
	sfghq_frame = 0;
	alterable_d = 0;
	alterable_c = 0;
	alterable_b = 0;
	sfghq_y_speed = 0;
	bounce1 = false;
	bounce2 = false;
	sonic_frame = 0;
	grayscale = true;
	fade_color = room == rm_harmony_splash ? FADE_BLACK : FADE_WHITE;
	fading_out = false;
	
	skipped = false;
	
	fade_in_room(3);
	if(room == rm_harmony_splash) play_sound(j_harmony_splash);
	else play_sound(sfx_s3drop);