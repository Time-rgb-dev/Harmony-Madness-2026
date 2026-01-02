var _type = async_load[? "type"];

if (_type == "video_start")
{
    played = true
}
else if (_type == "video_end")
{
	finished = true
    video_close();
}