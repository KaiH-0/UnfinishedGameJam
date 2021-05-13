/// @description Insert description here
// You can write your code in this editor
image_index = hp - 1;
image_xscale = image_yscale;

image_yscale = lerp(image_yscale,draw_yscale,0.15);

if image_yscale = draw_yscale and draw_yscale = 1.15
{
	draw_yscale = 1;
}

if image_yscale = draw_yscale and draw_yscale = 1
{
	draw_yscale = 1.15;
}