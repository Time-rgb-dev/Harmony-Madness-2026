draw_self();

//Setup the font and the alignment
draw_set_font(fon_titlecard);
draw_set_halign(fa_center);
    
//Draw E
if (can_meth) draw_sprite(spr_sonic_mania_saturn_jp_input, 5, x + 48, y - 24);
    
//Reset
draw_set_halign(fa_center);