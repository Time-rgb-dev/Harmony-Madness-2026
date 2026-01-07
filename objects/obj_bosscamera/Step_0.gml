var cs_l = camera_get_view_x(view_camera[view_current]);
var cs_t = camera_get_view_y(view_camera[view_current]);

if(obj_player.x > bbox_left && trigger == 0) {
	trigger = 1;
}

if (trigger > 0 && trigger < 4) {
	if (vertical_cap) obj_camera.target_top = floor(min(cs_t,bbox_top));
    obj_camera.target_bottom = floor(bbox_bottom+1);
	obj_camera.target_left = floor(cs_l);
	obj_camera.target_right = floor(bbox_right+1);
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
	var boss = instance_create_depth(x+boss_offset_x,y+boss_offset_y,depth,boss_object);
	trigger = 2;
}

//kill boss
if (global.dev_mode && trigger == 2 && keyboard_check_pressed(ord("H"))) {
	trigger = 3;
}

if (trigger == 3) {
	switch (uncap_type) {
	    case "Immediate":
			//Your earthly desires do not get set to false. Why? Just in case someone makes a midboss. Idk why.
			obj_camera.target_top = 0;
			obj_camera.target_bottom = room_height;
			obj_camera.target_left = 0;
			obj_camera.target_right = room_width;
			trigger = 4;
	        break;
	    case "Signpost":
			play_sound(sfx_twinkle);
			obj_player.earthly_desires = false;
			var signpost = instance_create_depth(floor(x+bbox_right) >> 1, cs_t, depth, obj_signpost);
			signpost.spin_speed = 16;
			signpost.triggered = true;
			signpost.ground = false;
			//i think the ysp is not 0
			//play_music(obj_level.stage_music);
			trigger = 4;
	        break;
	    case "Sonic 2":
	    case "Immediate Horizontal":
			obj_player.earthly_desires = false;
			play_music(obj_level.stage_music);
			if(instance_exists(obj_capsule)) var nv = instance_nearest(bbox_right,y,obj_capsule);
			else if(instance_exists(obj_signpost)) var nv = instance_nearest(bbox_right,y,obj_signpost);
			else {
				show_debug_message("No capsule or signpost found.");
				instance_destroy();
				break;
			}
			trigger = 4;
			dist = floor(nv.x+global.window_width/2);
			break;
	}	
}

if (trigger == 4) {
	switch (uncap_type) {
	    case "Sonic 2":
			show_debug_message(obj_camera.target_right);
			show_debug_message(dist);
			obj_camera.target_left = cs_l;
			obj_camera.target_right = approach(obj_camera.target_right, dist, 1.5);
			break;
	    case "Immediate Horizontal":
			obj_camera.target_right = dist;
			break;
		default:
			//Do nothing!
			break;
	}	
}