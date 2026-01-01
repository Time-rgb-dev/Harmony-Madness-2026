/// @description Player scripts
	
	if (highness > 0.0) highness -= 0.1;
	
	//Step movement for sticking on the collision
	steps = 1 + abs(floor(x_speed/13)) + abs(floor(y_speed/13));
	
	//Reset landing flag
	if(ground)
	{
		landed = false;
	}
	
	//Set angle sensor reach range
	if(!landed)
	{
		reach_range = 16;
	}

	//Cancel when in debug mode
	if(debug)
	{
		player_debug();
		exit;	
	}
	
	//Include step movement
	repeat(steps)
	{
		//Handle player movement:
		player_movement();
		
		//Handle semi solid:
		player_semisolids();
		
		//Handle player collision with solid objects:
		player_object_collision();
		
		//Handle player terrain collision:
		player_collision();
		
		//Handle how player changes floor modes:
		player_mode();	
	}
	
	//Handle how player is controlled:
	player_control();

	//Handle player's hurt system
	player_handle_hurt()
	
	//Update player's animator
	animator_update(animator);
	
	//Handle player states
	player_states();
	
	//Player facing direction
	player_direction();
	
	//Handle partial visual rotation
	player_visual_angle();
	
	//Various hitbox cases
	player_hitbox();
	
	//Misc. player stuff
	player_misc();
	
	//Handle player's interaction with water
	player_water();
	
	if (character == CHAR_GAMETAP) {
		gametap_rot -= ground_speed * 2;
	
		if(state == player_state_spindash)
		{
			gametap_rot -= max(spindash_rev * 3, 8) * facing;	
		}
	
		gametap_soundtimer += abs(ground_speed); 
		if(gametap_soundtimer > 60)
		{
			gametap_soundtimer = 0;
			play_sound(sfx_gametap, false);	
		}
	}