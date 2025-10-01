if (alarm[1] >= 0)
{
	target_x = x + kb_x;
	target_y = y + kb_y;
}

//Tells enemy how far to move
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);
//Moves enemy, creates collision with tilemap and other instances of itself
move_and_collide(_hor * Move_speed, _ver * Move_speed, [tilemap, Obj_gob_parent]);
