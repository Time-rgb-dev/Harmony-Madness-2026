///@description Scripts
    //If you're next to the fountain, you can drink
    if(player_collide_object(C_MAIN))
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