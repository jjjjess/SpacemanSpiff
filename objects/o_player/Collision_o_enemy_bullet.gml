
if can_hurt == true {
	hp_ -= 1;
	can_hurt = false;
	//timer for being able to be hit again
	alarm[1] = 60;
}

// Create visual effects for explosion, ring, and smoke
effect_create_above(ef_explosion, x, y, .5, c_orange);
effect_create_below(ef_ring, x, y, .5, c_white);
effect_create_below(ef_smoke, x, y, .5, c_dkgray);

instance_destroy(other, false);
