timer++;
water_move += speed_x[1];

if(timer >= 60 && !started && (Input.StartPress)) {
	fade_to_room_next(3, FADE_OUT, 10);
	music_set_fade(FADE_OUT, 3);
}