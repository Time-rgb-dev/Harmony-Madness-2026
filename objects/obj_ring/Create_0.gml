/// @description Values

	//random chance to replace with weed
	if (random_range(0, 67) == 21)
	{
		instance_create_depth(x, y, depth, obj_weed);
		instance_destroy();
	}

	x_speed = 0;
	y_speed = 0;
	magnet = false;
	ringloss = false;
	culling = true;
	timer = 0;
	animation_speed = 0.55;
	plane = PLANE_A;
	image_speed = 0;
	
	if (!instance_exists(obj_bonus_level)) {
		if (global.store_object_state[| id]) {
			instance_destroy()	
		}
	}