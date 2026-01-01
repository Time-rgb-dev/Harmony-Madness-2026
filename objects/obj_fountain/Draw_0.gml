///@description Draw fountain
    draw_self();
    
    //Setup the font and the alignment
    draw_set_font(fon_titlecard);
    draw_set_halign(fa_center);
    
    //Draw E
    if(can_drink) draw_text(x, y - 88, "E");
    
    //Reset
    draw_set_halign(fa_center);