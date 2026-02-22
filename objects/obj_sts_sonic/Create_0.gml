_spd = floor(random_range(2, 4));
_quill = 0
_dir = 0
lock_on = 0

tick = 0

//Decide whether the sonic has a shitquill
if random_range(0, 50) <= 20{
	_quill = 1
	_spd = floor(random_range(1, 2));
}

//Get the direction
if x < 224{
	_dir = 1 
	
} else {
	_dir = -1
	
}
