event_inherited();

fade_in_room(3, FADE_BLACK);
play_music(MUSIC.SUPERSTARS_TITLE);

started = false;
timer = 0;
prompt_draw = true;
water_move = 0;

add_background(spr_titlescreen_bg, 0, 0, 0, -0.18);
add_background(spr_titlescreen_bg, 1, 0, 0, -0.13, 0, 0, 0);
add_background_line(spr_titlescreen_bg3d, 1, 0, 0, -0.13, 0, -700, 144, 1, 0.2 );