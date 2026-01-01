/// @description Script
	//Add timer
	timer += 1;
	
	//Force to victory state
	with(obj_player)
	{
		if(ground)
		{
			if (super) {
				super = false
				speed_shoes = 0
				invincible_timer = 0
				invincible = false
				super_color = SUPER_PALETTE_LOOP
				player_animation_list();
				animator_reset(animator);	
			}
			ground_speed = 0;
			input_disable = true;
			facing = 1;
			state = player_state_null;
			animation_play(animator, ANIM.VICTORY);
		}
	}
	//Fade out
	if(timer = 1 && state = 0)
	{
		music_reset_fade(FADE_OUT);
	}
	
	//Play act clear music
	if(timer = 2 && state = 0)
	{
		music_reset_fade();
		play_music(MUSIC.J_ACT_CLEAR, 0);
	}
	
	//Subtract from the count
	if(timer > 475 && state = 0){
		//Subtract time bonus
		if(time_bonus > 0) {
			time_bonus -= 100; 
			global.score += 100; 
			total_bonus += 100
		}
		
		//Subtract ring bonus
		if(ring_bonus > 0) {
			ring_bonus -= 100; 
			global.score += 100; 
			total_bonus += 100
		}
		
		//Play sound
		if(FRAME_TIMER mod 4 = 0 && time_bonus > 0 || FRAME_TIMER mod 4 = 0 && ring_bonus > 0)
			play_sound(sfx_scoreadd);
		
		//Skip the count down
		if(Input.ActionPress && time_bonus > 0){
			//Time bonus skip
			global.score += time_bonus; 
			total_bonus += time_bonus;
			time_bonus -= time_bonus; 
		}
		
		if(Input.ActionPress && ring_bonus > 0){
			//Ring bonus skip
			global.score += ring_bonus; 
			total_bonus += ring_bonus;
			ring_bonus -= ring_bonus; 
		}
		
		//No more count down, switch to ending events
		if(time_bonus = 0 && ring_bonus = 0){
			play_sound(sfx_scoretally);
			timer = 0;
			state = 1;
		}
	}
	
	//Ending events
	if(state = 1)
	{
		if(audio_is_playing(j_extra_life) && timer >= 78) 
		{
			timer = 78;
		}
	
		if(timer = 80)
		{
			fade_change(FADE_OUT, 5,FADE_BLACK)
		}
		
		//Go to the next stage
		if(timer = 110)
		{
			reset_stage_data();
			room_goto(obj_level.next_level);
		}
	}