if (alarm[1] >= 0)
{
	target_x = x + kb_x;
	target_y = y + kb_y;
}

//Tells enemy how far to move
var hsp = clamp(target_x - x, -1, 1);
var vsp = clamp(target_y - y, -1, 1);
//Moves enemy, creates collision with tilemap and other instances of itself
move_and_collide(hsp * Move_speed, vsp * Move_speed, [tilemap, Obj_gob_parent]);
