/// @description Change window size
	if(!global.dev_mode) exit;
	
	//Change the value and modulate it
	global.window_size += 1;
	
	//Reset
	if(global.window_size > 5) global.window_size = 1;
	
	//Call the resize event
	event_user(0);