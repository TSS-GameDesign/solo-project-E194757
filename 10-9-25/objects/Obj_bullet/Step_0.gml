// Set the direction towards a target 
if global._collider = false
	direction = point_direction(x, y, Obj_gob_parent.x, Obj_gob_parent.y);
	
if global._collider = true
	direction = point_direction(x, y, Obj_boss_parent.x, Obj_boss_parent.y);

if (instance_number(Obj_freezinggob) == 0 && 
    instance_number(Obj_gobbrute) == 0 && 
    instance_number(Obj_gobguard) == 0&& 
	instance_number(Obj_icegob) == 0)
	direction = point_direction(x, y, Obj_boss_parent.x, Obj_boss_parent.y);

// Set the speed of the projectile
speed = 3; 

// Align the image angle with the direction of movement
image_angle = direction;

