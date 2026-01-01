var c = view_camera[view_current];
var cx = camera_get_view_x(c);
var cy = camera_get_view_y(c);

var character_name = "soos i guess????";
switch(global.character)
{
	case CHAR_SONIC: character_name = "theodore hedgehog" break;
	case CHAR_TAILS: character_name = "piles prower" break;
	case CHAR_KNUX: character_name = "the red one" break;
}


if (obj_player.knockout_type == K_DIE || obj_player.knockout_type == K_DROWN) {
	if (!active) {
		if (delay > 5) {
			active = true
			audio_stop_all();
			if(global.life > 1) {
				music_reset_fade(FADE_OUT);	
			} else {
				music_reset_fade();	
				play_music(MUSIC.J_GAME_OVER, 0);
			}
		}
	}
	delay++
}

if (active) {
	draw_sprite_ext(sprite_index, image_index, cx, cy, WINDOW_WIDTH, WINDOW_HEIGHT, 0, c_white, 1);
	depth = obj_hud.depth - 1;
	
	if (fade_thing < 1.0) fade_thing += 0.1;
	
	if (global.life <= 1 && delay > 50){
		fade_thing3 = min(1.0, fade_thing3 + 0.05)
		draw_set_alpha(fade_thing3)
		draw_set_colour(c_white)
		draw_set_font(fon_times)
		draw_set_halign(fa_left)
		draw_text(cx + 156,cy + 32, "rip " + character_name)
	}
	
	if (global.life <= 1 && delay > 270){
		fade_thing2 = min(1.0, fade_thing2 + 0.02)
		draw_set_alpha(fade_thing2)
		draw_set_colour(c_white)
		draw_set_font(fon_times)
		draw_set_halign(fa_left)
		draw_text(cx + 156,cy + (WINDOW_HEIGHT) - 64, "loved by absolutly no one")
	}
	draw_set_alpha(1)
	shader_set(shd_grayscale);
	draw_sprite_ext(spr_fucking_die_character, global.character, cx + 64, cy + (WINDOW_HEIGHT/2), 1, 1, 0, c_white, fade_thing);
	shader_reset();	
}