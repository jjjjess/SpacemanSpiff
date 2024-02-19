if instance_exists(o_player) {
	global.enemies_destroyed +=1;
}

instance_create_layer(x,y, "Enemies", o_explosion);

// scoreboard
o_stats.score_ += points_;

screenshake(8, 12);
