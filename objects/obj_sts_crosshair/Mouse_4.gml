var _object = instance_place(x, y, obj_sts_sonic)

if (_object != noone) && _object.lock_on == 0{
	_object.lock_on = 1
	_object.tick = 0
	
	play_sound(sfx_alarm)
}

