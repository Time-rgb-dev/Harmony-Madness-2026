/// @description Values
	Up = keyboard_check((global.key_up))
	Down = keyboard_check((global.key_down))
	Left = keyboard_check((global.key_left))
	Right = keyboard_check((global.key_right))
	A = keyboard_check((global.key_a))
	B = keyboard_check((global.key_b))
	C = keyboard_check((global.key_c))
	X = keyboard_check((global.key_x))
	Y = keyboard_check((global.key_y))
	Z = keyboard_check((global.key_z))
	Action = A || B || C;
	Start = keyboard_check((global.key_start))

	//Pressed:
	UpPress = keyboard_check_pressed((global.key_up))
	DownPress = keyboard_check_pressed((global.key_down))
	LeftPress = keyboard_check_pressed((global.key_left))
	RightPress = keyboard_check_pressed((global.key_right))
	APress = keyboard_check_pressed((global.key_a))
	BPress = keyboard_check_pressed((global.key_b))
	CPress = keyboard_check_pressed((global.key_c))
	XPress = keyboard_check_pressed((global.key_x))
	YPress = keyboard_check_pressed((global.key_y))
	ZPress = keyboard_check_pressed((global.key_z))
	ActionPress = APress || BPress || CPress;
	StartPress = keyboard_check_pressed((global.key_start))
	
	//Analog input presses:
	axis_left_press = false;
	axis_right_press = false;
	axis_up_press = false;
	axis_down_press = false;
	
	//Releaseed:
	UpRelease = keyboard_check_released((global.key_up))
	DownRelease = keyboard_check_released((global.key_down))
	LeftRelease = keyboard_check_released((global.key_left))
	RightRelease = keyboard_check_released((global.key_right))
	ARelease = keyboard_check_released((global.key_a))
	BRelease = keyboard_check_released((global.key_b))
	CRelease = keyboard_check_released((global.key_c))
	XRelease = keyboard_check_released((global.key_x))
	YRelease = keyboard_check_released((global.key_y))
	ZRelease = keyboard_check_released((global.key_z))
	ActionRelease = ARelease || BRelease || CRelease;
	StartRelease = keyboard_check_released((global.key_start))
	
	//Analog input Releasees:
	axis_left_release = false;
	axis_right_release = false;
	axis_up_release = false;
	axis_down_release = false;
	
	//Analog deadzone:
	deadzone_x = 0.7;
	deadzone_y = 0.4;
	
	//Vibration values:
	vibration_timer = 0;
	vibration_strenght = 0;
	
	//Gamepad slot value:
	global.gamepad_slot = 0;