	//Essential values
	zone_sel = 0;
	act_sel = 0;
	char_sel = 0;
	sound_sel = 0;
	sound_arr = ds_map_keys_to_array(global.music_map);
	input_enable = true;
	
	//show_debug_message("key for map 0");
	//show_debug_message(sound_arr[0]);
	
	//The lists
	zone_list = [["UTTER BULLSHIT", rm_utter_bullshit1], ["WEED HILL", rm_arboreal_agate1, rm_arboreal_agate2], ["GREEN HILL", rm_green_hill1], ["KONG BLAST", rm_kongblast], ["CRASH THE GAME", rm_crash]];
	char_list = [["SONIC", CHAR_SONIC], ["TAILS", CHAR_TAILS], ["WARIO", CHAR_KNUX], ["GAMETAP", CHAR_GAMETAP], ["MAMA COCO", CHAR_GRANDMA]];
	
	reset_stage_data();
	global.score = 0;
	
	quotes = ["WELCOME TO HARMONY MADNESS!", "WHAT THE FUCK", "I WANNA FUCK LANGEEEEE", "IM CRINE", "WELCOME TO HELL!", "THIS WAS A MISTAKE", "FROSTY WAS HERE", "EMPTY STRING", "NULL", "VOID", "TS SO PEAK", "KILL YOURSELF!!!!!", "HOP ON ELEMENTS", "DARK IS A BIG FAT FUCKING CHUD"];
	quote_index = irandom(array_length(quotes)-1);
	
	//Randomize the BG
	bg_frame = irandom(sprite_get_number(spr_levsel_bg));
	
	fade_in_room(5);
	play_music(MUSIC.MENU);
	
	//Create stage data
	for (var i = 0; i < 128; ++i) 
	{
	    deform_data[i] = 12 * dsin((360 / 128) * i);
	}
