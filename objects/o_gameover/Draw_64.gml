//Game over screen, displays game stats 

draw_set_halign(fa_center)
draw_text(960, 350, "Press any key to restart.");
draw_set_halign(fa_left);
draw_text(720, 350+30, "Shots Fired: " + string(global.shots_fired));
draw_text(720, 350+58, "Shots Hit: " + string(global.shots_hit));
draw_text(720, 406+30, "Shots Missed: " + string(global.shots_missed));
draw_text(720, 434+30, "Enemies Created: " + string(global.enemies_created));
draw_text(720, 462+30, "Enemies Destroyed: " + string(global.enemies_destroyed));
draw_text(720, 490+30, "Enemies Missed: " + string(global.enemies_missed));
