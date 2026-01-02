/// @description Script
    //Set in front of the player
    depth = obj_player.start_depth - 1;
    
	if(!ringloss)
	{
	    //Sync the animation
	    image_index = FRAME_TIMER / 4;
	}
	
    //Collect
    if(y_speed >= 0)
    {
        //Add rings!
        global.rings += 1;
		
		//Everyone knows that rings are made of water!
		//This shit BROKE EVERYTHING!!! I fiXED IT!
		obj_player.hydration = min(obj_player.hydration + 1, 100);
		obj_player.bladder = min(obj_player.bladder + 0.5, 100);
        
        //Create the effect
        create_effect(x, y, spr_ring_sparkle, 0.2);
        instance_destroy();
    }
	//Ring loss physics
	if(ringloss)
	{
		x += x_speed;
		y += y_speed;
			
		//Update sprite frame
		image_index += animation_speed;
			
		//Change ringloss animation speed
		if(timer > 32)
		{
			animation_speed = 1 - (timer / 298);
		} else {
			animation_speed = 0.8
		}	
			
		//Limit the speed
		animation_speed = max(animation_speed, 0.02);
			
		//Add timer
		timer += 1;
			
		//Destroy
		if(timer > 256) instance_destroy();
			
		//Gravity
		y_speed += 0.09375;
			
		//Collision offset
		var offx, offy;
		offx = (bbox_right - bbox_right)/2;
		offy = (bbox_bottom - bbox_top)/2;
	}
	
	//Temp culling
	if(!on_screen() && !ringloss && !magnet && culling) instance_deactivate_object(id);