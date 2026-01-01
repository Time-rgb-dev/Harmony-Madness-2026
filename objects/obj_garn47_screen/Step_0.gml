/// @description Script
	//Inputs
    var input_x, input_y;
    input_x = Input.LeftPress - Input.RightPress;
    input_y = Input.UpPress - Input.DownPress;
	
	//Update the offsets
	garn_offset[0] = approach(garn_offset[0], 0, 8);
	
	//If Garn is on screen, start up everything
	if(garn_offset[0] == 0)
	{
		//Timer
		timer++;
		
		//Play Garn's iconic line and his music
		if(timer == 1)
		{
			play_sound(sfx_garn47);
			play_music(MUSIC.TITLE, BGM);
		}
		
		//If space pressed, go to the next room
		if(keyboard_check_pressed(vk_space) || Input.APress || Input.StartPress) room_goto_next();
	}