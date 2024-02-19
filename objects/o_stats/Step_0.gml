if instance_exists(o_player){
	timer_ += 1/60;
}

if keyboard_check_pressed(ord("G")) {
	instance_create_layer(room_width+16, room_height/2, "Enemies", o_enemy);
}

if lives_ <= 0 {
	instance_create_layer((room_width/2)-100, room_height/4, "Instances", o_gameover);	
}

if room == r_title {
	if keyboard_check_pressed(vk_anykey) {
		room_goto_next();	
	}
}
