if (FRAME_TIMER mod spawn_interval) == 0 {
	var spawn_dir = floor(random_range(0, 100))
	var spawn_x = 0

	if spawn_dir <= 50{
		spawn_x = -64
	} else {
		spawn_x = 480
	}
	
	instance_create_depth(spawn_x, 200, depth, obj_sts_sonic)
	spawn_interval = floor(random_range(100, 150))
};