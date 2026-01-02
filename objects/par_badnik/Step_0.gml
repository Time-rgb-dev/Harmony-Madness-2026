/// @description Parent script
	
	
	var shard = instance_place(x,y,obj_emerald_shard);
	
	if (shard) {
		shard.hidden_within = true
		shard.x = x	
		shard.y = y
	}
	
	//Destroy the enemy
	if(player_collide_object(C_MAIN))
	{
		var fly_angle = 90 - point_direction(obj_player.x, obj_player.y,x,y) 
		var fly_cond = (obj_player.state == player_state_tailsfly && abs(fly_angle) < 45)
		if(obj_player.attacking || obj_player.invincible || fly_cond)
		{
			//Create battery ring
			if (!shard) {
				//nah
			} else {
				shard.hidden_within = false;
				shard.collected = true;	
				shard.scale = 1;
				array_push(obj_level.emerald_array, 128)
				audio_stop_sound(sfx_radar_ding)
				play_sound(sfx_shard_collect)
			}
		
			//Player bounce
			obj_player.y_speed = -abs(obj_player.y_speed);
		
			//Create score object and add combo and badnik chain
			obj_level.badnik_chain += 1;
			create_score();
		
			//Create explosion effect
			create_effect(x, y, spr_effect_explosion01, 0.3);
		
			//Play destroying sound
			var splats = [sfx_gore1,sfx_gore2,sfx_gore3,sfx_gore4]
			play_sound(splats[irandom(3)])
			play_sound(sfx_destroy);
		
			//Destroy badnik
			if (!instance_exists(obj_bonus_level)) {
				global.store_object_state[| id] = true
			}
			instance_destroy();	
		}else
		{
			//Player getting hurt
			player_hurt();
		}
	}
	
	//Destroy the enemy WITH PISS!!!!
	if(place_meeting(x,y, obj_piss_droplets))
	{
		//Create battery ring
		if (!shard) {
			//nah
		} else {
			shard.hidden_within = false;
			shard.collected = true;	
			shard.scale = 1;
			array_push(obj_level.emerald_array, 128)
			audio_stop_sound(sfx_radar_ding)
			play_sound(sfx_shard_collect)
		}
		
		//Create explosion effect
		create_effect(x, y, spr_effect_explosion01, 0.3);
		
		//Play destroying sound
		var splats = [sfx_gore1,sfx_gore2,sfx_gore3,sfx_gore4]
		play_sound(splats[irandom(3)])
		play_sound(sfx_destroy);
		
		//Destroy badnik
		if (!instance_exists(obj_bonus_level)) {
			global.store_object_state[| id] = true
		}
		instance_destroy();	
	}