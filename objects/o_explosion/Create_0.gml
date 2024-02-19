// blast that display after a ship as exploded 

image_angle = random(360);
direction = image_angle;
speed = random_range(.25,1);

repeat (8) instance_create_layer(x,y, "Bullets", o_debris);
repeat (16) instance_create_layer(x,y, "Bullets", o_flare);
