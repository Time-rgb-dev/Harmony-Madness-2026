	//Get input
	var press_x = Input.RightPress - Input.LeftPress;
	var press_y = Input.DownPress - Input.UpPress;
	
	//Get zone array size
	var zone_arr = array_length(zone_list);
	
	//Noises
	if((press_x != 0 || press_y != 0) && input_enable) play_sound(sfx_beep);
	
	//Select zones
	if(input_enable) zone_sel += press_y;
	
	//Mod
	zone_sel %= zone_arr+2;
		
	//Wrap
	if(zone_sel < 0) zone_sel = zone_arr+1;
		
	//Select acts
	if(zone_sel != zone_arr && zone_sel != zone_arr+1 && zone_sel != -1)
	{
		if(input_enable) act_sel += press_x;
		
		//Mod
		act_sel %= array_length(zone_list[zone_sel]) - 1;
		
		//Wrap
		if(act_sel < 0) act_sel = array_length(zone_list[zone_sel]);
		
		//Temp
		var a, b;
		a = min(zone_sel, zone_arr);
		b = min(act_sel, array_length(zone_list[zone_sel]) - 2);
		
		//Enter the gexus
		if((Input.StartPress || Input.APress) && input_enable)
		{
			var set_room = zone_list[zone_sel][act_sel+1];
			fade_to_room(set_room, 3);
			music_set_fade(FADE_OUT, 2);
			input_enable = false;
		}
	}
	
	//Options menu
	if(zone_sel == zone_arr)
	{	
		//Enter the gexus
		if((Input.StartPress || Input.APress) && input_enable)
		{
			fade_to_room(rm_options, 3);
			music_set_fade(FADE_OUT, 2);
			input_enable = false;
		}
	}
	
	//Character select
	if(zone_sel == zone_arr+1)
	{	
		var size = array_length(char_list);
		char_sel += press_x;
		
		//Mod
		char_sel %= size;
		
		//Wrap
		if(char_sel < 0) char_sel = size-1;
		
		//Set character
		global.character = char_list[char_sel][1];
	}