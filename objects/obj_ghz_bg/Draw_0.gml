///@description Draw background with palette cycling
	pal_i += 0.1;
	pal_i = wrap(pal_i, 0, 4);
	
	for(var i = 0; i < bg_id; i++) {
		palette_swap(pal_ghz_bg, floor(pal_i));
		draw_background_layer(i);
	}
	shader_reset();
	