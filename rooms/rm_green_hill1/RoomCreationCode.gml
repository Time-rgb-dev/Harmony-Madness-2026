	with(obj_level)
	{
		//Set stage music and loop points
		stage_music = MUSIC.GREEN_HILL;
		
		//Set level name
		stage_name = "Green Hill";
		
		//Set stage act
		act = 1;
		
		//Is next level doing act transition in case if you do a multi-zone level.
		act_transition = true;
		
		//HLDC specifics
		red_ring_count = 0;
		
		is_emerald_hunt = false;
		emerald_hunt_total = 3;
		
		//Animal array
		animal = [A_FLICKY, A_CUCKY, A_RICKY];
		
		//Next level
		next_level = rm_scary_green_hill;
		
		//Force character switch
		with(obj_player) {
			global.character = CHAR_TAILS;
			player_animation_list();
			animator_reset(animator);
		}
		
		//Palette cycle layers
		function layer_shader_start() {
			if(event_type == ev_draw && event_number == ev_draw_normal) {
				palette_swap(pal_ghz_water, obj_ghz_bg.pal_i);
			}
		}
		function layer_shader_end() {
			if(event_type == ev_draw && event_number == ev_draw_normal) {
			    shader_reset();
			}
		}
		layer_script_begin("Chunks_Fore", layer_shader_start);
		layer_script_begin("Chunks_Front", layer_shader_start);
		layer_script_end("Chunks_Fore", layer_shader_end);
		layer_script_end("Chunks_Front", layer_shader_end);
	}