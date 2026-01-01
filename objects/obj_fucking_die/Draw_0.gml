c = view_camera[view_current];
cx = camera_get_view_x(c);
cy = camera_get_view_y(c);

if (obj_player.knockout_type == K_DIE) {
	draw_sprite_ext(sprite_index, image_index, cx, cy, WINDOW_WIDTH, WINDOW_HEIGHT, 0, c_white, 1);
	depth = obj_hud.depth - 1;
	
	if (!got_sprite) {
		player_sprite = obj_player.sprite_index;
		
		got_sprite = true;
	}
	
	if (fade_thing < 1) fade_thing += 0.1;
	draw_sprite_ext(player_sprite, 0, cx+64,cy+(WINDOW_HEIGHT/2),1,1,0,c_white,fade_thing);
	audio_stop_all();
}