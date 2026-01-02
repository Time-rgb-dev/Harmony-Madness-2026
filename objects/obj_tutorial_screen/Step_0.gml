accept_timer = approach(accept_timer, 60, 1);

if(accept_timer >= 60 && Input.StartPress && !accepted) {
	fade_to_room_next(3, FADE_BLACK, 10);
}