//From Sonic Aural CGS 2023 Demo
function draw_mode7(a_camera, a_texture, a_yPos = -96, a_animationSpeed = 0, a_offsetY = 0){
    //Make 3D
    ViewMat3D = matrix_build_lookat(x,y,48-a_yPos, a_camera.x, a_camera.y, 48-a_yPos, 0, 0, 1);
    ProjMat3D = matrix_build_projection_perspective_fov(60, 426/224, 1, 32000);
    camera_set_view_mat(obj_fake_camera, ViewMat3D);
    camera_set_proj_mat(obj_fake_camera, ProjMat3D);
    camera_apply(obj_fake_camera);
        
    for(var i = 0; i < 64; i++){
        for(var j = 0; j < 16; j++){
            draw_sprite(a_texture,0,(512*i)-(512*32) -((global.object_timer*2) mod 512),-512*j+(a_offsetY mod 512));
        }
    }
    a_offsetY += a_animationSpeed;
    //draw_set_color(make_color_rgb(8,24,197));
    //draw_rectangle(-1280,-128*3,1280,-128*8,false);
    //draw_set_color(c_white);

    //Make 2D
    ViewMat2D = matrix_build_lookat(426/2, 240/2, -100, 426/2, 240/2, 0, 0, 1, 0);
    camera_set_view_mat(obj_fake_camera, ViewMat2D);
    camera_set_proj_mat(obj_fake_camera, ProjMat2D);
    camera_apply(obj_fake_camera);
    
    return a_offsetY;    
}