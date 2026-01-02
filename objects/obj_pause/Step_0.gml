/// @description pause
	if(!fred)
	{
		if(pause_screen == 4) play_sound(sfx_gfred);
		fred = true;
	}
	global.process_objects = false;
	
	delay += 1
	timer += 1