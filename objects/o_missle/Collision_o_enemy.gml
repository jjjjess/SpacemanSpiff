with (other) {
	hp_ -= other.damage_;	
	image_blend = c_red;
	image_index =1;
	alarm[0] = 3;
	alarm[1] = 10;
}
global.shots_hit += 1;
instance_destroy();
