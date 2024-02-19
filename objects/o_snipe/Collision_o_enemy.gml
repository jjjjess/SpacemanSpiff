with (other) {
	hp_ -= other.damage_;	
	image_blend = c_red;
	alarm[0] = 3;
}
global.shots_hit += 1;
hit_enemy = true;
