/// @description Call resize event
	alarm[1] = 10;
	//im doing this because somehow somewhere someone fucked up the window???? who even caused this
	if(irandom(5) == 0) {
		window_set_caption(string("Hello, " + environment_get_variable("USERNAME")));
	}
