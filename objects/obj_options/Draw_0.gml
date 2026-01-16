///@description Draw options
	//Screen center values
	var center_x = WINDOW_WIDTH / 2;
	var center_y = WINDOW_HEIGHT / 2;
	
	//Change the font
	draw_set_font(font_papyrus);
	
	//Change text alingment to the center
	draw_set_halign(fa_center);
	
	//Draw title
	draw_text(center_x, 20, "customize yo shit");
	
	//Change the font
	draw_set_font(font_comic_sans);
	
	//Draw options
	for (var i = option_offset; i < min(option_id, max_displayed_options+1) + option_offset; ++i) 
	{
		//Draw the name of the option
		draw_set_color(option_select == i ? text_color : unselected_text_color);
		draw_set_halign(fa_left);
		draw_text(center_x - 170, 50 + (15 * (i - option_offset)), option_name[i]);
				
		//Draw the number of the option
		draw_set_halign(fa_right);
		var number = variable_instance_get(global, option_variable[i]);
		var flag = number == 1 ? "True" : "False";
		draw_text(center_x + 170, 50 + (15 * (i - option_offset)), option_flag[i] ? flag : string(number));
	}
	
	//Reset the color and text alingment
	draw_set_color(c_white);
	draw_set_halign(fa_left);