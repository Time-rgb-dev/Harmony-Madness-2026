/// @description Values

	surf = surface_create(global.window_width, global.window_height);
	slide_in = false;
	render = true;
	
	elec_timer = 0
	
	for(var i = 0; i <= 3; i++)
	{
		if(!global.act_transition)offset[i] = -128 - (48*i); else offset[i] = 0;	
	}
	
	