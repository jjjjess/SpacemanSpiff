if hit_enemy == false {
	global.shots_missed += 1;	
} else {
	global.shots_hit += 1;	
}

instance_destroy();
