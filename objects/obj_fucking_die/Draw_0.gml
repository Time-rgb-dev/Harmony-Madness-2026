var c = view_camera[view_current];
var cx = camera_get_view_x(c);
var cy = camera_get_view_y(c);

if(active) obj_player.input_disable = true;

//Normal death sequence
if(!antonblast) {
	var character_name = "this is a dummy string, i got nothin";
	var character_frame = 3;
	switch(global.character)
	{
		case CHAR_SONIC: character_name = "theodore hedgehog"; character_frame = 0; break;
		case CHAR_TAILS: character_name = "piles prower"; character_frame = 1; break;
		case CHAR_KNUX: character_name = "yellow waluigi"; character_frame = 2; break;
		case CHAR_GRANDMA: character_name = "the grandma from coco"; character_frame = 4; break;
		default: character_name = "wjat"; character_frame = 3; break;
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
		delay++;
	}
    
    if(flom_murder)
    {
        character_frame = 5;
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
		shader_set_uniform_f(shader_get_uniform(shd_grayscale, "u_Amount"), 1.0);
		draw_sprite_ext(spr_fucking_die_character, character_frame, cx + 64, cy + (WINDOW_HEIGHT/2), 1, 1, 0, c_white, fade_thing);
		shader_reset();	
	}
}

//Antonblast death sequence
if(antonblast) {
	var char_death_big;
	switch(global.character) {
		//Add screen splat death sprites for every character
		case CHAR_SONIC: char_death_big = spr_sonic_death break;
		case CHAR_TAILS: char_death_big = spr_tails_die break;
		case CHAR_KNUX: char_death_big = spr_knuckles_death break;
		case CHAR_GAMETAP: char_death_big = spr_gametap break;
		case CHAR_GRANDMA: char_death_big = spr_grandma_from_coco break;
		default: char_death_big = spr_sonic_death break;
	}
	
	//I ain't commenting all of the code down here, just don't change it lol
	//- Frosty
	if(obj_player.knockout_type == K_DIE || obj_player.knockout_type == K_DROWN) {
		if(!active) {
            //AND set the camera mode to null so it doesn't move!
            //Sincerely, The Flamer
			//Thank you Flame - Regards, Frosty
            camera_set_mode(CAM_NULL);
			audio_stop_all();
			play_sound(sfx_smack);
			death_player_pos_y = obj_player.y;
			death_player_pos_x = obj_player.x;
			active = true;
		}
		delay++;
	}
	
	if(active) {
		obj_player.visible = false;
		depth = obj_hud.depth - 1;
		var scale_dest = 15;
		death_big_scale = approach(death_big_scale, scale_dest, 2);
		if(!scale_reached) death_big_rot += 55;
		if(death_big_scale == scale_dest) {
			if(!scale_reached) {
				play_sound(sfx_anton_bombcrushed);
				obj_camera.camera_shake = 10;
			}
			slide_timer++;
			scale_reached = true;
		}
		if(slide_timer == 80) play_sound(sfx_anton_slideglass);
		if(slide_timer > 75) {
			stretch_mult += 0.05;
			death_player_pos_y += 5 * stretch_mult;
			death_big_stretch += 0.01;
		}
		if(obj_player.death_timer > 5) {
			draw_badluck = true;
			badluck_scale = approach(badluck_scale, 1, 0.5);
		}
		if(obj_player.death_timer == 200) {
			fade_change(FADE_OUT, 3);
		}
		
		if(draw_badluck) draw_sprite_ext(spr_badluck, 0, cx + WINDOW_WIDTH/2, cy + 40, badluck_scale, badluck_scale, 0, c_white, 1);
		draw_sprite_skew(char_death_big, 0, death_player_pos_x, death_player_pos_y, death_big_scale, death_big_scale, death_big_rot, 1, 0, 0, 1, death_big_stretch);
	}
}