fade_in_room(3, FADE_BLACK);
play_music(MUSIC.SUPERSTARS_TITLE);

ViewMat2D = matrix_build_lookat(0, 0, -100, 0, 0, 0, 0, 1, 0);
ProjMat2D = matrix_build_projection_ortho(426, 240, 1.0, 32000.0);
    
ViewMat3D = matrix_build_lookat(0, 0, -100, room_width, room_height, 0, 0, 0, 1);
ProjMat3D = matrix_build_projection_perspective_fov(60, 426/224, 1, 32000);

surf = surface_create(WINDOW_WIDTH, WINDOW_HEIGHT);

timer = 0;