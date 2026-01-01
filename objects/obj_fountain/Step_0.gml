///@description Scripts
    //If you're next to the fountain, you can drink
    if(collision_rectangle(bbox_left-8, bbox_top, bbox_right+7, bbox_bottom, obj_player, true, false))
    {
        can_drink = true;
    }
    else
    {
    	can_drink = false;
    }
    
    //Replenish hydration if you're holding E and you can drink
    if(keyboard_check(ord("E")) && can_drink)
    {
        obj_player.hydration = approach(obj_player.hydration, 100, 1);
    }