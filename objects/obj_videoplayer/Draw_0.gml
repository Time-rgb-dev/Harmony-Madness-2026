if time_active < 300 {exit}

if instance_exists(obj_omegle){
	if obj_omegle.tick > 0 && obj_omegle.tick < 80 {
		exit
	} else {
		static_active = 1
	}
}

if active == 0 {
	if video_paused == 0{
		video_pause()
		video_paused = 1
	}
	
} else if active == 1{
	if video_paused == 1{
		video_resume()
		video_paused = 0
	}
	
}


if static_active == 1 && tick > 20 && obj_player.knockout_type == 0{
	global.rings = 0
	player_hurt()
}

var video_data = video_draw()
var video_status = video_data[0]

if video_status == 0 && active == 1 || static_active > 0{
	
	if static_active == 0 {
	
		//draw video
		if tick > (length - 40) && FRAME_TIMER mod 4 == 0{exit}
		draw_surface_ext(video_data[1], obj_camera.camera_x + 146, obj_camera.camera_y - 128, 0.5, 0.5, 0, c_white, 1)
	}
} else {
	draw_sprite_ext(spr_omegle, 0, obj_camera.camera_x + 146, obj_camera.camera_y - 128, 0.5, 0.5, 0, c_white, 1)
}