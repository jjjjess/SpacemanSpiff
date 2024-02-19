o_stats.lives_ -= 1;

//Checks to see if there are remaining lives
if o_stats.lives_ > 0 {
	instance_create_layer(16, room_height/2, "Instances", o_player);	
}
