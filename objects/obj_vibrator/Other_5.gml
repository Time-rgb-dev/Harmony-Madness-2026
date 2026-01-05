/// @description Revert the window size changes

	global.window_width  = 426;				//Window's horizontal size
	global.window_height = 240;				//Window's vertical size
	global.window_size_limit = (round(display_get_width() / global.window_width) - 1);
	global.window_size   = round(global.window_size_limit / 2); //Window size multiplier
