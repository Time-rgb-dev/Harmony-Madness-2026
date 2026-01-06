	/// @description Insert description here
	// You can write your code in this editor
	delay = 0;
	timer = 0;
	pause_screen = irandom_range(0, 7);
	epstein_percentage = 0;
	sukuna_chance = (pause_screen == 6) ? irandom_range(0, 16) : 0;
	pausemenu = surface_create(global.window_width, global.window_height);
	global.process_objects = false;
	
	audio_pause_all();
	fred = false;