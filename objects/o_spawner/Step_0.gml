//Increases the amount of enemies spawned the longer the player is in the game
if o_stats.timer_ > 5 and o_stats.timer_ < 20 {
	create = random_range(50, 70);	
}

if o_stats.timer_ >= 20 and o_stats.timer_ < 30 {
	create = random_range(40, 60);	
}

if o_stats.timer_ >= 30 and o_stats.timer_ < 55 {
	create = random_range(30, 50);	
}

if o_stats.timer_ >= 55 and o_stats.timer_ < 75 {
	create = random_range(20, 40);	
}
if o_stats.timer_ >= 75 {
	create = random_range(10, 30);	
}
