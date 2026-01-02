/// @description Insert description here
// You can write your code in this editor

if(player_collide_object(C_MAIN))
{
	play_sound(sfx_weed);
	instance_destroy();
	var i = 0
	repeat(16) {
		var ang = (360 / 16) * i  
		var spd = 2
		var ani_speed = 0.2
		if (i mod 2 == 0) {
			spd = 1	
			ani_speed = 0.08
		}
		create_effect(x, y, spr_weed_sparkle, ani_speed ,depth, lengthdir_x(spd, ang), lengthdir_y(spd * 1.2, ang),0,0.04);
		i++;
	}
	if(obj_player.highness < 100) obj_player.highness = min(obj_player.highness+25,100)
}