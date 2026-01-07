///@description Scripts
    //If the object timer matches the ran value
    if(global.object_timer == ran && instance_exists(obj_player))
    {
        //Run, little Reddit, Run!
        draw_george = true;
    }
    
    //Exit if we aren't drawing George
    if(!draw_george) exit;
    
    //If the image index isn't the same as the sprite number of George
    if(george_index != sprite_get_number(spr_george))
    {
        //Add to the image index
        george_index = approach(george_index, sprite_get_number(spr_george), 1);
    }
    else
    {
        //Reset
        george_index = 0;
    	draw_george = false;
        ran = global.object_timer + irandom(1000);
    }