/// @description Input checks	
	if(instance_exists(obj_shell) && !obj_shell.isOpen || !instance_exists(obj_shell))
	{
		var player_shoulder_down = instance_exists(obj_player) ? gamepad_button_check(global.gamepad_slot, gp_shoulderlb) || gamepad_button_check(global.gamepad_slot, gp_shoulderrb) : false;
		var player_shoulder_down_press = instance_exists(obj_player) ? gamepad_button_check_pressed(global.gamepad_slot, gp_shoulderlb) || gamepad_button_check_pressed(global.gamepad_slot, gp_shoulderrb) : false;
		
		Up = keyboard_check(global.key_up) || gamepad_button_check(global.gamepad_slot, gp_padu);
		Down = keyboard_check(global.key_down) || gamepad_button_check(global.gamepad_slot, gp_padd) || player_shoulder_down;
		Left = keyboard_check(global.key_left) || gamepad_button_check(global.gamepad_slot, gp_padl);
		Right = keyboard_check(global.key_right) || gamepad_button_check(global.gamepad_slot, gp_padr);
		A = keyboard_check(global.key_a) || gamepad_button_check(global.gamepad_slot, gp_face1);
		B = keyboard_check(global.key_b) || gamepad_button_check(global.gamepad_slot, gp_face2);
		C = keyboard_check(global.key_c) || gamepad_button_check(global.gamepad_slot, gp_face3);
		X = keyboard_check(global.key_x) || gamepad_button_check(global.gamepad_slot, gp_shoulderl);
		Y = keyboard_check(global.key_y) || gamepad_button_check(global.gamepad_slot, gp_face4);
		Z = keyboard_check(global.key_z) || gamepad_button_check(global.gamepad_slot, gp_shoulderr);
		Action = A || B || C;
		Start = keyboard_check(global.key_start) || gamepad_button_check(global.gamepad_slot, gp_start);

		//Pressed
		UpPress = keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(global.gamepad_slot, gp_padu);
		DownPress = keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(global.gamepad_slot, gp_padd) || player_shoulder_down_press;
		LeftPress = keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(global.gamepad_slot, gp_padl);
		RightPress = keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(global.gamepad_slot, gp_padr);
		APress = keyboard_check_pressed(global.key_a) || gamepad_button_check_pressed(global.gamepad_slot, gp_face1);
		BPress = keyboard_check_pressed(global.key_b) || gamepad_button_check_pressed(global.gamepad_slot, gp_face2);
		CPress = keyboard_check_pressed(global.key_c) || gamepad_button_check_pressed(global.gamepad_slot, gp_face3);
		XPress = keyboard_check_pressed(global.key_x) || gamepad_button_check_pressed(global.gamepad_slot, gp_shoulderl);
		YPress = keyboard_check_pressed(global.key_y) || gamepad_button_check_pressed(global.gamepad_slot, gp_face4);
		ZPress = keyboard_check_pressed(global.key_z) || gamepad_button_check_pressed(global.gamepad_slot, gp_shoulderr);
		ActionPress = APress || BPress || CPress;
		StartPress = keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(global.gamepad_slot, gp_start);
		
		//Analog input presses
		event_user(0);
	}else
	{
		//Hold keys
		Up = false;
		Down = false;
		Left = false;
		Right = false;
		A = false;
		B = false;
		C = false;
		X = false;
		Y = false;
		Z = false;
		Action = false;
		Start = false;
	}
	
	if(vibration_timer > 0)
	{
		gamepad_set_vibration(global.gamepad_slot, vibration_strenght, vibration_strenght);
	}
	else
	{
		gamepad_set_vibration(global.gamepad_slot, 0, 0);
	}
	
	vibration_timer = max(vibration_timer-1, 0);