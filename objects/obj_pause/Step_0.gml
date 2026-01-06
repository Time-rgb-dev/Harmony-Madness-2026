/// @description pause
	if(!fred)
	{
		if(pause_screen == 4) play_sound(sfx_gfred);
		if(pause_screen == 7)
		{
			play_sound(bgm_mokou, true);
			audio_sound_loop_start(bgm_mokou, 6.460);
		}
		fred = true;
	}
	global.process_objects = false;
	
	delay++;
	timer++;