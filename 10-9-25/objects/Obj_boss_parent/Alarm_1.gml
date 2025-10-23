image_blend = c_white

if (hp <= 0)
{
	instance_destroy()
	instance_destroy(Obj_boss_gate)
	Obj_player.add_xp(Xp_value);
}