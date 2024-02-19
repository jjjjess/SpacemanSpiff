//Sends enemies at player
if instance_exists(o_player) {
	instance_create_layer(x, y, "Enemies", o_enemy);
	alarm[0] = create;
}
