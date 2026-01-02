if(Input.StartPress || Input.ActionPress){
	if delay > 2 
	{
		global.process_objects = true;
		audio_resume_all();
		surface_free(pausemenu);
		pausemenu = -1;
		//if(pause_screen == 5 && global.annoying_killing_bullshit)
		//{
		//	obj_player.knockout_type = K_DIE;
		//}
		audio_stop_sound(sfx_gfred);
		instance_destroy();
	}
}