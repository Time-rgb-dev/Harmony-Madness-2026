	
	//NOTE: Duplicate this room to make levels!
	with(obj_level)
	{
		//Set stage music and loop points
		stage_music = MUSIC.GREEN_HILL;
		
		//Set level name
		stage_name = "Green Hill";
		
		//Set stage act
		act = 1;
		
		//Is next level doing act transition in case if you do a multi-zone level.
		act_transition = true;
		
		//HLDC specifics
		red_ring_count = 0;
		
		is_emerald_hunt = false;
		emerald_hunt_total = 3;
		
		//Animal array
		animal = [A_FLICKY, A_CUCKY, A_RICKY];
		
		//Next level
		next_level = rm_scary_green_hill;
		
		//Force character switch
		with(obj_player) {
			global.character = CHAR_TAILS;
			player_animation_list();
			animator_reset(animator);
		}
	}