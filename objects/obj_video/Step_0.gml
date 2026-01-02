var _video_status = video_get_status();

if (!played)
{
    played = true
	video_open(video_path)
}

if (played && finished)
{
	room_goto_next()
}