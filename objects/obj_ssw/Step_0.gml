
if (!done && (Input.APress || Input.StartPress || timer > 660)) {
		done = true;
		fade_to_room_next(1);
}

if (!done) {
	timer++;
	
	angle += spin_speed;

	if (timer == 121) sprite_index = spr_sfghq_flash;

	if (timer > 120 && timer < 180) {
		sound_timer++;
		if (sound_timer % 6 == 0) play_sound(sfx_scoreadd);
	}

	if (timer == 181) {
		sprite_index = spr_sfghq_go;
		play_sound(Sound100);
		//fade_in_room(3);
		flash_thing = 1.0;
		spin_speed = 55;
		spin_flag = 1;
	}

	if (timer > 180 && spin_speed > 0) {
		decel_timer ++;
		if (decel_timer % 6 == 0) spin_speed--;
		if (spin_speed == 3 && !audio_is_playing(Sound101)) play_sound(Sound101);
	}
	
	if (image_index >= 4) image_speed = 0;
}