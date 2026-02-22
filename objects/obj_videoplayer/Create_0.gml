video_close()

if global.omegle_mode == 0 {instance_destroy()}

video = video_open("omegle.mp4")
tick = 0
length = 0
active = 0
video_paused = 1
static_active = 0
jumpscare = 0
time_active = 0

video_enable_loop(true)
video_pause()
