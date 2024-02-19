if speed > 0 {
	speed -= .1;	
}

if speed <= 0 {
	instance_destroy();	
}

if image_alpha > 0 {
	image_alpha -= .1;
}

image_angle = direction;
image_xscale = speed;
