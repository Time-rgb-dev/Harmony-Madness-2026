///@description Scripts
    //If the object timer matches the ran value
    if(global.object_timer == ran)
    {
        //Run, little Reddit, Run!
        draw_george = true;
    }
    
    //Exit if we aren't drawing George
    if(!draw_george) exit;
    
    //If the image index isn't the same as the sprite number of George
    //if(george_index != sprite_get_number(spr_george))
    {
        //Add to the image index
        george_index = approach(george_index, sprite_get_number(spr_george), 1);
    }
    /*else
    {
        //Hide George and change the ran value
    	draw_george = false;
        ran = irandom(global.object_timer + 1000);
    }