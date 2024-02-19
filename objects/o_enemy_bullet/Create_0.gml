// sets the direction of the enemy towards the player.
// 'random_range' values provide variability to movement

speed = 2;

if instance_exists(o_player) {
    direction = point_direction(x, y, o_player.x, o_player.y) + random_range(-6, 6);
} else {
    direction = 180;
}
