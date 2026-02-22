tick += 1

if lock_on {
	if tick > 16 {
		instance_destroy()
		
		play_sound(sfx_gore1)
		
		create_effect(x, y, spr_effect_explosion01, 0.5)
		
		var _score = instance_create_depth(x, y - 40, depth-1, obj_score_effect);
		_score.image_xscale = 3
		_score.image_yscale = 3
		
		if _quill == 0 {
			_score.image_index = 7
		} else {
			_score.image_index = 0
		}
		
		
	}
	exit	
}

x += _dir * _spd

if tick > 10 && x < -64 || x > 480{
	instance_destroy()
}