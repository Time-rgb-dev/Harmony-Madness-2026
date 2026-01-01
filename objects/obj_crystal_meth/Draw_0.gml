draw_self();

//Setup the font and the alignment
draw_set_font(fon_titlecard);
draw_set_halign(fa_center);
    
//Draw E
if (can_meth) draw_text(x + 48, y - 24, "E");
    
//Reset
draw_set_halign(fa_center);