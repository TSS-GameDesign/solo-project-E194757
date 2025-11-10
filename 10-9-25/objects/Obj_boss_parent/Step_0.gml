if (alarm[2] >= 15)
{
	bulletfired = false
	}

if (alarm[1] >= 0)
{
	target_x = x + kb_x;
	target_y = y + kb_y;
}

//Tells enemy how far to move
var hsp = clamp(target_x - x, -1, 1);
var vsp = clamp(target_y - y, -1, 1);
//Moves enemy, creates collision with tilemap and other instances of itself
move_and_collide(hsp * Move_speed, vsp * Move_speed, [tilemap, Obj_boss_parent]);


if bulletfired = false
{
	instance_create_layer(x + 0, y + 0, "Instances", Obj_enemy_projectile1);
	bulletfired = true
	}



