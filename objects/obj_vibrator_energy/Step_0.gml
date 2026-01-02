// obj_obstacle: Step Event
var move_speed = + (obj_vibrator.level / 2) + 2;
move_speed = clamp(move_speed, 2, 8)
y += move_speed 

// Check collision with DK's lane
if (y >= obj_vibrator.base_y && y<= obj_vibrator.base_y + 64) {
    if (lane_index == obj_vibrator.lane_index) {
        play_sound(sfx_superring)
		obj_vibrator.energy += 1 + obj_vibrator.level 
		instance_destroy();
    }
}
if (y >= obj_vibrator.base_y + 128)
{instance_destroy();}
	
	
	