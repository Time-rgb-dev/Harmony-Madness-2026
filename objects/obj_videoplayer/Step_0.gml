tick += 1
time_active += 1

if time_active > 300{
	if tick > length && static_active == 0 {
		active = (1 - active)
		tick = 0
		length = floor(random_range(200, 240))
	}

	if active == 0{
		if keyboard_check(vk_anykey) && jumpscare == 0{
			instance_create_depth(0, 0, 0, obj_omegle)
			jumpscare = 1
			video_close()
		}
	}
}