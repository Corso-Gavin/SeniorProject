/// @description Insert description here
// You can write your code in this editor
move_wrap(true,false,64);
image_angle = direction;
x += hsp
y += vsp
if (!place_meeting(x,y,oWater))
{
	if outsidewater = false
	{
		vsp = -18;
		outsidewater = true;
	}
	vsp += 0.6;
}
if (place_meeting(x,y,oWater))
{
	hsp = abs(y) / 60;
	if outsidewater = true
	{
		vsp = 6;
		outsidewater = false;
	}
	if vsp > -6
	{
		vsp -= .4;
	}
}
