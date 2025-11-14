

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


var bullet = instance_create(x, y, Obj_enemy_projectile1); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
   direction = point_direction(x, y, Obj_player.x, Obj_player.y); // Give the bullet a direction
   speed = 6;
   damage = 2
}
	{
		{
alarm[2] = room_speed * 5; // Reset this alarm so the enemy will shoot after 5 more seconds. This will loop.
	}
}

