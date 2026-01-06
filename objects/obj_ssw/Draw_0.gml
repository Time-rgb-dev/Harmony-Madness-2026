draw_sprite_ext(spr_ssw, spin_flag, 215, 110, 1, 1, angle, c_white, 1);
if(spin_flag==0) draw_sprite_ext(spr_fucking_die, 0, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT / 2, 0, c_black, 1);
draw_self();

if (flash_thing > 0.0) flash_thing -= 0.05;
draw_sprite_ext(spr_fucking_die, 0, 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0, c_white, flash_thing);