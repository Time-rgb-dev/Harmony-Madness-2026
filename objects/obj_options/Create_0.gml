///@description Set up
	cool_down = 4;
	hold_h = 0;
	hold_v = 0;
	menu_select = 0;
	input_enable = true;
	
	//Option variables
	option_id = 0;
	option_select = 0;
	option_offset = 0;
	option_name = [];
	option_variable = [];
	option_number = [];
	option_flag = [];
	option_min = [];
	option_max = [];
	max_displayed_options = 10;
	
	//Text colors
	unselected_text_color = #808080;
	text_color = c_white;
	
	//Add all option entries
	dev_menu_add_option_number("Music Volume", "bgm_volume", 0.0, 1.0, 0.05);
	dev_menu_add_option_number("Sound Volume", "sfx_volume", 0.0, 1.0, 0.05);
	dev_menu_add_option_number("Window Size", "window_size", 1, global.window_size_limit, 1);
	dev_menu_add_option_flag("Subway Surfers", "subway_surfers");
	dev_menu_add_option_flag("Jokes Kill You", "annoying_killing_bullshit");
	dev_menu_add_option_number("Camera Pan Type", "camera_pan_type", 0, 2, 1);
	dev_menu_add_option_number("Character Rotation Type", "rotation_type", 0, 2, 1);
	dev_menu_add_option_flag("Spindash", "use_spindash");
	dev_menu_add_option_flag("Air-roll", "use_airroll");
	dev_menu_add_option_flag("Make Sonic impossible to play as", "use_dropdash");
	dev_menu_add_option_flag("Super Peel-out", "use_peelout");
	
	//Self explanatory
	fade_in_room(3);
	play_music(MUSIC.MAMORUKUN);