c = view_camera[view_current];
cx = camera_get_view_x(c);
cy = camera_get_view_y(c);

if (obj_player.knockout_type == K_DIE) {
	draw_sprite_ext(sprite_index, image_index, cx, cy, WINDOW_WIDTH, WINDOW_HEIGHT, 0, c_white, 1);
	depth = obj_hud.depth - 1;
	
	if (fade_thing < 1.0) fade_thing += 0.1;
	shader_set(shd_grayscale);
	draw_sprite_ext(obj_player.sprite_index, 0, cx + 64, cy + (WINDOW_HEIGHT/2), 1, 1, 0, c_white, fade_thing);
	shader_reset();
	audio_stop_all();
}