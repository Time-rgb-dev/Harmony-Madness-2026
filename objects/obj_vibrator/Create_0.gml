	play_music("FOREGONE DESTRUCTION - MICHIEL VAN DEN BOS");

	//NOTE: Why the fuck would you do this?
	global.window_width  = 480;
	global.window_height = 270;
	global.window_size_limit = (round(display_get_width() / global.window_width) - 1);
	
	  base_y = WINDOW_HEIGHT / 2 + 64;
	  base_x = (WINDOW_WIDTH / 2)
	  //
	  pos_x = base_y;
	  //
	  scale_x = 1;
	  scale_y = 1;
	  //
	  squish_count = 0;
	  //
	  lane_index = 1;
	  //
	  energy = 3;
	  tillenergy = 350;
	  max_energy = 3;
	  //
	  laser = false;
	  laser_frames = 0;
	  //
	  phaser = false;
	  //
	  level = 0;
	  tilllevel = 100;
	  //
	  game_timer = 0