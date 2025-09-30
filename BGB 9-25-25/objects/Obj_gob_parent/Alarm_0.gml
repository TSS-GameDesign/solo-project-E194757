//First checks if player exists and if enemy is close enough to player, then if close enough has enemy target player
if (instance_exists(Obj_player) && distance_to_object(Obj_player) < distance_to_player)
{
	target_x = Obj_player.x;
	target_y = Obj_player.y;
}
else
{
	//randomizes enemy movement
	target_x = random_range(xstart -100, xstart + 100);
	target_y = random_range(ystart -100, ystart + 100);
}
//Loops every second
alarm[0] = 60;
