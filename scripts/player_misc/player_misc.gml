function player_misc(){
	//Subtract timers
	control_lock = max(control_lock-1, 0);
	ceiling_lock = max(ceiling_lock-1, 0);
	
	//Handle player shields
	if(shield != S_NONE)
	{
		if(!instance_exists(shield_list[shield]))
		{
			instance_create_depth(x, y, depth - 10, shield_list[shield])	
		}
		
		if(shield != par_shield.shield_id)
		{
			with(par_shield) instance_destroy();	
		}
	}else{
		with(par_shield) instance_destroy();
	}
    
    //Lose water
    if(FRAME_TIMER mod 60 == 0 && input_disable == false && global.annoying_killing_bullshit)
    {
        hydration -= 2;
    }
	
    if(input_disable == false && global.annoying_killing_bullshit)
    {
        if(character = CHAR_SONIC && state != player_state_dropdash && (shield == S_NONE || shield == S_NORMAL)) bladder += 0.1;
		else if(state == player_state_dropdash && bladder > 0) bladder -= 0.6;
    }
    
    if(hydration <= 0 && state != player_state_null)
    {
        knockout_type = K_DIE;
    }
    
    if(bladder >= 100 && state != player_state_null)
    {
        knockout_type = K_DIE;
    }
}