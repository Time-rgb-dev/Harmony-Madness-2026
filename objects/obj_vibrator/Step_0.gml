// VBRBRRMRMRMRMRM 
game_timer++

// Squash and stretch
scale_x = lerp(scale_x, 1, 0.1)
scale_y = lerp(scale_y, 1, 0.1)

// movement

	var mov = obj_input.Right - obj_input.Left;
	
pos_x = lerp(pos_x, base_x + 90 * lane_index, 0.7)
tilllevel = clamp(tilllevel, 0, 1000)

if abs(mov)
{lane_index = 1 * mov}
else lane_index = 0;

// squishy time
if level >= 10 
{var input = obj_input.A}
else var input = obj_input.APress
if input
{scale_x = 2.2
 scale_y = 0.2
 play_sound(sfx_boing)
 squish_count++
 tilllevel--}

// energy and gun

max_energy = clamp(max_energy, 3, 16)
max_energy = 3 + (level / 3)
energy = clamp(energy, 0, max_energy)

if energy and obj_input.BPress
{
	laser = true;
	laser_frames = 10;
	energy--
	play_sound(sfx_release)
}

  tillenergy = clamp(tillenergy, 0, 500);
if energy < max_energy and tillenergy
{
 tillenergy--}
 else
 {energy++
  tillenergy = 350 - 25 * (level / 2)}

  
  if laser
  {
	  create_effect(pos_x + 32 * lane_index, base_y, spr_cucky, 0.4, 1, 0, -12, 0, -2)
	  if laser_frames{laser_frames--}
	  else {
	  laser = false;
	  phaser = false;
	  }
	  
  }
  
 if !tilllevel or keyboard_check_pressed(ord(("B")))
 {
	 level++ 
	 play_sound(sfx_air_warning);
	 tilllevel = 100 + (25 * level)
 }
 
  if level > 5 && obj_input.CPress and energy >= 5 && !laser
  {
  play_sound(sfx_electric_shield_jump)
  laser = true
  laser_frames = 30
  phaser = true;
  energy -= 5
  }