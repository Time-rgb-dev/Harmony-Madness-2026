/// @description Values
	play_music(MUSIC.J_ACT_START, Jingle);
	surf_bg = surface_create(global.window_width, global.window_height);
	surf = surface_create(global.window_width, global.window_height);
	timer = 0;
	
	//Disable flags
	obj_player.input_disable = true;
	obj_level.disable_timer = true;