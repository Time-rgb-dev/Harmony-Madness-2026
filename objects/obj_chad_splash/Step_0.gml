/// @description Insert description here
// You can write your code in this editor

wardening++;
if(wardening > 7.5*60)
{
	room_goto_next();
}

if (wardening < 6*60 && (Input.APress || Input.StartPress))
{
	wardening = 0;
	fade_to_room_next(6,FADE_BLACK);
}