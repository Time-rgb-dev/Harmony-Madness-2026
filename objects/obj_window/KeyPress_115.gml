/// @description Change window size
	if(!global.dev_mode) exit;
	
	//Change the value and modulate it
	global.window_size = wrap(global.window_size + 1, 1, global.window_size_limit);
	
	//Call the resize event
	event_user(0);
	
	//Save window size
	ini_open("options.ini")
	ini_write_real("graphics", "window_size", global.window_size);
	show_debug_message("Window size saved");
	ini_close();