//Room1 = gameplay
if room == Room1 {
draw_set_font(f_one);
draw_set_halign(fa_right) {
	draw_text(1920-12, 8, "Score: " + string(score_));
}
draw_set_halign(fa_left);
	draw_text(960, 8, "Time: " + string(floor(timer_)));
draw_text(8, 75, "Weapon Power: " + string(weapon_power));
}
if room == r_title {
	if keyboard_check_pressed(ord("F")) {
		room_goto_next();
	}
}
