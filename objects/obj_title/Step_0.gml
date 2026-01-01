if (!done && image_index > 30) image_index = 10;

if (!done && (Input.APress || Input.StartPress)) {
	done = true;
	audio_stop_all();
	play_sound(Sound67);
	image_index = 33;
}

if (done && image_index >= 40) fade_to_room(rm_stage_select, 9999, FADE_BLACK);