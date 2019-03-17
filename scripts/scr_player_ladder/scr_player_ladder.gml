scr_getinputs();
sprite_index = sHeroC
image_speed = movement
//ladder movement
hsp = 0
vsp = 4 * (key_down - key_up);
x = (instance_nearest(x,y,oLadder).x)
movement = sign(vsp);

if (key_jump) || (!place_meeting(x,y,oLadder))
{
	hsp = 0;
	vsp = 0;
	state = states.normal;
}

scr_collideandmove();
