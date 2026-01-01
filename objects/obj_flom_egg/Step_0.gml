/// @description Look where the player is
    //So you can't have infinite rings
    if(triggered) exit;
    
    //If you're not moving while able to, add to the timer
    if(obj_player.ground_speed == 0 && !obj_player.input_disable && !triggered) timer++;
    
    //Look right
    if(obj_player.x - x >= 0) {
        image_xscale = 1;
    }
    else {
        image_xscale = -1;
    }
    
    //He gives you rings nicely
    for(var i = 0; i < max_rings; i++) {
        if(timer == 120 + (i*10)) {
            var r = instance_create_depth(x, y-24, depth, obj_ring);
            r.ringloss = true;
            r.y_speed = -2;
            r.x_speed = 2*image_xscale;
        }
    }
    
    //When you're done giving the player rings, you're done
    if(timer == 120 + (max_rings*10)) triggered = true;
        
    if(player_collide_object(C_MAIN) && obj_player.attacking)
    {
        obj_player.knockout_type = K_DIE;
    }