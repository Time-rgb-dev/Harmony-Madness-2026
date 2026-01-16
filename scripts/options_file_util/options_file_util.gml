//Ported from SATS:Rebirth! - Frosty
//How to add your own options (for dummies);
//1: Add them to save_options() in the correct category so they can be saved when necessary
//2: Set their defaults at the top of load_options()
//3: Allow them to be loaded at the bottom of load_options()

function save_options(){
	ini_open("options.ini");
	
	// Save options
	// Audio --------------------------------------------------------------------------------
	ini_write_real("audio", "bgm", global.bgm_volume);
	ini_write_real("audio", "sfx", global.sfx_volume);
	// Graphics -----------------------------------------------------------------------------
	ini_write_real("graphics", "window_size", global.window_size);
	ini_write_real("graphics", "borderless_fullscreen", global.borderless_fullscreen);
	ini_write_real("graphics", "subway_surfers", global.subway_surfers);
	ini_write_real("graphics", "rotation_type", global.rotation_type);
	// Gameplay -----------------------------------------------------------------------------
	ini_write_real("gameplay", "jokes_kill_you", global.annoying_killing_bullshit);
	ini_write_real("gameplay", "camera_pan_type", global.camera_pan_type);
	ini_write_real("gameplay", "use_spindash", global.use_spindash);
	ini_write_real("gameplay", "use_airroll", global.use_airroll);
	ini_write_real("gameplay", "use_dropdash", global.use_dropdash);
	ini_write_real("gameplay", "use_peelout", global.use_peelout);
	
	show_debug_message("Options saved");
	ini_close();
}

function load_options(){
	ini_open("options.ini");
	
	//Set defaults incase there is no data already saved
	if (!ini_section_exists("audio")) // Audio
	{
		global.bgm_volume = 1;
		global.sfx_volume = 1;
	}
	if (!ini_section_exists("graphics")) // Graphics
	{
		global.window_size = 3;
		global.borderless_fullscreen = true;
		global.subway_surfers = true;
		global.rotation_type = 2;
	}
	if (!ini_section_exists("gameplay")) // Gameplay
	{
		global.annoying_killing_bullshit = true;
		global.camera_pan_type = 2;
		global.use_spindash = true;
		global.use_airroll = true;
		global.use_dropdash = true;
		global.use_peelout = true;
	}
	
	//Load data
	global.bgm_volume = ini_read_real("audio", "bgm", 1);
	global.sfx_volume = ini_read_real("audio", "sfx", 1);
	global.window_size = ini_read_real("graphics", "window_size", 3);
	global.borderless_fullscreen = ini_read_real("graphics", "borderless_fullscreen", 1);
	global.subway_surfers = ini_read_real("graphics", "subway_surfers", 1);
	global.rotation_type = ini_read_real("graphics", "rotation_type", 2);
	global.camera_pan_type = ini_read_real("gameplay", "camera_pan_type", 2);
	global.annoying_killing_bullshit = ini_read_real("gameplay", "jokes_kill_you", 1);
	global.use_spindash = ini_read_real("gameplay", "use_spindash", 1);
	global.use_airroll = ini_read_real("gameplay", "use_airroll", 1);
	global.use_dropdash = ini_read_real("gameplay", "use_dropdash", 1);
	global.use_peelout = ini_read_real("gameplay", "use_peelout", 1);

	show_debug_message("Options loaded");
	ini_close();
}