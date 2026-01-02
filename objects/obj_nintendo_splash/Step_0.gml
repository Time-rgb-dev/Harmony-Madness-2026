timer++

if (round(timer) == 40)
{
	is_visible = true;
	play_sound(sfx_rupee);
}

if (!done && (Input.APress || Input.StartPress || round(timer) == 120))
{
	done = true;
	fade_to_room_next(5,FADE_BLACK);
}