var _video_status = video_get_status();

if (!played)
{
    played = true
	video_open(video_path)
} else {
	if (Input.ActionPress || Input.StartPress) {
		video_close()
		finished = true
	}
}

if (played && finished)
{
	room_goto_next()
}