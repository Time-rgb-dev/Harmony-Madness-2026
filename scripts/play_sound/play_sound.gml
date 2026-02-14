function play_sound(sound, loop = false){
	//Stop the audio before playing so it doesn't overlay
	audio_stop_sound(sound);
	
	//Play the sound
	if ((FRAME_TIMER mod 256) == 0) {
		audio_play_sound(sfx_boing, 0, loop);
	} else audio_play_sound(sound, 0, loop);
	//Change the volume to match the global volume
	audio_sound_gain(sound, global.sfx_volume, -1);
}