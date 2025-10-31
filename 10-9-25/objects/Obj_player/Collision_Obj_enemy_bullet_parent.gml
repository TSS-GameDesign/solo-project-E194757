

if (alarm[0] < 0)
{
	instance_destroy(Obj_enemy_projectile1)
	hp -= other.Damage;
	alarm[0] = 60;
	image_blend = c_red;
	
	if (hp <= 0)
	{
		room_restart();
	}
}

