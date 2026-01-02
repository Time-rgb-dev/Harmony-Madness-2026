//draw_set_color(c_blue)
//draw_rectangle(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, 0)

draw_sprite(spr_dk_bg, 0, WINDOW_WIDTH/2, WINDOW_HEIGHT/2);
var offset_y = base_y + sin(global.object_timer * 0.05) * 4;
draw_sprite_ext(spr_dk_boy, 0, pos_x + 32 * lane_index, offset_y, scale_x, scale_y, image_angle, c_white, 1)
shader_reset();

draw_set_color(c_white);

draw_sprite(spr_vibrator_energy_capacity, max_energy, WINDOW_WIDTH / 2 + 64, WINDOW_HEIGHT / 2 - 109)
draw_sprite(spr_vibrator_energy, energy, WINDOW_WIDTH / 2 + 64, WINDOW_HEIGHT / 2 - 109)
draw_set_font(global.text_random);
draw_set_halign(fa_right);
draw_text(WINDOW_WIDTH / 2 + 18, WINDOW_HEIGHT / 2 - 109, "COUNTER")
draw_text(WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2 - 96, string(squish_count))
draw_text(WINDOW_WIDTH / 2 + 64, WINDOW_HEIGHT / 2 - 96, string(tillenergy));
draw_text(WINDOW_WIDTH / 2 - 64, WINDOW_HEIGHT / 2 - 109, "LEVEL " + string(level));
draw_text(WINDOW_WIDTH / 2 - 64, WINDOW_HEIGHT / 2 - 96, string(tilllevel));
