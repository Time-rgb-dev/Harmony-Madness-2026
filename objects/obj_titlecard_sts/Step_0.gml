tick += 1
pos += 0.02;
pos = min(pos, 1);

x = 224

var _start = 320;
var _end = 96;
var _dist = (_end - _start);

y = _start + (animcurve_channel_evaluate(curve, pos) * _dist);


//Fade out titlecard
if tick >= 200 {
	image_alpha -= 0.025;
	
	//Create game elements
	if tick >= 300 && !instance_exists(obj_sts_spawner){
		play_sound(bgm_sts, 1)
		instance_create_depth(x, y, depth, obj_sts_spawner);
		instance_create_depth(x, y, depth, obj_sts_crosshair);
		instance_create_depth(x, y, depth, obj_sts_bg);
	};
};

