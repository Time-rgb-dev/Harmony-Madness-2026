if(Input.StartPress || Input.ActionPress){
	if delay > 2 
	{
		global.process_objects = true;
		audio_resume_all();
		surface_free(pausemenu);
		pausemenu = -1;
		audio_stop_sound(sfx_gfred);
		audio_stop_sound(bgm_mokou);
		instance_destroy();
	}
}