/// @description Values
	fade_in_room(2, FADE_WHITE);
	play_sound(sfx_realassexplosion);
	surface = surface_create(global.window_width, global.window_height);
	timer = 0;
	state = 0;
	total_bonus = 0;
	
	//HUD Offsets
	for(var i = 0; i <= 3; i++)
		offset_x[i] = 0;
	
	//Bonus
	get_end_results();