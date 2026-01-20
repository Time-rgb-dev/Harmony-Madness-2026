//So you can't instantly skip it
timer++;

//Enter the gexus
if((Input.StartPress || Input.APress) && timer >= 30) {
    fade_to_room_next(3);
	music_set_fade(FADE_OUT, 2);
}