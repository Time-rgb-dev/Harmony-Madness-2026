///@description Script	
	//Cool down the exit timer
	cool_down = max(cool_down - 1, 0);
	
	//Horizontal inputs
	var input_h = Input.RightPress - Input.LeftPress;
	var input_hold_h = Input.Right - Input.Left;
	var input_h_final = input_h + ((hold_h == 7) * input_hold_h);
	
	//Vertical inputs
	var input_v = Input.DownPress - Input.UpPress;
	var input_hold_v = Input.Down - Input.Up;
	var input_v_final = input_v + ((hold_v == 7) * input_hold_v);
	
	//Play sounds for navigating the menu
	if(input_v_final != 0 && input_enable) play_sound(sfx_beep);
	if(input_h_final != 0 && input_enable) play_sound(sfx_smack);
	
	//Holding the horizontal input
	if(Input.Right - Input.Left != 0)
	{
		hold_h++;	
		hold_h %= 8;	
	}
	else
	{
		hold_h = 0;	
	}
	
	//Holding the vertical input
	if(Input.Down - Input.Up != 0 && input_v == 0)
	{
		hold_v++;	
		hold_v %= 8;	
	}
	else
	{
		hold_v = 0;	
	}
	
	//Change the menu selection
	if(input_enable) option_select += input_v_final;
	option_select = wrap(option_select, 0, option_id - 1);
			
	//Scroll menu text up
	if(option_select > max_displayed_options + option_offset)
	{
		option_offset = option_select - max_displayed_options;
	}
			
	//Scroll menu text down
	if(option_select < option_offset+1)
	{
		option_offset = option_select;
	}
			
	//Go back to normal state
	if(Input.BPress && cool_down <= 0)
	{
		//Refresh the window
		with(obj_window)
		{
			event_user(0);	
		}
				
		//Leave
		input_enable = false;
		fade_to_room(rm_stage_select, 2, FADE_BLACK, 30);
		music_set_fade(FADE_OUT, 3);
		play_sound(sfx_red_ring_all);
	}
			
	//Update the option flags
	if(option_flag[option_select])
	{
		//Get the selected variable
		var val = variable_instance_get(global, option_variable[option_select]);
				
		//If either left or right is pressed, update the flag
		if(input_h_final != 0 && input_enable)
		{
			//Flip the flag
			val = !val;
					
			//Update the variable
			variable_instance_set(global, option_variable[option_select], val);	
		}
	}
	else	//Options that use decimals
	{
		//Get the selected variable
		var val = variable_instance_get(global, option_variable[option_select]);
				
		//Update the variable when either left or right is being pressed
		var result;
		var idk = input_enable ? input_h_final : 0;
		result = option_number[option_select] * idk;
				
		//Update the variable
		variable_instance_set(global, option_variable[option_select], clamp(val + result, option_min[option_select], option_max[option_select]));	
	}
	
	//Reflect changes to window size immediately
	if(option_variable[option_select] = "window_size" && (input_h || -input_h) || (input_h_final || -input_h_final))
	{
		with(obj_window)
		{
			event_user(0);
		}
	}