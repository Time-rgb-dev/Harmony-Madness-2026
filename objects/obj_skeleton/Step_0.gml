///@description Scripts
    //If the object timer matches the ran value
    if(global.object_timer == ran)
    {
        //Run, little Reddit, Run!
        draw_george = true;
    }
    
    if(!draw_george) exit;
    
    if(image_index != sprite_get_number(bg_grid))
    {
        image_index++;
    }
    else
    {
    	draw_george = false;
        ran = irandom(global.object_timer+100000);
    }