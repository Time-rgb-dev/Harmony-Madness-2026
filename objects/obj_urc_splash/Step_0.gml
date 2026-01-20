timer++;

//Only activate after a little bit
if(timer >= 30) {
	visible = true;
	
	if(timer == 30) {
		play_sound(sfx_combinering);
	}
	
	if((Input.StartPress || Input.APress) || timer == 200) {
		fade_to_room_next(2, FADE_BLACK, 30);
	}
}

//Center on screen
x = WINDOW_WIDTH/2;
y = WINDOW_HEIGHT/2;