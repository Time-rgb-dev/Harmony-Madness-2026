fade_thing = 0.0;
fade_thing2 = 0.0;
fade_thing3 = 0.0;
active = false;
delay = 0;

antonblast_chance = irandom(8);
antonblast = antonblast_chance == 0 && global.life > 1 ? true : false;
death_big_scale = 1;
death_big_stretch = 1;
death_big_rot = 0;
death_player_pos_x = 0;
death_player_pos_y = 0;
scale_reached = false;
slide_timer = 0;
stretch_mult = 0;
badluck_scale = 3;
draw_badluck = false;