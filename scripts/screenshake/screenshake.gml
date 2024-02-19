var _amount = argument0;
var _duration = argument1;

if instance_exists(o_camera) {
	o_camera.screenshake_ = _amount;
	o_camera.alarm[0] = _duration;
}
