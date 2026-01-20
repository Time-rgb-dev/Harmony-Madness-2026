if(player_collide_object(C_MAIN) && !global.scary_green_mode) {
	triggered = true;
	global.scary_green_mode = true;
}

if(triggered) {
	fade_back_timer++;
	if(!window_get_fullscreen() && fade_back_timer < 200) {
		fade_in_room(1, FADE_BLACK);
	} else {
		if(fade_back_timer < 201) fade_in_room(1, FADE_BLACK);
	}
	
	with(obj_window) {
		global.window_size = approach(global.window_size, global.window_size_limit, 0.05);
		event_user(0);
		window_center();
	}
	
	music_set_fade(FADE_OUT, 1);
	obj_player.hydration = 100;
	obj_camera.limit_left = x - 400;
	
	obj_player.can_jump = false;
	obj_player.hold_action = false;
	obj_player.press_action = false;
	obj_player.can_roll = false;
	obj_player.hold_down = false;
}

if(obj_player.x >= 29650) {
	if(obj_player.x == 29651) {
		obj_player.x_speed = 6;
		obj_player.ground_speed = 6;
		obj_player.state = player_state_normal;
	}
	if(!skid) {
		obj_player.hold_left = true;
		obj_player.input_disable = true;
	}
	if(obj_player.x >= 29720) skid = true;
}