with (other) {
	hp_ -= other.damage_;	
	
	// Enemy flashes red when damaged
	image_blend = c_red;
	alarm[0] = 3;
	alarm[1] = 10;
}
global.shots_hit +=1;

instance_destroy();
