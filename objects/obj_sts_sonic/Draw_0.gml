//Get sprite
var sprite = 0
var _frame = _quill
if lock_on == 1 {_frame = 2}

draw_sprite_ext(spr_sts_sonic, _frame, x, y + abs(sin(tick / 30 * _spd) * 10), _dir, 1, 0, c_white, 1)