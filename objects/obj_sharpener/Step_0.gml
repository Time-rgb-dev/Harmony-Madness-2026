//Enable flag at the beginning of the step
collision_flag = true;
cooldown -= 1
cooldown = max(0, cooldown)

if abs(obj_player.x - x) < 12{
	collision_flag = false;
	
	//Activate sharpener
	if abs(obj_player.y - y) < 10 && !obj_player.ground && cooldown == 0{
		obj_player.control_lock = 8
		obj_player.x += ((x - obj_player.x) / 5)
		obj_player.y += ((y - obj_player.y) / 5)
		obj_player.x_speed = 0
		obj_player.y_speed = 0
		if tick == 0 {tick = 1}
	}
}

//Behavior
if tick >= 1{
	
	tick += 1
	
	if tick >= 20 { 
		//Play scream sound
		if tick = 20 {play_sound(sfx_scream)} 
			
		if FRAME_TIMER mod 4 = 0 {
			obj_camera.camera_shake = 4
			play_sound(sfx_dust)
			
			var x_pos = random_range(-16, 16)
			create_debris(x + x_pos, y - 24, spr_dust_effect, 0.4, x_pos / 2, random_range(-2, -4), 1, gravity, 0, 0, depth + 2)
		}
	}
	
	if tick >= 140{
		obj_player.special_state = 1
		tick = 0
		cooldown = 16
	}
}
