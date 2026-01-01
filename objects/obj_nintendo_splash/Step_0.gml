timer++

if (round(timer) == 40)
{
	play_sound(sfx_rupee);
}

if (round(timer) == 80)
{
	fade_to_room(rm_splash, 2, c_black);
}