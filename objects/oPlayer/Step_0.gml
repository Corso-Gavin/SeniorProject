/// @
// You can write your code in this editor
switch (state)
{
	case states.normal: scr_player_normal(); break;
	case states.ladder: scr_player_ladder(); break;
	case states.water: scr_player_water(); break;
}
if hp = 0
{
	room_restart();
}