/// @description Movement

if keyboard_check_pressed(ord("R"))
{
	game_restart();
}

if attacknumber != 0
{
	var hspd = 0;
	var jkey = 0;
}
else
{
	var hspd = (keyboard_check(vk_right) - keyboard_check(vk_left))*spd;
	var jkey = keyboard_check_pressed(vk_up);
}

if hspd < 0
{
	image_xscale = -1;
	sprite_index = sPlayerRunNew;
	image_speed = 2;
}

if hspd = 0 and attacknumber = 0
{
	sprite_index = sPlayerIdleNew;
	image_speed = 0.5;
}

if hspd > 0
{
	image_xscale = 1;
	sprite_index = sPlayerRunNew;
	image_speed = 2;
}

// Check for the ground
if (place_meeting(x, y+1, oSolid)) {
    vspd = 0;
    jump = 0;
	
} else {
    // Gravity
    if (vspd < 10) {
        vspd += grav;
    }
}

if (jkey and jump < 2) {
		jump += 1;
        vspd = -jspd;
        //draw_yscale = 1.75;
        //draw_xscale = .75;
    }

// Horizontal collisions
if (place_meeting(x+hspd, y, oSolid)) {
	hspd2 = 0;
    while (!place_meeting(x+sign(hspd), y, oSolid)) {
        x+= sign(hspd);
    }
    hspd = 0;
}

// Move horizontally
x += hspd + hspd2;

// Vertical collisions
if (place_meeting(x, y+vspd, oSolid)) {
    while (!place_meeting(x, y+sign(vspd), oSolid)) {
        y+= sign(vspd);
    }
    vspd = 0;
}

if attackkey = true
{
if keyboard_check_pressed(ord("Z"))
{
	attacknumber += 1;
}
}

if attacknumber = 1
{
	if image_xscale = 1
	{
		hspd2 = 0.25;
	}
	else
	{
		hspd2 = -0.25;
	}
	image_speed = 1.75;
	sprite_index = sPlayerSwordSwing1;
	alarm[2] = 2;
}

if attacknumber = 2
{
	if image_xscale = 1
	{
		hspd2 = 0.25;
	}
	else
	{
		hspd2 = -0.25;
	}
	image_speed = 1.75;
	sprite_index = sPlayerSwordSwing2;
	alarm[2] = 2;
	attackkey = false;
}

if sprite_index = sPlayerSwordSwing1 or sprite_index = sPlayerSwordSwing2
{
	with (instance_place(x,y,oEnemy))
		{
		if (hit == 0)
		{
			hit = 1;
			vsp = -3;
			hsp = sign(x - other.x) * 2;
			image_xscale = -sign(hsp);
			hp -= 1;
		}
	}
}

if hspd2 != 0
{
	alarm[0] = 10;
}
// Move vertically
y += vspd;

// Ease the scale
//draw_xscale = lerp(draw_xscale, image_xscale, .15);
//draw_yscale = lerp(draw_yscale, image_yscale, .15);
//if attack_key and sprite_index != s_dolphin_run and sprite_index != s_dolphin_falling and sprite_index != s_dolphin_jumping
//{
//	sprite_index = s_dolphin_attack;
//	hspd += image_xscale
//	image_speed = 1.5;
//	attack = true;
//	go = true;
//}
