var cs_l = camera_get_view_x(view_camera[view_current]);
var cs_t = camera_get_view_y(view_camera[view_current]);

if(obj_player.x > bbox_left && trigger == 0) {
	trigger = 1;
}

if (trigger > 0) {
	if (vertical_cap) obj_camera.target_top = min(cs_t,bbox_top);
    obj_camera.target_bottom = bbox_bottom+1;
	obj_camera.target_left = cs_l;
	obj_camera.target_right = bbox_right+1;
}
	
if (trigger = 1) {
	var top_test = false;
	if (!vertical_cap || obj_camera.target_top == bbox_top) top_test = true;
	
	if (obj_camera.target_bottom == bbox_bottom+1 && top_test) {
		if (cs_l == bbox_left) {
			music_set_fade(FADE_OUT, 1);
		}
	}
}

if (trigger == 1 && obj_music.general_fade_multiplier = 0) {
	music_reset_fade();
	play_music(boss_music);
	instance_create_depth(x+boss_offset_x,y+boss_offset_y,depth,boss_object);
	trigger = 2;
}

if (global.dev_mode && trigger == 2 && keyboard_check_pressed(ord("H"))) {
	trigger = 3;
}

if (trigger == 3) {
	switch (uncap_type) {
	    case "Immediate":
			obj_camera.target_top = 0;
			obj_camera.target_bottom = room_height;
			obj_camera.target_left = 0;
			obj_camera.target_right = room_width;
	        instance_destroy();
	        break;
	    case "Signpost":
			obj_player.earthly_desires = false;
			play_sound(sfx_twinkle);
			var signpost = instance_create_depth(floor(x+bbox_right) >> 1, cs_t, depth, obj_signpost);
			signpost.spin_speed = 16;
			signpost.triggered = true;
			signpost.ground = false;
			//i think the ysp is not 0
			trigger = 4;
	        break;
		//FUCK YOU! THIS CODE IS UNFNINISHED! NO SONIC 2 AND IMMEDIATE HORIZONTAL 4 U!
	    default:
	        play_sound(sfx_death);
			trigger = 4;
	        break;
	}	
}