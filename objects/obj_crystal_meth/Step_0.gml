can_meth = false;
if(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, false)) can_meth = true;

if (can_meth == true && keyboard_check(ord("E")) && obj_player.highness < 100) {
	obj_player.highness += 0.5;
}