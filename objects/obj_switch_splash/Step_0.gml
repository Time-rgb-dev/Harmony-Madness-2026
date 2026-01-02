timer++

if (!sounded && image_index >= 12){
	play_sound(sfx_switch);
	sounded = true;
}

if (!done && (Input.APress || Input.StartPress || image_index >= 19))
{
	image_speed = 0;
	done = true;
	fade_to_room_next(5,FADE_BLACK);
}