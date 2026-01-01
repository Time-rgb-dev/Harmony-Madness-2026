function player_state_dropdash(){
	
	//Animate dropdash
	animation_play(animator, ANIM.DROPDASH);
	
	ceiling_allow = false;
	
	if(state != player_state_dropdash)
	{
		exit;
	}
	
	if(!underwater && !audio_is_playing(sfx_piss)) play_sound(sfx_piss, true);
	
	if(!underwater) 
	{
		hydration -= 0.2; //Removing water from your body
		if(irandom(1) == 0)
		{
			instance_create_depth(x-facing*6, y+15, depth-1, obj_piss_droplets);
		}
	}
	else
	{
		if(instance_exists(obj_water)) obj_water.pissness++;
	}
	
	if(y_speed > -5) y_speed -= y_accel*2;
	
	//Land
	if(ground)
	{
		state = player_state_normal;
		exit;
	}
	
	//Go back to jump when not holding the button
	if(!hold_action)
	{
		dropdash_timer = -1;
		state = player_state_jump;
		exit;
	}
	
	//Owie!
	if(point_check(-hitbox_w, -hitbox_h-2, false) || point_check(hitbox_w, -hitbox_h-2, false))
	{
		knockout_type = K_DIE
		exit;
	}
}