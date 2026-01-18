///@description Draw background
	pal_i += 0.2;
	pal_i = wrap(pal_i, 0, 4);
	
	for(var i = 0; i < bg_id; i++) {
		palette_swap(pal_ghz_water, floor(pal_i));
		draw_background_layer(i);
	}
	shader_reset();