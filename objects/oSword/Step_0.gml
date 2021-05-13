/// @description Insert description here
// You can write your code in this editor
if mouse_check_button(mb_left)
{
	attack = true;
}

if mouse_check_button_pressed(mb_right)
{
	attack = false;
}

if sword_angle = sword_angle2
{
	alarm[0] = 1;
}

if sword_angle = -sword_angle2
{
	alarm[0] = 1;
}

if attack = false
{
	sword_angle = lerp(sword_angle, sword_angle3,0.75);
}

if attack = true and image_yscale = 1
{
	sword_angle = lerp(sword_angle, -sword_angle2,0.65);
}

if attack = true and image_yscale = -1
{
	sword_angle = lerp(sword_angle, sword_angle2,0.65);
}

if x > mouse_x
{
	image_yscale = -1
	anglefix = -45;
}
else
{
	image_yscale = 1
	anglefix = 45;
}

image_angle = point_direction(x,y,mouse_x,mouse_y) + sword_angle + anglefix;