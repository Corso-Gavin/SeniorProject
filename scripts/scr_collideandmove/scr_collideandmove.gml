//Collide and Move
if (place_meeting(round(x+hsp),round(y),oWall))
{
	while (!place_meeting(round(x+sign(hsp)),round(y),oWall)) x += sign(hsp); 
	hsp = 0;
}
x += hsp;

if (place_meeting(round(x),round(y+vsp),oWall))
{
	while (!place_meeting(round(x),round(y+sign(vsp)),oWall)) y += sign(vsp);
	vsp = 0;
}
y += vsp