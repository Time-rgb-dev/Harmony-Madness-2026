// obj_obstacle: Step Event
var move_speed = + (obj_vibrator.level / 2);
move_speed = clamp(move_speed, 2, 8)
y += move_speed 

// Check collision with DK's lane
if (y >= obj_vibrator.base_y && y<= obj_vibrator.base_y + 64) {
    if (lane_index == obj_vibrator.lane_index) {
        obj_vibrator.squish_count = max(0, obj_vibrator.squish_count - 50); 
        play_sound(sfx_hurt)
		play_sound(sfx_ringloss);
		play_sound(sfx_realassexplosion);
		create_effect(x, y, spr_effect_explosion01, 0.5);
        gamepad_rumble(5, 0.5);
		instance_destroy();
    }
}
if (y >= obj_vibrator.base_y + 128)
{instance_destroy();}

if (lane_index == obj_vibrator.lane_index && obj_vibrator.laser && y<= obj_vibrator.base_y + 64)
{
	play_sound(sfx_realassexplosion);
	create_effect(x, y, spr_effect_explosion01, 0.5);
	if !obj_vibrator.phaser
	{
	obj_vibrator.laser = false;
	obj_vibrator.laser_frames = 0;
	}
	instance_destroy();
	gamepad_rumble(5, 2);
	obj_vibrator.squish_count += 5
	obj_vibrator.tilllevel -= 5
}
	
	
	