//Screen Clamps
x = clamp(x, 8, room_width-8);
y = clamp(y, 8, 248);

//Controls
var up, down, left, right, shoot, reset, leave, diag, h_move, v_move;

reset = keyboard_check(ord("R"));
leave = keyboard_check(vk_escape);
up =	keyboard_check(vk_up);
down =	keyboard_check(vk_down);
left =	keyboard_check(vk_left);
right =	keyboard_check(vk_right);
shoot = keyboard_check(ord("F"));
h_move = right - left;
v_move = down - up;
diag = (up or down) and (left or right);

//Restart and exit
if reset {
	game_restart();	
}

if leave {
	game_end();	
}

//Movement
#region movement
if h_move != 0{
	hspeed_ += h_move*o_stats.accel_;	
	hspeed_ = clamp(hspeed_, -o_stats.max_speed, o_stats.max_speed);
}	 else {
	hspeed_ = lerp(hspeed_, 0, o_stats.friction_);	
}

if v_move != 0 {
	vspeed_ += v_move*o_stats.accel_;
	vspeed_ = clamp(vspeed_, -o_stats.max_speed, o_stats.max_speed);
} else {
	vspeed_ = lerp(vspeed_, 0, o_stats.friction_);	
}

diagspeed_ = sqrt(o_stats.max_speed)/2;

if diag{
	hspeed_ *= diagspeed_;
	vspeed_ *= diagspeed_;
} else {
	o_stats.max_speed = o_stats.original_speed;	
}

x += hspeed_;
y += vspeed_;
#endregion movement

#region attack code
//Attack controls
if can_shoot == true{
	if shoot {
		//instance_create_layer(x+8, y+8, "Instances", o_bullet);
		bullet(bullet_type);
		effect_create_below(ef_smoke, x+16, y+8, .25, c_dkgray);
		can_shoot = false;
		alarm[0] = o_stats.cooldown;
	}
}
#endregion attack code

if hp_ <= 0{
	instance_destroy();	
}
