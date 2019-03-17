scr_getinputs();
sprite_index = sHeroS
image_speed = animationplay/4.5

//water movement
if (place_meeting(x,y,oWater))
{
	if swimup > 0
	{
		swimup -= 1;
	}
	
	if animationplay > 0
	{
		animationplay -= 1;
	}
	
    if(key_jump==1) && swimup = 0
	{
		vsp = -6;
		animationplay = 12;
		swimup = 12;
	}
	vsp += 0.3;
	
    
	if(vsp > 2)
    {
        vsp = 2;
    }
    hsp = 2 * key_right- key_left;
	
	if (hsp != 0) image_xscale = sign(hsp);
}
else
{
	image_index = 0
	image_speed = 10;
	state = states.normal;
	
}
scr_collideandmove();