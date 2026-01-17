/// @description Add background
	
	//Inherit the parent event
	event_inherited();
	
	//Vertical scroll factor
	var v_scroll = 0.98;
	var v_off = 0;
	
	//Palette cycle index
	pal_i = 0;
	
	//Add backgrounds, ID starting out from 0, increments by 1 with each background added
	add_background(spr_ghz_bg_clouds, 0,		0.1875, v_scroll, -1, 0, 0, v_off, false);
	add_background(spr_ghz_bg_clouds, 1,		0.1875, v_scroll, -0.5, 0, 0, 32+v_off, false);
	add_background(spr_ghz_bg_clouds, 2,		0.1875, v_scroll, -0.25, 0, 0, 47+v_off, false);
	add_background(spr_ghz_bg_mountains, 0,		0.5, v_scroll, 0, 0, 0, 62+v_off, false);
	add_background(spr_ghz_bg_mountains, 1,		0.375, v_scroll, 0, 0, 0, 110+v_off, false);
	add_background_line(spr_ghz_bg_water, 0,	0.5, v_scroll, 0, 0, 0, 150+v_off, 1, 0.005);