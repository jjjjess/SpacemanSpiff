alarm[2] = random_range(room_speed * 1, room_speed * 3);

if instance_exists(o_player) {
    global.enemies_created += 1;
}

// enemy's path is randomly choosen, it will either be
// erratic (if path == true), or linear (if path == false)
path = choose(true, false);
hp_ = 4;

// animation speed
image_speed = 0;
image_index = 0;

if (path == true) {
    path_start(choose(Path1, Path2, Path3, Path4), 2, path_action_stop, true);
} else {
    speed = random_range(2, 4);
    direction = 180;  
    x = room_width + 16;
    y = random_range(16, 240);
}


