//Inherit the parent event
event_inherited();

//Apply Y speed and gravity
y_speed += grav;
y += y_speed;

//Bounce up into the air
if(y >= ystart) y_speed = -7;