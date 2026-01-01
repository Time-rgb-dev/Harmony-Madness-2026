/// @description Insert description here
// You can write your code in this editor

y_speed += 0.2
y += y_speed;
x += x_speed;

if(!on_screen(32,32)) instance_destroy();
if(instance_exists(obj_water) && y > obj_water.y) instance_destroy();