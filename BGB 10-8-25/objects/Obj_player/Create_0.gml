//how move speed work
Move_speed = 3;
hsp = 0
vsp = 0
// Makes tilemappy
tilemap = layer_tilemap_get_id("Tiles_Col");
hp = 10;
hptotal = hp;
damage = 2;
facing = 0;
level = 1;
xp = 0;
xp_require = 100;

function add_xp(_xp_to_add)
{
	xp += _xp_to_add;
	if (xp >= xp_require)
	{
		level++;
		xp -= xp_require
		xp_require *= 1.8;
		
		hptotal +=3;
		hp = hptotal;
		damage += 0.5; 
		Move_speed += 0.1;
	}
}