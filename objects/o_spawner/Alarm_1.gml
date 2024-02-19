//Spawns powerups randomly
instance_create_layer(room_width+16, room_height/2, "Instances", choose(o_powerup, o_spread, o_homing, o_sniper));
alarm[1] = random_range(room_speed * .5, room_speed * 10);
