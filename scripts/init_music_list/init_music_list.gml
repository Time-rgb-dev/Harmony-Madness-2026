function init_music_list()
{
	//Menu background music:
	//None here either!
	
	//Stage background music:
	//None here!
	
	//Game jingles:
	music_add(MUSIC.TITLE, bgm_title, 0.00, 0.00, false);
	music_add(MUSIC.RETRO, j_ronicretro, 0.00, 0.00, false);
    music_add(MUSIC.TITLE_GARN47, bgm_garn47_menu);
	music_add(MUSIC.MENU, bgm_menu, 0.565);
	music_add(MUSIC.J_GAME_OVER, j_game_over, 0.00, 0.00, false);
	music_add(MUSIC.J_INVINCIBLE, j_invincible);
	music_add(MUSIC.J_SPEEDSHOE, j_speedshoe, 2.644);
	music_add(MUSIC.J_ACT_START, j_zone_start, 0.00, 0.00, false);
	music_add(MUSIC.J_ACT_CLEAR, j_zone_complete, 0.00, 0.00, false);
	music_add(MUSIC.SUPER, j_super, 0.565);
	music_add("FOREGONE DESTRUCTION - MICHIEL VAN DEN BOS", bgm_foregone, 0.000);
	music_add("ARBOREAL 1", bgm_arboreal_agate1);
	music_add("ARBOREAL 2", bgm_arboreal_agate2);
	music_add("BONUS", bgm_bonus, 16.657, 92.33, true);
	music_add(MUSIC.BOSSWEED, bgm_boss_weed, 15.432);
	music_add(MUSIC.SUPERSTARS_TITLE, bgm_superstars_title, 0.00, 0.00, false);
}

	//Setup enum for music ID
	enum MUSIC {
		TITLE,
		TITLE_GARN47,
		RETRO,
		MENU,
		J_GAME_OVER,
		J_INVINCIBLE,
		J_SPEEDSHOE,
		J_ACT_START,
		J_ACT_CLEAR,
		SUPER,
		BOSSWEED,
		SUPERSTARS_TITLE,
	}
