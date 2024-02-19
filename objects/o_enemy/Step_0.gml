if hp_ <= 0 {
    instance_destroy();
}

// tallies enemies not killed by player
if x <= -16 {
    if instance_exists(o_player) {
        global.enemies_missed += 1;
    }
    instance_destroy(self, false);
}

