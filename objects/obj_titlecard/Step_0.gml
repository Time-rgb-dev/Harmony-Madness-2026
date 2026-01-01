/// @description Card events
	obj_player.input_disable = true;
	
	//Remove the title card with debug
	if(!global.title_card)
	{
		instance_destroy();	
		camera_return();
		stop_jingle(false);
		music_reset_fade();
		play_music(obj_level.stage_music, BGM);
		obj_player.input_disable = false;
		obj_level.disable_timer = false;	
		obj_hud.slide_in = true;
	}
	
	//Add title card timer
	timer++;
	
	//Enable flags
	if(timer > 180)
	{
		camera_return();
		stop_jingle(false);
		music_reset_fade();
		play_music(obj_level.stage_music, BGM);
		obj_player.input_disable = false;
		obj_level.disable_timer = false;	
		obj_hud.slide_in = true;
		instance_destroy();
	}