var _data = video_draw();
var _status = _data[0];
var _video_status = video_get_status();

if (_status == 0 && _video_status == video_status_playing)
{
    var _surface = _data[1];
    draw_surface_stretched(_surface, x, y,global.window_size * WINDOW_WIDTH,global.window_size * WINDOW_HEIGHT);
}