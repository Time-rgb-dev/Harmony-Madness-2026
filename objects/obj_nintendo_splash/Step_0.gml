timer++

if (round(timer) == 40)
{
	play_sound(sfx_rupee);
}

if (!done && (Input.APress || Input.StartPress || round(timer) == 80))
{
	done = true;
	fade_to_room(rm_splash, 2, c_black);
}