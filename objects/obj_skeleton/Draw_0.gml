///@description Draw George the skeleton
    //Exit if we don't draw him
    if(!draw_george) exit;
    
    //Get the camera's X and Y
    var c, cx, cy;
    c = view_camera[view_current];
    cx = camera_get_view_x(c);
    cy = camera_get_view_y(c);
    
    //Draw george
    draw_sprite(spr_george, global.object_timer-ran, cx, cy);