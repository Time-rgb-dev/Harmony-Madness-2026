if round(image_index == 65) state = 1;

if (state == 1)
{
	offset = lerp(offset, 180, 0.1);
	if (offset >= 180) instance_destroy();
}