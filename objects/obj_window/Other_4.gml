/// @description Surface resize
	//Screen resizing
	camera_set_WINDOW_size(WINDOW_camera[WINDOW_current], global.window_width, global.window_height);

	//Resize the surface:
	surface_resize(application_surface, global.window_width, global.window_height);