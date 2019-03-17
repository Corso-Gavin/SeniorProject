scr_getinputs();

//Normal Movement
hsp = 4 * (key_right - key_left);

vsp += 0.4;
if (place_meeting(x,y+1,oWall))
{
	if (key_jump) vsp = -5
}

if (place_meeting(x,y,oWater))
{
	hsp = 0;
	vsp = 0;
	state = states.water;
}
	
if (place_meeting(x,y,oLadder) && (key_up) || (key_down))
{
	hsp = 0;
	vsp = 0;
	state = states.ladder;
}

//Animation


if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sHeroA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 10;
	if (hsp == 0)
		{
			sprite_index = sHero;
		}
		else
		{
			sprite_index = sHeroR;
		}
}

if (hsp != 0) image_xscale = sign(hsp);






scr_collideandmove();
