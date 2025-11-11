//Makes variable "_hor" (Horizontal movement) equal 1 when "D" pressed and -1 when "A" Pressed
var hsp = keyboard_check(ord("D")) - keyboard_check(ord("A"));
//Makes variable "_ver" (Vertical movement equal 1 when "S" pressed and -1 when "W" pressed
var vsp = keyboard_check(ord("S")) - keyboard_check(ord("W"));
//Creates movement and collision
move_and_collide(hsp * Move_speed, vsp * Move_speed, tilemap, undefined, undefined, undefined, Move_speed, Move_speed);
//Checks if _hor or _ver does not equal 0
if (hsp != 0 or vsp != 0)	
{
	//Changes animation based on variable values
	if (vsp > 0) sprite_index = spr_player_walk_down;
	else if (vsp < 0) sprite_index = spr_player_walk_up;
	else if (hsp > 0) sprite_index = spr_player_walk_right;
	else if (hsp < 0) sprite_index = spr_player_walk_left;
	
	facing =  point_direction(0, 0, hsp, vsp);
}
else
{
	//Sets idle sprite based on current sprite used
	if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
	else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
	else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
}

if (keyboard_check_pressed(vk_space))
{
var _inst = instance_create_depth (x, y, depth, Obj_slash);
_inst.image_angle = facing
_inst.damage *= damage;
}


 if (keyboard_check_pressed(vk_enter))
    {
        var _bullet = instance_create_layer(x, y, "Instances", Obj_bullet);
	}
	
if (place_meeting(x, y, Obj_KEY_1)) {
	instance_destroy(Obj_KEY_1)
	Key1 = true
}
if (place_meeting(x, y, Obj_gate1))
	{
		if Key1 = true
		{
		instance_destroy(Obj_gate1)
		Key1 = true
		}
	}
	
	if (place_meeting(x, y, Obj_KEY_2)) {
	instance_destroy(Obj_KEY_2)
	Key2 = true
}
if (place_meeting(x, y, Obj_gate2))
	{
		instance_destroy(Obj_gate2)
		Key2 = true
	}
	
	
	if (place_meeting(x, y, Obj_invis_wall))
	{
		if Key1 = true
		{
		instance_destroy(Obj_invis_wall)
		Key1 = false
		}
	}
	
	
	if (place_meeting(x, y, Obj_invis_wall))
	{
		if Key2 = true
		{
		instance_destroy(Obj_invis_wall)
		Key2 = false
		}
	}
	
	
	
	if place_meeting(x, y, Obj_collisionforboss){
		global.bulletallow = true
		if global._Bossdead = true
		{ 
			global.bulletallow = false
		}
		
	}
	
	
	else {
		global.bulletallow = false
	}