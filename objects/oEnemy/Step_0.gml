/// @description Main Logic

//====Tick
vsp += grv;
hsp = Approach(hsp,0,frc);

if hit = 0 and distance_to_object(oPlayer) < 128
{
	if oPlayer.x > x and attack = true
	{
		hsp = 0.5;
		sprite_index = sEnemyRunNew;
		image_speed = 2;
		image_xscale = 1;
	}
	
	if oPlayer.x < x and attack = true
	{
		hsp = -0.5;
		sprite_index = sEnemyRunNew;
		image_speed = 2;
		image_xscale = -1;
	}
}
else
{
	sprite_index = sEnemyIdleNew;
	image_speed = 0.5;
}

if (hit != 0)
{
    //image_index = 0;
    hit = Approach(hit,0,0.05);
}

if hp <= 0
{
	instance_destroy();
}

if distance_to_object(oPlayer) < 8
{
	attack = false;
	sprite_index = sEnemySwordSwing1;
}
else
{
	attack = true;
	alarm[0] = 5;
}
//else image_index = 0;

//===Collide
Player_MoveCollide();

