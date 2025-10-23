
// If the alarm is ready, shoot at the player
if (alarm[2] == 2) {

// Create the bullet instance
  var bullet = instance_create_layer(x, y, "Instances", Obj_enemy_projectile1)
{
direction = point_direction(x, y, Obj_player.x, Obj_player.y);
speed = 6;
}
}
alarm[2] = game_get_speed(gamespeed_fps) * 5

