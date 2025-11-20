global._Bossdead = false
bulletfired = false
//The target coordinates for the enemy to reach
target_x = x;
target_y = y;

// Makes alarm 0 run 60 frames (1 second) after line active
alarm[0] = 60;
alarm[2] = 30;
//Makes Tiles_Col a variable
tilemap = layer_tilemap_get_id("Tiles_Col");

kb_x = 0;
kb_y = 0;


Xp_value = 200;

