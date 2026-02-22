depth = -2

if tick == 0 {play_sound(sfx_jumpscare)}
	
tick += 1

if size < 2.5 {size += 0.1}
if FRAME_TIMER mod 4 <= 2{
	rot = 15
} else {
	
	rot = -15
}

if tick > 80 {
	instance_destroy()
	audio_stop_all()
}