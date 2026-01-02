timer++
if (!done && (Input.APress || Input.StartPress) && round(timer) > 40)
{
	done = true;
	audio_stop_all()
	fade_to_room_next(6,FADE_BLACK)
}

if (!done && audio_sound_get_track_position(obj_music.playing[BGM]) > 8.7)
{
	done = true;
	music_fade_channel(BGM,FADE_OUT,8)
	fade_to_room_next(6,FADE_BLACK)
}

if (state != 2 && audio_sound_get_track_position(obj_music.playing[BGM]) > 1.0) {
	if (state == 0) scale += 0.005;
	scale_time = min(60, scale_time + 0.002)
}

if (state == 2) {
	frame_time = 0
}

if (state != 2) {
	frame_time = (frame_time + scale_time)
	if (frame_time > 2) {
		frame_time -= 2
	}
}

if (state == 0 && audio_sound_get_track_position(obj_music.playing[BGM]) > 7.7) {
	state = 1
}

if (state == 1 && audio_sound_get_track_position(obj_music.playing[BGM]) > 8.2) {
	state = 2
}