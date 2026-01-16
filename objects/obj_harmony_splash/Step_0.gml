	timer++;
	
	//Default Harmony Framework splash screen
	if(room == rm_harmony_splash) {
		if(timer < 240)
		{
			for (var i = 0; i < 64; ++i) 
			{
				var a = i % 2;
		
				distortion_x[i] = (a ? range_x : -range_x) * dsin((360/64)*i);
			}
	
			for (var i = 0; i < 128; ++i) 
			{
				distortion_y[i] = range_y * dcos((360/128)*i);
			}
	
	
			if(timer > 16)
			{
				ease_timer[3] = approach(ease_timer[3], 1, 0.005);
			}
	
			if(timer > 32)
			{
				dither_timer = approach(dither_timer, 1, 0.015);
				ease_timer[0] = approach(ease_timer[0], 0, 0.01);
				ease_timer[1] = approach(ease_timer[1], 0, 0.005);
			}
	
	
			scale_y = 2 * easeInOutCubic(ease_timer[0]);
			scale_y += 1;
	
			range_x = 64 * easeInOutCubic(ease_timer[0]);
			range_y = 32 * easeInOutCubic(ease_timer[1]);
		
			bar_pos = 80 * easeOutElastic(ease_timer[3]);
			bar_pos += 108;
		}
		else
		{
			if(timer > 240) {
				fade_to_room_next(1, fade_color);
		
				ease_timer[2] = approach(ease_timer[2], 1, 0.008);
		
				scale_x = 6 * easeInQuad(ease_timer[2]);
				scale_y = 6 * easeInQuad(ease_timer[2]);
		
				scale_x += 1;	
				scale_y += 1;
			}
		}
	}
	
	//Fake-out Sonic Worlds splash screen
	if(room == rm_worlds_splash) {
		if(!fading_out) {
			sfghq_pos += sfghq_y_speed;
			alterable_d++;
		
			if(sfghq_pos >= -75 && bounce1 == false) {
				sfghq_y_speed = -5;
				play_sound(sfx_boss_hit);
				bounce1 = true;
			}
		
			if(sfghq_pos >= 90 && bounce2 == false) {
				play_sound(sfx_boss_hit);
				alterable_b = 1;
				sfghq_y_speed = -3;
				bounce2 = true;
			}
		
			if(alterable_b == 1) alterable_c++;
			if(alterable_c > 32) sfghq_y_speed = 0;
			if(alterable_c <= 32 && alterable_d == 6) {
				alterable_d = 0;
				sfghq_y_speed++;
			}
		
			if(timer == 180) {
				fade_in_room(3, FADE_WHITE);
				play_sound(sfx_emerald_collect);
			}
			if(timer > 180) {
				sfghq_frame++;
				grayscale = false;
				sonic_frame += 0.1;
			}
		}
		
		if((timer > 420 || skipped) && !fading_out) {
			play_sound(sfx_warp_exit);
			fade_to_room_next(1, FADE_WHITE, 20);
			fading_out = true;
		}
	}
	
	//Skip the long ass splash screen when pressing start
	if(timer >= 30 && Input.StartPress && !skipped && !fading_out) {
		var fade_time = room == rm_harmony_splash ? 3 : 1;
		fade_to_room_next(fade_time, fade_color);
		skipped = true;
	}